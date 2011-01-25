using Gtk;
using Gdk;
using Pango;
using Scintilla;

namespace Gtk {
	
	public class PerlLexer : GLib.Object, IEditorLexer {
		
		internal Scintilla.Object* sci;
		
		public static const int lexer_index = 6;
		public static const string lexer_name = "perl";
				
		/* map config file names to actual names and types */
		public string[,] lexer_properties = {
			
			{ "FOLD_POD_BLOCKS", 
				"fold.perl.pod", 
				"bool",
				"Enable folding Pod blocks"
			},
			{ "FOLD_PACKAGES",
				"fold.perl.package",
				"bool",
				"Enable folding packages"
			},
			{ "FOLD",
				"fold",
				"bool",
				"Enable code folding"				
			},
			{ "FOLD_COMMENTS",
				"fold.comment",
				"bool",
				"This option enables folding multi-line comments"				
			},
			{ "FOLD_COMPACT",
				"fold.compact",
				"bool",
				"Enable folding blank lines when folding."				
			} };
			
		public string[,] lexer_keywords = {
            { "Keywords", "" } };

		/* todo: finish/improve descriptions */
        public string[,] lexer_styles = {
			{ "DEFAULT", "0", "Default style" },
			{ "ERROR", "1", "Errors" },
			{ "COMMENTLINE", "2", "Single line comments" },
			{ "POD", "3", "Plain old documentation blocks" },
			{ "NUMBER", "4", "Numbers" },
			{ "WORD", "5", "Keywords (first set of keywords)" },
			{ "STRING", "6", "String literals" },
			{ "CHARACTER", "7", "Character literals" },
			{ "PUNCTUATION", "8", "Punctuation marks" },
			{ "PREPROCESSOR", "9", "Preprocessor macros" },
			{ "OPERATOR", "10", "Operators" },
			{ "IDENTIFIER", "11", "Indentifiers" },
			{ "SCALAR", "12", "Scalars" },
			{ "ARRAY", "13", "Arrays" },
			{ "HASH", "14", "Hashes" },
			{ "SYMBOLTABLE", "15", "Symbol tables" },
			{ "VARIABLE_INDEXER", "16", "Variable indexer" },
			{ "REGEX", "17", "Regular expressions" },
			{ "REGSUBST", "18", "Regular expression substitutions" },
			{ "LONGQUOTE", "19", "Long quotes" },
			{ "BACKTICKS", "20", "Backticks" },
			{ "DATASECTION", "21", "Data sections" },
			{ "HERE_DELIM", "22", "Here delimiter" },
			{ "HERE_Q", "23", "Here Q" },
			{ "HERE_QQ", "24", "Here QQ" },
			{ "HERE_QX", "25", "Here QX" },
			{ "STRING_Q", "26", "String Q" },
			{ "STRING_QQ", "27", "String QQ" },
			{ "STRING_QX", "28", "String QX" },
			{ "STRING_QR", "29", "String QR" },
			{ "STRING_QW", "30", "String QW" },
			{ "POD_VERB", "31", "Plain old documentation verbatim" },
			{ "SUB_PROTOTYPE", "40", "Sub prototype" },
			{ "FORMAT_IDENT", "41", "Format identifier" },
			{ "FORMAT", "42", "Format" } };

		public PerlLexer(Scintilla.Object* sci) {
			//base(sci);
			this.sci = sci;
			this.sci->send_message(Messages.SETLEXER, lexer_index, 0);
		}

//----------------------------------------------------------------------
// Configuration loading and saving
// todo: move these into a super class

