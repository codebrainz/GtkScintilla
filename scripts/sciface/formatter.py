
__all__ = [ "cast_parm", 
			"format_def_params", 
			"format_call_params",
			"format_ret_type",
			"format_function",  "format_function_proto",
			"format_enum" ]

import string

def cast_parm(name, pos):
	"""
	Add cast to name as appropriate for its position in the
	parameters.  The first parameter is always an unsigned long
	while the second parameter is always a signed long.  Any other
	position and the name string will be returned unchanged.
	"""
	if pos == 0: return "(gulong)%s" % name
	elif pos == 1: return "(glong)%s" % name 
	else: return name	


def format_def_params(params):
	"""
	Format the parameters for use in a function definition.
	"""
	pstr = ""
	for p in params:
		if len(p) > 0: pstr += "%s, " % p
	if pstr.endswith(", "): 
		pstr = pstr[:-2]
	if not pstr:
		pstr = "void"
	return pstr


def format_call_params(params):
	"""
	Format the parameters for use in a function call.
	"""
	pstr = ""
	idx = 0
	for p in params:
		if len(p) == 0: 
			pstr += "%s, " % cast_parm("0", idx)
		else: 
			p = p.split(" ")
			pstr += "%s, " % cast_parm(p[-1], idx)
		idx += 1
	if pstr.endswith(", "): 
		pstr = pstr[:-2]
	return pstr


def format_ret_type(type):
	"""
	Format the return type (if any) for the function call.
	"""
	return "" if type == "void" else "return (%s)" % type

def format_function(prefix, func):
	# todo: make this use prefix
	fmt = "%s %s_%s(GtkScintilla *sci, %s) {\n\t%s"
	fmt += "scintilla_send_message(SCINTILLA(sci->scintilla),\n\t\t%s, %s);\n}\n"
	fstr = fmt % (
		func.type, prefix, func.name, 
		format_def_params(func.params),
		format_ret_type(func.type),
		func.index,
		format_call_params(func.params)
		)
	return fstr

def format_function_proto(prefix, func):
	fmt = "%s %s_%s(%s);\n"
	fstr = fmt % (
		func.type, prefix, func.name, 
		format_def_params(func.params))
	return fstr

def camel_to_upper(n):
	new=''
	for i,c in enumerate(n):
		if i != 0 and c in string.uppercase:
			new += "_%c" % c
		else: new += c
	return new

def to_enum_value_name(ns, enu, valname):
	
	ns = ns.rstrip('_')
	enu = enu.strip('_')
	valname = valname.strip('_')
	
	#ns = camel_to_upper(ns)
	enu = camel_to_upper(enu)
	
	return "%s_%s_%s" % (ns, enu, valname)			

def format_enum(prefix, enum):
	ename = "%s%s" % (prefix,enum.name)
	estr = "typedef enum {\n"
	for ev in enum.values:
		
		cname = to_enum_value_name(prefix, enum.name, ev.name)
		cname = cname.upper()
		
		estr += "\t%s=%s,\n" % (cname, ev.value)
	estr += "} %s;\n" % ename
	return estr
