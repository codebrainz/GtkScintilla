import os
import re
import fixups

class FunctionParseError(Exception): pass
class FunctionParameterParseError(Exception): pass

class Function(object):
	
	regex = re.compile(r'''^(?P<feature>fun|get|set)\s+
							(?P<type>.*?)\s+
							(?P<name>.*?)=
							(?P<index>\d+)\s*\(\s*
							(?P<params>.*?)\s*\)''', re.X)
						
	def __init__(self, namespace=None, return_type=None, name=None, message=None, params=[]):
		self.namespace = namespace
		self.return_type = return_type
		self.params = params
		self.name = fixups.clean_name(name)
		self.name = fixups.camel_to_lower(self.name)
		try: self.message = int(message)
		except ValueError: self.message = message
	
	@property
	def camel_namespace(self):
		ns = re.sub('_([a-zA-Z])', lambda m: m.group(1).upper(), self.namespace)
		ns = "%c%s" % (ns[0].upper(), ns[1:])	
		return ns
	
	@property
	def upper_namespace(self):
		return self.namespace.upper()
	
	@property
	def lower_namespace(self):
		return self.namespace.lower()
	
	@property
	def definition_params(self):
		def_params = ''
		for param in self.params:
			if param is not None:
				pstr = ''
				if len(param) > 0:
					pstr += '%s ' % fixups.replace_type(param[0])
				if len(param) > 1:
					pstr += '%s ' % param[1]
				pstr = pstr.strip()
				def_params += '%s, ' % pstr
		def_params = def_params.strip()
		if def_params.endswith(','):
			def_params = def_params[:-1]
		if def_params:
			def_params = ', %s' % def_params
		return def_params

	@property
	def macro_def_params(self):
		mp = ''
		for param in self.params:
			if param is not None:
				mp += '%s, ' % param[1]
		mp = mp.strip()
		if mp.endswith(','):
			mp = mp[:-1]
		if mp:
			mp = ', %s' % mp
		return mp
	
	@property
	def call_params(self):
		call_params = ''
		if len(self.params) == 2:
			if self.params[0] is None or len(self.params[0]) == 0:
				call_params_1 = '0'
			else:
				call_params_1 = '(uptr_t)%s' % self.params[0][1]
			if self.params[1] is None or len(self.params[1]) == 0:
				call_params_2 = '0'
			else:
				call_params_2 = '(sptr_t)%s' % self.params[1][1]
		else:
			raise ValueError('There must be exactly two parameters')
		return ', '.join([call_params_1, call_params_2])
	
	def __str__(self):
		return self.definition
	
	def __repr__(self):
		return self.prototype
	
	@property
	def instance_name(self):
		if len(self.namespace.split('_')) > 1:
			return ''.join(self.namespace.lower().split('_')[1:])
			
		else:
			return '_' + self.namespace.lower()
	
	@property
	def definition(self):
		#if not self.return_type or self.return_type == "void":
			## make a macro
			#return ""
		#else:
		fmt = str('inline {return_type} {lower_ns}_{func_name} ' + 
					'({camel_ns} *{self_name}{def_params}) {{\n\t' +
					'{return_type_call}{wrapped_function}(' +
					'{cast_name}({self_name}->{member_name}), ' +
					'{msg_num}, {call_params});\n}}').format(
						return_type = fixups.replace_type(self.return_type),
						lower_ns = self.lower_namespace,
						func_name = self.name,
						camel_ns = self.camel_namespace,
						self_name = "sci", 
						def_params = self.definition_params.replace('* ', ' *'),
						return_type_call = fixups.return_type(
												self.return_type),
						wrapped_function = "scintilla_send_message",
						cast_name = "SCINTILLA",
						member_name = "scintilla",
						msg_num = str(self.message),
						call_params = self.call_params
						)
		return fmt.strip()
	
	@property
	def prototype(self):
		#if not self.return_type or self.return_type == "void":
			## make a macro
			#fmt = str('#define {lower_ns}_{func_name}(sci{macro_def_params}) \\\n\t' +
					#'(scintilla_send_message(SCINTILLA((sci)->scintilla), ' +
					#'{msg_num}, {call_params}))').format(
						#lower_ns = self.lower_namespace,
						#func_name = self.name,
						#macro_def_params = self.macro_def_params,
						#msg_num = str(self.message),
						#call_params = self.call_params
						#)
			#return fmt.strip()
		#else:
		fmt = str('{return_type} {lower_ns}_{func_name} ' +
					'({camel_ns} *{self_name}{def_params});').format(
						return_type = fixups.return_type_proto(self.return_type),
						lower_ns = self.lower_namespace,
						func_name = self.name,
						camel_ns = self.camel_namespace,
						self_name = "sci",
						def_params = self.definition_params.replace("* ", " *")
						)
		return fmt.strip()
	
	@staticmethod
	def parse_params(params_string):
		params = params_string.split(',')
		nparams = []
		for p in params:
			if p:
				t = p.split()[0]
				i = p.split()[1].split('=')[0]
				try:
					d = p.split()[1].split('=')[1]
				except IndexError:
					d = None
				nparams.append( (t,i,d) )
			else:
				nparams.append( None )
		if len(nparams) != 2:
			raise FunctionParameterParseError(
						'Only two parameters are allowed: %s' % nparams)
		return tuple(nparams)
		
	@staticmethod
	def new_from_line(line, namespace="gtk_scintilla"):
		
		m = Function.regex.match(line)
		
		if not m:
			raise FunctionParseError("Line does not contain function")
		
		try:
			return Function(
					namespace=namespace,
					return_type=m.group('type'), 
					name=m.group('name'), 
					message=m.group('index'), 
					params=Function.parse_params(m.group('params'))
					)
		except FunctionParameterParseError as e:
			raise FunctionParseError("Wrong number of params")
	
	@staticmethod
	def iter_functions(iface_file, namespace='gtk_scintilla'):
		with open(iface_file, 'r') as iface:
			for line in iface:
				try:
					yield Function.new_from_line(line.strip(), namespace)
				except FunctionParseError:
					continue