		public bool write_config(string filename) {
			
			try {
				
				KeyFile kf = new KeyFile();
				//kf.load_from_file(filename, KeyFileFlags.KEEP_COMMENTS);
				
				kf.set_integer("LEXER", "LEXER_ID", lexer_index);
				kf.set_comment("LEXER", "LEXER_ID", "Do not change LEXER_ID or LEXER_NAME");
				kf.set_string("LEXER", "LEXER_NAME", lexer_name);
				
				for (int i=0; i < lexer_properties.length[0]; i++) {
					
					string config_prop_name = lexer_properties[i,0];
					string lexer_prop_name = lexer_properties[i,1];
					string lexer_prop_type = lexer_properties[i,2];
					string comment = lexer_properties[i,3];
					
					switch (lexer_prop_type) {
						
						case "bool":
							bool prop_val;
							this.get_prop_as_bool(lexer_prop_name, out prop_val);
							kf.set_boolean("LEXER", config_prop_name, prop_val);
							break;
						case "int":
							int prop_val;
							this.get_prop_as_int(lexer_prop_name, out prop_val);
							kf.set_integer("LEXER", config_prop_name, prop_val);
							break;
						case "string":
						default:
							string prop_val;
							this.get_prop_as_string(lexer_prop_name, out prop_val);
							kf.set_string("LEXER", config_prop_name, prop_val);
							break;
					}
					
					kf.set_comment("LEXER", config_prop_name, comment);
					
				}
				
				for (int i=0; i < lexer_keywords.length[0]; i++) {
					
					string comment = lexer_keywords[i,0];
					string keywords = lexer_keywords[i,1];
					string keyname = "KEYWORDS_%d".printf(i);
					
					kf.set_string("KEYWORDS", keyname, keywords);
					kf.set_comment("KEYWORDS", keyname, comment);
					
				}
				
				for (int i=0; i < lexer_styles.length[0]; i++) {
					string name = lexer_styles[i,0];
					int index = lexer_styles[i,1].to_int();
					string keyname = "STYLE_%d".printf(index);
					string comment = lexer_styles[i,2];
					
					int fg_color = (int)this.sci->send_message(Messages.STYLEGETFORE, index, 0);
					int bg_color = (int)this.sci->send_message(Messages.STYLEGETBACK, index, 0);
					bool bold = (bool)this.sci->send_message(Messages.STYLEGETBOLD, index, 0);
					bool italic = (bool)this.sci->send_message(Messages.STYLEGETITALIC, index, 0);
					
					string valstr = "0x%06x;0x%06x;%s;%s;".printf(
										fg_color, bg_color,
										(bold) ? "true" : "false",
										(italic) ? "true" : "false");
					
					kf.set_string("STYLES", keyname, valstr);
					kf.set_comment("STYLES", keyname, comment);
				}
				
				
				string data = kf.to_data(null, null);
				FileUtils.set_contents(filename, data);
								
			}
			catch (KeyFileError err) { 
				warning(err.message);
				return false; 
			}
			catch (FileError err) { 
				warning(err.message);
				return false; 
			}
			
			return true;
		}
		
