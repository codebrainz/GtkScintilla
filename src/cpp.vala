using Gtk;
using Gdk;
using Pango;
using Scintilla;

namespace Gtk {
	
	public class CppLexer : GLib.Object, IEditorLexer {
		
		internal Scintilla.Object* sci;
		
		public static const int lexer_index = 3;
		public static const string lexer_name = "cpp";
		
		/* map config file names to actual names and types */
		public string[,] lexer_properties = {
			
			{ "STYLING_WITHIN_PREPROCESSOR", 
				"styling.within.preprocessor", 
				"bool",
				"Determines whether all preprocessor code is styled in the preprocessor style (false, the default) or only from the initial # to the # end of the command word(true)." 
			},
			{ "ALLOW_DOLLARS", 
				"lexer.cpp.allow.dollars", 
				"bool",
				"Set to false to disallow the '$' character in identifiers." 
			},
			{ "TRACK_PREPROCESSOR", 
				"lexer.cpp.track.preprocessor", 
				"bool",
				"Set to true to interpret #if/#else/#endif to grey out code that is not active." 
			},
			{ "UPDATE_PREPROCESSOR", 
				"lexer.cpp.update.preprocessor", 
				"bool",
				"Set to true to update preprocessor definitions when #define found."
			},
			{ "FOLD", 
				"fold", 
				"bool",
				"Enable code folding." 
			},
			{ "FOLD_COMMENT", 
				"fold.comment", 
				"bool",
				"This option enables folding multi-line comments and explicit fold points.  Explicit fold points allows adding extra folding by placing a //{ comment at the start and a //} at the end of a section that should fold." 
			},
			{ "FOLD_COMMENT_EXPLICIT", 
				"fold.cpp.comment.explicit", 
				"bool",
				"Set this property to false to disable folding explicit fold points when FOLD_COMMENT=true."
			},
			{ "FOLD_PREPROCESSOR", 
				"fold.preprocessor", 
				"bool",
				"This option enables folding preprocessor directives."
			},
			{ "FOLD_COMPACT", 
				"fold.compact", 
				"bool",
				"Enable folding blank lines when folding."
			},
			{ "FOLD_AT_ELSE", 
				"fold.at.else", 
				"bool",
				"This option enables folding on a \"} else {\" line of an if statement."
			} };
			
		public string[,] lexer_keywords = {
            { "Primary keywords and identifiers", "" },
            { "Secondary keywords and identifiers", "" },
            { "Documentation comment keywords", "" },
            { "Global classes and typedefs", "" },
            { "Preprocessor definitions", "" } };
        
        public string[,] lexer_styles = {
			{ "DEFAULT", "0", "Default style" },
			{ "COMMENT", "1", "Comments" },
			{ "COMMENTLINE", "2", "Single line comments" },
			{ "COMMENTDOC", "3", "Documentation comments" },
			{ "NUMBER", "4", "Numbers" },
			{ "WORD", "5", "Primary keywords and identifiers (first set of keywords)" },
			{ "STRING", "6", "String literals" },
			{ "CHARACTER", "7", "Character literals" },
			{ "UUID", "8", "Universally unique identifiers" },
			{ "PREPROCESSOR", "9", "Preprocessor macros (fifth set of keywords)" },
			{ "OPERATOR", "10", "Operators" },
			{ "IDENTIFIER", "11", "Identifiers" },
			{ "STRINGEOL", "12", "String literal missing closing quote" },
			{ "VERBATIM", "13", "Verbatim" },
			{ "REGEX", "14", "Regular expressions" },
			{ "COMMENTLINEDOC", "15", "Single line documentation comments" },
			{ "WORD2", "16", "Secondary keywords and identifiers (second set of keywords)" },
			{ "COMMENTDOCKEYWORD", "17", "Documentation comment keyword (third set of keywords)" },
			{ "COMMENTDOCKEYWORDERROR", "18", "Documentation comment keyword error" },
			{ "GLOBALCLASS", "19", "Global classes and typedefs (fourth set of keywords)" } };

		public CppLexer(Scintilla.Object* sci) {
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


//----------------------------------------------------------------------
// GObject style properties specific to this lexer
		
		/**
		 * CppLexer:style_within_preprocessor:
		 * 
		 * Determines whether all preprocessor code is styled in the preprocessor style 
		 * (false, the default) or only from the initial # to the # end of the command word(true).
		 */
		public bool styling_within_preprocessor {
			get { 
				bool ret;
				this.get_prop_as_bool("styling.within.preprocessor", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0"; 
				this.set_prop("styling.within.preprocessor", val);
			}
		}
		
		/** 
		 * CppLexer:allow_dollars:
		 * 
		 * Set to false to disallow the '$' character in identifiers.
		 */
		public bool allow_dollars {
			get { 
				bool ret;
				this.get_prop_as_bool("lexer.cpp.allow.dollars", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("lexer.cpp.allow.dollars", val);
			}
		}
		
		/**
		 * CppLexer:track_preprocessor:
		 * 
		 * Set to true to interpret #if/#else/#endif to grey out code that is not active.
		 */
		public bool track_preprocessor {
			get { 
				bool ret;
				this.get_prop_as_bool("lexer.cpp.track.preprocessor", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("lexer.cpp.track.preprocessor", val);
			}
		}
		
		/**
		 * CppLexer:update_preprocessor:
		 * 
		 * Set to true to update preprocessor definitions when #define found.
		 */
		public bool update_preprocessor {
			get { 
				bool ret;
				this.get_prop_as_bool("lexer.cpp.update.preprocessor", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("lexer.cpp.update.preprocessor", val);
			}
		}
		
		/**
		 * CppLexer:fold:
		 * 
		 * Enable code folding.
		 */
		public bool fold {
			get { 
				bool ret;
				this.get_prop_as_bool("fold", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold", val);
			}
		}
		
		/** 
		 * CppLexer:fold_comment:
		 * 
		 * This option enables folding multi-line comments and explicit fold points.  
		 * Explicit fold points allows adding extra folding by placing a //{ comment at 
		 * the start and a //} at the end of a section that should fold.
		 */
		public bool fold_comment {
			get { 
				bool ret;
				this.get_prop_as_bool("fold.comment", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold.comment", val);
			}
		}
		
		/**
		 * CppLexer:fold_comment_explicit:
		 * 
		 * Set this property to false to disable folding explicit fold points when FOLD_COMMENT=true.
		 */
		public bool fold_comment_explicit {
			get { 
				bool ret;
				this.get_prop_as_bool("fold.cpp.comment.explicit", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold.cpp.comment.explicit", val);
			}
		}
		
		/**
		 * CppLexer:fold_preprocessor:
		 * 
		 * This option enables folding preprocessor directives.
		 */
		public bool fold_preprocessor {
			get { 
				bool ret;
				this.get_prop_as_bool("fold.preprocessor", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold.preprocessor", val);
			}
		}
		
		/**
		 * CppLexer:fold_compact:
		 * 
		 * Enable folding blank lines when folding.
		 */
		public bool fold_compact {
			get { 
				bool ret;
				this.get_prop_as_bool("fold.compact", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold.compact", val);
			}
		}
		
		/**
		 * CppLexer:fold_at_else:
		 * 
		 * This option enables folding on a \"} else {\" line of an if statement.
		 */
		public bool fold_at_else {
			get { 
				bool ret;
				this.get_prop_as_bool("fold.at.else", out ret);
				return ret;
			}
			set {
				string val = (value) ? "1" : "0";
				this.set_prop("fold.at.else", val);
			}
		}

	}

}
