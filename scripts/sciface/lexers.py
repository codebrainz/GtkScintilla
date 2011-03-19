#!/usr/bin/env python

import os
import sys

from ifaceproc.processor import Processor
from ifaceproc.formatter import *
			
consts = []	
enums = []
lexers = []

def in_lex(name, lexers):
	for lex in lexers:
		for pfx in lex.prefixes:
			for lv in lex.values:
				nn = "%s%s" % (pfx, lv.name)
				if name == nn:
					return True
	else:
		return False
		
def write_lexers(iface_file, lexer_dir):

	def on_lex(lex, *args, **kwargs):
		global lexers
		lexers.append(lex)

	proc = Processor(iface_file, "\t")
	proc.connect("lex", on_lex)
	proc.run()

	for lex in lexers:

		fn_h = os.path.join(lexer_dir, "lex%s.h" % lex.name.lower())
	
		content = """/* 
 *
 * This file is auto-generated, do not edit. 
 *
 * %s - GScintilla %s Lexer
 *
 */

#ifndef GSCI_LEXER_%s_H
#define GSCI_LEXER_%s_H

G_BEGIN_DECLS\n\n""" % (os.path.basename(fn_h), lex.plain_name, lex.name, lex.name)
		
		content += "/* Lexer states */\n"
		for pref in lex.prefixes:
			
			for l in lex.values:
				
				nn = l.name
				if nn.startswith(pref):
					nn = nn.replace(pref, "")
				
				content += "#define GTK_SCINTILLA_LEXER_%s_STYLE_%s %s\n" % (
					lex.name.strip("_"), nn.strip("_"), l.value.strip("_"))

		content +="""
		
G_END_DECLS

#endif /* ifndef GSCI_%s_H */\n""" % lex.name
		open(fn_h, "w").write(content)
		yield lex, fn_h


if __name__ == "__main__":
	
	from optparse import OptionParser
	
	p = OptionParser(
			usage="Usage: %prog -o LEXDIR /path/to/Scintilla.iface")

	p.add_option('-o', metavar="LEXDIR", dest="lex_dir",
		help="directory to write lexer headers to")

	opts, args = p.parse_args()
	
	if not opts.lex_dir:
		p.error("missing lexer directory option (-o)")
	
	if len(args) < 1:
		p.error("missing Scintilla iface file")
	if not os.path.isfile(args[0]):
		p.error("specified Scintilla iface file does not exist")
	
	list(write_lexers(args[0], opts.lex_dir))

	print "Wrote out %d lexer headers to '%s'." % (len(lexers), opts.lex_dir)
	
	
	
	
	
