from collections import namedtuple

EnumValue = namedtuple('EnumValue', 'name value')

class Enum(object):
	
	def __init__(self, **kwargs):
		self.name = kwargs.get('name', None)
		self.prefix = kwargs.get('prefix', None)
		self.values = kwargs.get('values', [])
	
	def __str__(self):
		return self.enum_definition()
		
	def enum_definition(self):
		code = 'typedef enum {\n'
		for value in self.values:
			code += '\t%s_%s=%s,\n' % (self.prefix, value.name, value.value)
		code += '\t%s_LAST\n} %s;' % (self.prefix, self.name)
		return code
	
	def macro_defines(self):
		code = ''
		for value in self.values:
			ccode += '#define %s_%s %s' % (self.prefix, value.name, value.value)
		return ccode

	@staticmethod
	def iter_enums(iface_file, name='GtkScintilla', prefix='GTK_SCINTILLA'):
		with open(iface_file, 'r') as iface:
			current_enum = None
			current_name = ''
			current_prefixes = []
			for line in iface:
				line = line.strip()
				if len(line) == 0:
					continue
				elif line.startswith('#'):
					continue
				elif line.startswith('enu '):
					current_name = line.replace('enu ', '').split('=')[0]
					prefixes_string = line.replace('enu ', '').split('=')[1]
					current_prefixes = prefixes_string.split()
					current_enum = Enum(name=name+current_name, prefix=prefix)
					continue
				elif line.startswith('val '):
					name = line.replace('val ', '').split('=')[0]
					value = line.replace('val ', '').split('=')[1]
					for pref in current_prefixes:
						if name.startswith(pref):
							enum_value = EnumValue(name, value)
							if current_enum is not None:
								current_enum.values.append(enum_value)
					continue
				else:
					if current_enum is None:
						continue
					else:
						yield current_enum
						current_enum = None
						current_name = ''
						current_prefixes = []
						continue
	

if __name__ == "__main__":
	
	for enum in Enum.iter_enums('../../data/Scintilla.iface'):
		print enum
