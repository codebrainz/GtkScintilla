
import string

DATA_TYPE_REPLACEMENTS = {
	"void": "void", 
	"int": "gint", 
	"bool": "gboolean", 
	"position": "gint",
	"colour": "gint",
	"string": "const gchar*",
	"stringresult": "gchar*", 
	"cells": "glong",
	"findtext": "struct Sci_TextToFind*",
	"formatrange": "struct Sci_RangeToFormat*",
	"textrange": "struct Sci_TextRange*",
	"keymod": "gulong"
}

FUNCTION_NAMES = { 
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

def clean_name(name):
	new_name = name
	for k,v in FUNCTION_NAMES.iteritems():
		new_name = new_name.replace(k, v)
	return new_name

def replace_type(itype):
	return DATA_TYPE_REPLACEMENTS.get(itype, itype)

def return_type(itype):
	if itype == "void": return ""
	return "return (%s)" % DATA_TYPE_REPLACEMENTS.get(itype, None)

def return_type_proto(itype):
	if itype == "void": return "void"
	return "%s" % DATA_TYPE_REPLACEMENTS.get(itype, None)
			
def camel_to_lower(name):
	newstr = ""
	for i,c in enumerate(name):
		if c in string.uppercase and i != 0: 
			newstr += "_%s" % c.lower()
		else: newstr += c.lower()
	return newstr
