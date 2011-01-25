using Gtk;
using Gdk;
using Pango;
using Scintilla;

namespace Gtk {
	
	public interface IEditorLexer : GLib.Object {
		
		/*
		internal Scintilla.Object* sci;
		
		public string[,] lexer_properties;
		public string[,] lexer_keywords;
		public string[,] lexer_styles;
		public static const int lexer_index = 1;
		public static const string lexer_name = "null";
		
		public EditorLexer(Scintilla.Object* sci) {
			this.sci = sci;
		}
		*/
		
		public abstract bool read_config(string filename);            
        public abstract bool write_config(string filename);

//----------------------------------------------------------------------
// Access to lexer properties

		public abstract string[] list_props();
		public abstract bool has_prop(string propname);
		public abstract bool get_prop_as_int(string propname, out int propvalue);
		public abstract bool get_prop_as_bool(string propname, out bool propvalue);
		public abstract bool get_prop_as_string(string propname, out string propvalue);
		/* removed from CVS scintilla - Jan 24, 2011 */
		//public abstract Scintilla.PropertyTypes get_prop_type(string propname);
		public abstract string? get_prop(string propname);
		public abstract bool set_prop(string propname, string propvalue);
		
	}
	
}