		public bool read_config(string filename) {
			
			try {
				
				KeyFile kf = new KeyFile();
				kf.load_from_file(filename, KeyFileFlags.NONE);
				
				if (!kf.has_group("LEXER")) {
					stdout.printf("Lexer section not found in config file\n");
					return false;
				}
				
				if (!kf.has_key("LEXER", "LEXER_ID")) {
					stdout.printf("Lexer ID key not found in config file\n");
					return false;
				}
				
				int lexid = kf.get_integer("LEXER", "LEXER_ID");
				if (lexid != lexer_index) {
					stdout.printf("Wrong config file for this lexer ID\n");
					return false;
				}
				
				string lexname = kf.get_string("LEXER", "LEXER_NAME").strip();
				if (lexname != lexer_name) {
					stdout.printf("Wrong config file for this lexer name\n");
					return false;
				}
				
				/* load up properties */
				for (int i=0; i < lexer_properties.length[0]; i++) {
					
					string config_prop_name = lexer_properties[i,0];
					string lexer_prop_name = lexer_properties[i,1];
					string lexer_prop_type = lexer_properties[i,2];
					string comment = lexer_properties[i,3];
					
					switch (lexer_prop_type) {
						
						case "bool":
							if (kf.has_key("LEXER", config_prop_name)) {
								bool val = kf.get_boolean("LEXER", config_prop_name);
								string prop_val = (val) ? "1" : "0";
								this.set_prop(lexer_prop_name, prop_val);
							}
							break;
						case "int":
							if (kf.has_key("LEXER", config_prop_name)) {
								int val = kf.get_integer("LEXER", config_prop_name);
								string prop_val = val.to_string();
								this.set_prop(lexer_prop_name, prop_val);
							}
							break;
						case "string":
						default:
							if (kf.has_key("LEXER", config_prop_name)) {
								string prop_val = kf.get_string("LEXER", config_prop_name);
								this.set_prop(lexer_prop_name, prop_val);
							}
							break;
					}
					
				}
				
				/* load up keywords */
				for (int i=0; i < lexer_keywords.length[0]; i++) {
					
					string keyname = "KEYWORDS_%d".printf(i);
					if (kf.has_key("KEYWORDS", keyname)) {
						lexer_keywords[i,1] = kf.get_string("KEYWORDS", keyname);
						this.sci->send_message(Messages.SETKEYWORDS, i, (long)lexer_keywords[i,1]);
					}
	
				}
				
				/* load up styles */
				this.sci->send_message(Scintilla.Messages.STYLECLEARALL, 0, 0);
				for (int i=0; i < lexer_styles.length[0]; i++) {

					int index = lexer_styles[i,1].to_int();
					string keyname = "STYLE_%d".printf(index);
					
					if (kf.has_key("STYLES", keyname)) {
					
						string[] keyvalues = kf.get_string_list("STYLES", keyname);
						int kvlen = keyvalues.length;
						
						if (kvlen > 0) {
							int fg_color = EditorStyle.hex_to_dec(keyvalues[0]);
							this.sci->send_message(Messages.STYLESETFORE, index, fg_color);
						}
						
						if (kvlen > 1) {
							int bg_color = EditorStyle.hex_to_dec(keyvalues[1]);
							this.sci->send_message(Messages.STYLESETBACK, index, bg_color);
						}
						
						if (kvlen > 2) {
							bool bold = keyvalues[2].strip().to_bool();
							this.sci->send_message(Messages.STYLESETBOLD, index, (long)bold);
						}
						
						if (kvlen > 3) {
							bool italic = keyvalues[3].strip().to_bool();
							this.sci->send_message(Messages.STYLESETITALIC, index, (long)italic);
						}
						
					}
				}
				
				
			}
			catch (KeyFileError err) {
				warning(err.message);
			}
			catch (FileError err) {
				warning(err.message);
			}
			
			return true;
		}

//----------------------------------------------------------------------
// Access to lexer properties

		public string[] list_props() {
			string[] props = {};
			for (int i=0; i < this.lexer_properties.length[0]; i++) {
				
				string pname = this.lexer_properties[i,1];
				int len = (int)this.sci->send_message(Messages.GETPROPERTY, (ulong)pname, 0);
				if (len != 0) {
					props += pname;
				}
				
			}
			return props;
		}

		public bool has_prop(string propname) {
			for (int i=0; i < this.lexer_properties.length[0]; i++) {
				if (this.lexer_properties[i,1] == propname)
					return true;
			}
			return false;
		}
		
		public bool get_prop_as_int(string propname, out int propvalue) {
			string strval = this.get_prop(propname);
			if (strval != null) {
				propvalue = strval.to_int();
				return true;
			}
			return false;
		}
		
		public bool get_prop_as_bool(string propname, out bool propvalue) {
			string strval = this.get_prop(propname);
			if (strval != null) {
				propvalue = (bool)strval.to_int();
				return true;
			}
			return false;
		}
		
		public bool get_prop_as_string(string propname, out string propvalue) {
			string strval = this.get_prop(propname);
			if (strval != null) {
				propvalue = strval;
				return true;
			}
			return false;
		}
		
		public Scintilla.PropertyTypes get_prop_type(string propname) {
			
			Scintilla.PropertyTypes prop_type;
			prop_type = (Scintilla.PropertyTypes)this.sci->send_message(
								Messages.PROPERTYTYPE, (ulong)propname, 0);
			return prop_type;
		}
		
		public string? get_prop(string propname) {
			
			if (!this.has_prop(propname))
				return null;
					
			int len = (int)this.sci->send_message(Messages.GETPROPERTY, (ulong)propname, 0);
			char *val = malloc0(len+1);
			this.sci->send_message(Messages.GETPROPERTY, (ulong)propname, (long)val);
			string prop_value = (string)val;
			free(val);
			return prop_value;
		}
		
		public bool set_prop(string propname, string propvalue) {
			
			if (!this.has_prop(propname))
				return false;
				
			this.sci->send_message(Messages.SETPROPERTY, (ulong)propname, (long)propvalue);
			/* verify the property change occurred */
			return (this.get_prop(propname) == propvalue);				
		}

	}

}
