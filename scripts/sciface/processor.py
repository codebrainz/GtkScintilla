#!/usr/bin/env python

"""
Generates code in Scintilla.vapi based on the specifications in
Scintilla.iface.
"""

import os
import re
import sys
import string
from collections import namedtuple

FIXUPS = { 
	"UTF8": "Utf8", 
	"ViewWS": "ViewWhiteSpace", 
	"TargetRE": "TargetRegex",
	"EOL": "Eol",
	"AutoC": "AutoCompletion",
	"KeyWords": "Keywords",
	"BackSpace": "Backspace",
	"UnIndents": "Unindents",
	"VScrollBar": "Vscrollbar",
	"VCHome": "VisibleCharHome",
	"ModifyAttemptRO": "ModifyAttemptRo",
	"UpdateUI": "UpdateUi",
	"URIDropped": "UriDropped",
}

RE_FUNCTION = re.compile(r'''^(?P<feature>fun|get|set|evt)\s+
						(?P<type>.*?)\s+
						(?P<name>.*?)=
						(?P<index>\d+)\s*\(\s*
						(?P<params>.*?)\s*\)''', re.X)

RE_COMMENT = re.compile(r"^#\s+(?P<comment>.+?)$")

RE_EVENT = re.compile(r'''^(?P<feature>evt)\s+
					(?P<type>.*?)\s+
					(?P<name>.*?)=
					(?P<index>\d+)\s*\(\s*
					(?P<params>.*?)\s*\)''', re.X)
					
RE_LEXER = re.compile(r'lex\s+(?P<lexer>.+?)\s*=\s*SCLEX_(?P<lexerValue>.+?)\s+(?P<prefix>.+?)$')

RE_ENUM = re.compile(r'^enu\s+(?P<enum>.+?)\s*=\s*(?P<prefix>.+?)\s*$')
RE_VALUE = re.compile(r'^val\s+(?P<name>.+?)\s*=\s*(?P<value>.+?)\s*$')

# these define the type interface between processor and formatter
Function = namedtuple("Function", "feat type name index params")
Enumeration = namedtuple("Enumeration", "name prefixes values")
EnumerationValue = namedtuple("EnumerationValue", "name value")
Constant = namedtuple("Constant", "name value")
Lexer = namedtuple("Lexer", "name plain_name prefixes values")
LexerState = namedtuple("LexerState", "name value")

class Processor(object):

	# todo: add the rest of them
	DATA_TYPES = {
		"void": "void", 
		"int": "gint", 
		"bool": "gboolean", 
		"position": "gint",
		"colour": "gint",
		"string": "const gchar*",
		"stringresult": "gchar*", }
		# todo: finish these
	
	def __init__(self, iface_fn, base_indent=""):
		self.iface_fn = iface_fn
		self.base_indent = base_indent
		
		# for comment handling
		self._current_comment = ""
		self._last_comment = ""
		self._in_comment = False
		self._comment_closed = True
		self.comment = ""
		
		self._in_enum = False
		self.current_enum = None

		self.signals = { 
			"fun": [], "get": [], "set": [], "evt": [], "lex": [],
			"all-func": [], "comment": [], "enum": [], "const": [] }
	
	def connect(self, event, func, *args, **kwargs):
		"""
		Connect a new callback function to the specified event.  The
		prototype for the callback is:
		    def cb_some_event(data, *args, **kwargs)
		Where data is a Function object for all events except comment
		where it is a string containing the comment.  The positional
		and keywords arguments specified to this function will be
		passed along unchanged to the callback function.
		"""
		self.signals[event].append((func,args,kwargs))
	
	def disconnect(self, event, func):
		"""
		Removes a function from being called on the specified event.
		"""
		new_sigs = []
		for sig in self.signals[event]:
			if sig[0] != func:
				new_sigs.append(sig)
		self.signals[event] = new_sigs
	
	def emit(self, event, data):
		"""
		Emits a signal (call all callback functions) for the specifed 
		event with the supplied data.
		"""
		for sig in self.signals[event]:
			sig[0](data, *sig[1], **sig[2])
	
	@staticmethod				
	def fix_name_case(name):
		"""
		Convert ACamelCaseName to a_camel_case_name.
		"""
		newstr = ""
		for i,c in enumerate(name):
			if c in string.uppercase and i != 0: 
				newstr += "_%s" % c.lower()
			else: newstr += c.lower()
		return newstr

	@staticmethod
	def convert_params(params_string):
		"""
		Convert 'string arg0, int arg1' to ('string arg0', 'int arg1')
		convert parameter data types appropriately.
		"""
		return_params = []
		params = []
		
		for param in params_string.split(","):
			param = param.strip()
			params.append(tuple( p.strip() for p in param.split(" ") ))
			
		for tup in params:
			if len(tup) == 0 or len(tup[0]) == 0:
				return_params.append("")
			elif tup[0] == "void":
				continue
			else:
				if tup[0] in Processor.DATA_TYPES:
					#print tup
					return_params.append(
						"%s %s" % (Processor.DATA_TYPES[tup[0]], tup[1]))
				else:
					return_params.append("%s %s" % (tup[0], tup[1]))
					
		return tuple(return_params)
	
	def handle_comments(self, line):
		"""
		Keep track of the current comment.  It will only be available
		on the line directly following the comment, after which it
		will be emptied.
		"""
		match = RE_COMMENT.match(line)
		if match:
			if self._in_comment:
				self._current_comment += (
					"%s " % match.group("comment").strip())
			else:
				self._current_comment = "/* %s " % match.group("comment").strip()
				self._comment_closed = False
		else:
			if not self._comment_closed:
				self._current_comment += " */"
				self._comment_closed = True
			self._in_comment = False
		if (self._comment_closed and 
			self._current_comment != self._last_comment):
			self._last_comment = self._current_comment
			self.comment = self._current_comment
			self.emit("comment", self.comment)
		#else:
		#	self.comment = ""

	
	def handle_enum(self, match_line, enum, prefix):
		"""
		Find all values for the enum that have prefix.  This is slow
		but simple.
		"""
		e = Enumeration(enum, 
				[ p.strip() for p in prefix.split(' ') ], [])
		
		in_enum = False
		
		# find all values for enum
		with open(self.iface_fn, "r") as iface:
			
			for line in iface:
				
				line = line.strip()
				
				if match_line == line:
					in_enum = True
				elif (RE_FUNCTION.match(line) or RE_EVENT.match(line) or
					line.startswith("cat ") or line.startswith("lex ")):
					in_enum = False
				
				if in_enum:
					for pref in e.prefixes:
						if line.startswith("val %s" % pref):
							line = line.replace("val ", "")
							n,v = tuple( f.strip() for f in line.split('=') )
							n=n.replace(pref,"")
							#v=int(v)
							ev = EnumerationValue(n, v)
							e.values.append(ev)
				
		#e.values.sort()
		self.emit("enum", e)

	
	def handle_lexer(self, match_line, lexer, plain_name, prefix):
		"""
		Find all values for the lexer that have prefix.  This is slow
		but simple.
		"""
		l = Lexer(lexer, plain_name, [ p.strip() for p in prefix.split(' ') ], [])
		
		in_lex = False
		
		with open(self.iface_fn, "r") as iface:
			
			for line in iface:
				
				line = line.strip()
				
				if match_line == line:
					in_lex = True
				elif (RE_FUNCTION.match(line) or RE_EVENT.match(line) or
					RE_ENUM.match(line) or line.startswith("cat ")):
					in_lex = False
				
				if in_lex:
					for pref in l.prefixes:
						if line.startswith("val %s" % pref):
							line = line.replace("val ", "")
							n,v = tuple( f.strip() for f in line.split('=') )
							n=n.replace(pref,"")
							#v=int(v)
							lv = LexerState(n, v)
							l.values.append(lv)
				
		#e.values.sort()
		self.emit("lex", l)
	
	@staticmethod
	def apply_fixups(name):
		" Run this before fixing name case. "
		for k,v in FIXUPS.iteritems():
			name = name.replace(k,v)
		return name
	
	def handle_all_functions(self, line):
		"""
		Parse each function (if line contains one) and emit the 
		appropriate signals.
		"""
		m = RE_FUNCTION.match(line)
		if m:
			feature = m.group("feature")
			if m.group("type") in self.DATA_TYPES:
				type = self.DATA_TYPES[m.group("type")]
			else:
				type = m.group("type")
			
			name = Processor.apply_fixups(m.group("name"))
			name = Processor.fix_name_case(name)
			index = int(m.group("index"))
			params = Processor.convert_params(m.group("params"))
			
			func_obj = Function(feature, type, name, index, params)
			
			# emit the "all" signal
			self.emit("all-func", func_obj)
			# emit the other appropriate signal (fun, get, set, events)
			self.emit(feature, func_obj)
		
		m = RE_ENUM.match(line)
		if m:
			self.handle_enum(line, m.group('enum'), m.group('prefix'))
		m = RE_LEXER.match(line)
		if m:
			self.handle_lexer(line, m.group("lexerValue"), m.group("lexer"), m.group("prefix"))
		m = RE_VALUE.match(line)
		if m:
			c = Constant(m.group('name'), m.group('value'))
			self.emit("const", c)
		
	def iter_lines(self, strip_lines=True):
		"""
		Iterate over all the lines in the interface file, stripping
		them if strip_lines is True.
		"""
		with open(self.iface_fn, "r") as iface:
			for line in iface:
				if strip_lines: line = line.strip()
				yield line
	
	def run(self):
		"""
		Iterate over the entire interface file and emit all 
		appropriate signals.
		"""
		for line in self.iter_lines():
			self.handle_comments(line)
			self.handle_all_functions(line)

















































