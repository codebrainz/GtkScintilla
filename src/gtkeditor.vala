using Gtk;
using Gdk;
using Pango;
using Scintilla;

namespace Gtk {
	errordomain EditorError {
		STYLE_KEY_PARSE_ERROR,
		STYLE_VALUE_PARSE_ERROR,
	}
	
	public class Editor : Gtk.Frame {
				
		private Scintilla.Object sci;
		
		private static int FOLD_MARGIN_INDEX=1;
		
		public Editor() {
			
			this.sci = new Scintilla.Object();
			this.sci.set_size_request(1, 1);

			//this.lexer = new PythonLexer(this.sci);
			//this.lexer.read_config("data/config/python.conf");
			this.lexer = new PerlLexer(this.sci);
			this.lexer.read_config("data/config/perl.conf");
					
			/* initialize folding */
			bool fold;
			this.lexer.get_prop_as_bool("fold", out fold);
			if (fold)
				this.folding = true;
			
			this.fold_marker_style = FoldMarkerStyles.ARROW;
			this.fold_marker_fore_color = 0xffffff;
			this.fold_marker_back_color = 0x000000;

			this.font_desc = "Monospace 9";
			this.line_nums_visible = true;

			this.tab_width = 4;
			
//			this.text = ( "#include <stdio.h>\n" + 
//				"\n" +
//				"/* main entry point */\n" + 
//				"int main(int argc, char *argv[])\n" + 
//				"{\n" + 
//				"	printf(\"Hello World\");\n" + 
//				"	return 0;\n" + 
//				"}\n");

			this.text = """#!/usr/local/bin/perl
 print "Content-type: text/html\n\n";
 print "Hello World.\n";
 print "Heres the form info:<P>\n";
 my($buffer);
 my(@pairs);
 my($pair);
 read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});
 @pairs = split(/&/, $buffer);
 foreach $pair (@pairs)
   {
   print "$pair<BR>\n"
   }
print "<P>Note that further parsing is\n";
print "necessary to turn the plus signs\n";
print "into spaces and get rid of some\n";
print "other web encoding.\n";
		
			""";

			this.sci.sci_notify.connect(on_sci_notify);
			
			this.add(this.sci);
			
		}

//----------------------------------------------------------------------
// Lexer

		private static IEditorLexer _lexer;
		public IEditorLexer lexer {
			get { return this._lexer; }
			set { this._lexer = value; }
		}

//----------------------------------------------------------------------
// Folding

		public bool folding {
			get {
				bool doing_folding;
				this.lexer.get_prop_as_bool("fold", out doing_folding);
				return doing_folding;
			}
			set {
				string fold = (value) ? "1" : "0";
				if (value && this.lexer.set_prop("fold", fold)) {

					this.sci.send_message(Messages.SETMARGINTYPEN, FOLD_MARGIN_INDEX, MarginTypes.SYMBOL);
					this.sci.send_message(Messages.SETMARGINMASKN, FOLD_MARGIN_INDEX, MarginMasks.FOLDERS);
					this.sci.send_message(Messages.SETMARGINWIDTHN, FOLD_MARGIN_INDEX, 16);

					this.sci.send_message(Messages.SETFOLDFLAGS, FoldFlags.LINEAFTER_CONTRACTED, 0);
					
					this.sci.send_message(Messages.SETMARGINSENSITIVEN, FOLD_MARGIN_INDEX, 1);
					
					this.update_line_nums();
				}
				else {
					this.sci.send_message(Messages.SETMARGINWIDTHN, FOLD_MARGIN_INDEX, 0);
					this.sci.send_message(Messages.SETMARGINSENSITIVEN, FOLD_MARGIN_INDEX, 0);
				}
				
			}
		}
			
		public int fold_margin_color {
			get { return this._fold_margin_color; }
			set {
				this._fold_margin_color = value;
				this.sci.send_message(Messages.SETFOLDMARGINCOLOUR, 1, this._fold_margin_color);
				this.sci.send_message(Messages.SETFOLDMARGINHICOLOUR, 1, this._fold_margin_color);
			}
		}
		private int _fold_margin_color;	
		
		public int fold_marker_fore_color {
			get { return this._fold_marker_fore_color; }
			set {
				this._fold_marker_fore_color = value;
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDER, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDEROPEN, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDEREND, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDERMIDTAIL, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDEROPENMID, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDERSUB, this._fold_marker_fore_color);
				this.sci.send_message(Messages.MARKERSETFORE, MarginOutlines.FOLDERTAIL, this._fold_marker_fore_color);
			}
		}
		private int _fold_marker_fore_color;
		
		public int fold_marker_back_color {
			get { return this._fold_marker_back_color; }
			set {
				this._fold_marker_back_color = value;
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDER, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDEROPEN, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDEREND, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDERMIDTAIL, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDEROPENMID, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDERSUB, this._fold_marker_back_color);
				this.sci.send_message(Messages.MARKERSETBACK, MarginOutlines.FOLDERTAIL, this._fold_marker_back_color);
			}
		}
		private int _fold_marker_back_color;
		
		public enum FoldMarkerStyles {
			ARROW,
			PLUS_MINUS,
			CIRCLE_TREE,
			BOX_TREE
		}
		public FoldMarkerStyles fold_marker_style {
			get {
				return this._fold_marker_style;
			}
			set {
				this._fold_marker_style = value;
				switch (this._fold_marker_style) {
					
					case FoldMarkerStyles.PLUS_MINUS:
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDER, MarkerSymbols.MINUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPEN, MarkerSymbols.PLUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEREND, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERMIDTAIL, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPENMID, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERSUB, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERTAIL, MarkerSymbols.EMPTY);
						break;
						
					case FoldMarkerStyles.ARROW:
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDER, MarkerSymbols.ARROWDOWN);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPEN, MarkerSymbols.ARROW);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEREND, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERMIDTAIL, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPENMID, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERSUB, MarkerSymbols.EMPTY);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERTAIL, MarkerSymbols.EMPTY);
						break;
					
					case FoldMarkerStyles.CIRCLE_TREE:
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDER, MarkerSymbols.CIRCLEPLUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPEN, MarkerSymbols.CIRCLEMINUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEREND, MarkerSymbols.CIRCLEPLUSCONNECTED);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERMIDTAIL, MarkerSymbols.TCORNERCURVE);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPENMID, MarkerSymbols.CIRCLEMINUSCONNECTED);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERSUB, MarkerSymbols.VLINE);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERTAIL, MarkerSymbols.LCORNERCURVE);
						break;

					case FoldMarkerStyles.BOX_TREE:
					default:
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDER, MarkerSymbols.BOXPLUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPEN, MarkerSymbols.BOXMINUS);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEREND, MarkerSymbols.BOXPLUSCONNECTED);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERMIDTAIL, MarkerSymbols.TCORNER);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDEROPENMID, MarkerSymbols.BOXMINUSCONNECTED);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERSUB, MarkerSymbols.VLINE);
						this.sci.send_message(Messages.MARKERDEFINE, MarginOutlines.FOLDERTAIL, MarkerSymbols.LCORNER);
						break;
				}
			}
		}
		private FoldMarkerStyles _fold_marker_style;

//----------------------------------------------------------------------
// Global editor settings
		
		/**
		 * Gtk.Editor:default_font_desc:
		 * 
		 * Gets the default Pango font description for the editor, 
		 * which is taken from the system default size and using the
		 * font "Monospace".
		 */
		public string default_font_desc
		{
			get 
			{
				Gtk.Settings settings = Gtk.Settings.get_default();
				string font_desc = settings.gtk_font_name;
				Pango.FontDescription pfd = Pango.FontDescription.from_string(font_desc);
				int size = pfd.get_size() / Pango.SCALE;
				this._default_font_desc = "Monospace %d".printf(size);
				return this._default_font_desc;
			}
		}
		private string _default_font_desc;
		
		/**
		 * Gtk.Editor:font_size:
		 * 
		 * Gets or sets the font size.
		 */
		public int font_size
		{
			get {
				Pango.FontDescription pfd = Pango.FontDescription.from_string(this.font_desc);
				int size = pfd.get_size() / Pango.SCALE;
				return size;
			}
			set {				
				for (int i=0; i < 127; i++) {
					this.sci.send_message(Messages.STYLESETSIZE, i, (long)value);
				}
				
				/* update this._font desc */
				
				this.sci.send_message(Messages.SETZOOM, 0, 0);
				this.update_line_nums();
			}
		}
				
		/**
		 * Gtk.Editor:font_desc:
		 * 
		 * Gets and sets the Pango font description string used to set
		 * the font in the editor.  This sets the font for all styles.
		 */
		public string font_desc
		{
			get { return this._font_desc; }
			set
			{
				this._font_desc = value;
				Pango.FontDescription pfd = Pango.FontDescription.from_string(this._font_desc);
				int size = pfd.get_size() / Pango.SCALE;
				string font_name = "!%s".printf(pfd.get_family());
				
				for (int i=0; i < 127; i++)
				{
					this.sci.send_message(Messages.STYLESETFONT, i, (long)font_name);
					this.sci.send_message(Messages.STYLESETSIZE, i, size);
				}
				
				this.sci.send_message(Messages.SETZOOM, 0, 0);
				this.update_line_nums();
			}
		}
		private string _font_desc;
		
		/**
		 * Gtk.Editor:line_nums_visible:
		 * 
		 * Gets or sets the visibility of the line numbers margin.
		 */
		public bool line_nums_visible
		{
			get { return this._line_nums_visible; }
			set
			{
				this._line_nums_visible = value;
				this.update_line_nums();
			}
		}
		private bool _line_nums_visible;
		
		/* 
		 * Make sure line number margin is wide enough based on the number of lines. 
		 * Hide the line number margin if line_nums_visible=false.
		 */
		private void update_line_nums()
		{
			if (this.line_nums_visible)
			{
				int lines = (int)this.sci.send_message(Messages.GETLINECOUNT, 0, 0);
				string tmp_str = "__%d".printf(lines);
				int width = (int)this.sci.send_message(Messages.TEXTWIDTH, Styles.LINENUMBER, (long)tmp_str);
				this.sci.send_message(Messages.SETMARGINWIDTHN, 0, (long)width);
				this.sci.send_message(Messages.SETMARGINSENSITIVEN, 0, (long)false);
			}
			else
				this.sci.send_message(Messages.SETMARGINWIDTHN, 0, 0);
		}

//----------------------------------------------------------------------
// Styling
		
		/* scale and convert Gdk.Color rgb values to int */
		/*
		private static int gdk_color_to_int(Gdk.Color clr)
		{			
			int r = clr.red / 257;
			int g = clr.green / 257;
			int b = clr.blue / 257;
			return r*65535 + g*256 + b;
		}
		*/

		public void set_style_state(Scintilla.LexicalStates state, EditorStyle style)
		{
			this.sci.send_message(Scintilla.Messages.STYLESETFORE, state, (long)style.fg_color);
			this.sci.send_message(Scintilla.Messages.STYLESETBACK, state, (long)style.bg_color);
			this.sci.send_message(Scintilla.Messages.STYLESETBOLD, state, (long)style.bold);
			this.sci.send_message(Scintilla.Messages.STYLESETITALIC, state, (long)style.italic);
		}
		
		public void clear_styles() {
			this.sci.send_message(Scintilla.Messages.STYLECLEARALL, 0, 0);
		}


//----------------------------------------------------------------------
// Text retrieval and modification	
		
		/**
		 * insert_text:
		 * @position:	The position to insert the text at.
		 * @text:		The text to insert.
		 * 
		 * Inserts text at a given character position, starting at 0.
		 */
		public void insert_text(int position, string text)
		{
			this.sci.send_message(Messages.INSERTTEXT, (ulong)position, (long)text);
		}

		/**
		 * Gtk.Editor:text:
		 * 
		 * Gets or sets the entire text of the editor.
		 * 
		 * Todo: Make this not hold buffer in mem.
		 */
		private string _text;
		public string text {
			get {
				int length = (int)this.sci.send_message(Messages.GETLENGTH, 0, 0);
				char *buf = malloc(length);
				this.sci.send_message(Messages.GETTEXT, (ulong)length, (long)buf);
				this._text = (string)buf;
				free(buf);
				return this._text;
			}
			set { 
				this.insert_text(0, value); 
			}			
		}

//----------------------------------------------------------------------
// Tabs and indentation

		/**
		 * Gtk.Editor:tab-width:
		 * 
		 * The number of characters that are used to display a tab
		 * character.
		 */
		public int tab_width {
			get { return (int)this.sci.send_message(Messages.GETTABWIDTH, 0, 0 ); }
			set { this.sci.send_message(Messages.SETTABWIDTH, (ulong)value, 0); }
		}
		
		/**
		 * Gtk.Editor:use-tabs:
		 * 
		 * Use tab characters instead of of spaces for indentation.
		 */
		public bool use_tabs {
			get { return (bool)this.sci.send_message(Messages.GETUSETABS, 0, 0); }
			set { this.sci.send_message(Messages.SETUSETABS, (ulong)value, 0); }
		}
		
		/**
		 * Gtk.Editor:tab-indents:
		 * 
		 * Whether tab inserts indentation rather than a tab character.
		 */
		public bool tab_indents {
			get { return (bool)this.sci.send_message(Messages.GETTABINDENTS, 0, 0); }
			set { this.sci.send_message(Messages.SETTABINDENTS, (ulong)value, 0); }
		}
		
		/**
		 * Gtk.Editor:backspace-unindents:
		 * 
		 * Whether backspace removes indents rather than a delete character.
		 */
		public bool backspace_unindents {
			get { return (bool)this.sci.send_message(Messages.GETBACKSPACEUNINDENTS, 0, 0); }
			set { this.sci.send_message(Messages.SETBACKSPACEUNINDENTS, (ulong)value, 0); }
		}
		
		/**
		 * set_line_indentation:
		 * @line:	The line to set the indentation of.
		 * @indentation:	The amount of indentation to set.
		 * 
		 * The indentation is measured in character columns, which
		 * correspond to the width of space characters.
		 */
		public void set_line_indentation(int line, int indentation) {
			this.sci.send_message(Messages.SETLINEINDENTATION, (ulong)line, (long)indentation);
		}
		
		/** 
		 * get_line_indentation:
		 * @line: The to get the indentation of.
		 * 
		 * The indentation is measured in character columns, which
		 * correspond to the width of space characters.
		 */
		public int get_line_indentation(int line) {
			return (int)this.sci.send_message(Messages.GETLINEINDENTATION, (ulong)line, 0);
		}
		
		/**
		 * get_line_indent_position:
		 * @line:	The line to get the indent position of.
		 * 
		 * This returns the position at the end of indentation of a line.
		 */
		public int get_line_indent_position(int line) {
			return (int)this.sci.send_message(Messages.GETLINEINDENTPOSITION, (ulong)line, 0);
		}
		
		/**
		 * IndentViews:
		 * @NONE:			No indentation guides are shown.
		 * @REAL:			Indentation guides are shown inside real indentation white space.
		 * @LOOKFORWARD:	Indentation guides are shown beyond the actual indentation up to 
		 * 					the level of the next non-empty line. If the previous non-empty 
		 * 					line was a fold header then indentation guides are shown for one 
		 * 					more level of indent than that line. This setting is good for Python.
		 * @LOOKBOTH:		Indentation guides are shown beyond the actual indentation up to 
		 * 					the level of the next non-empty line or previous non-empty line 
		 * 					whichever is the greater. This setting is good for most languages.
		 * 
		 * There are 4 indentation guide views. #NONE turns the feature 
		 * off but the other 3 states determine how far the guides 
		 * appear on empty lines.  
		 */
		public enum IndentViews {
			NONE,
			REAL,
			LOOKFORWARD,
			LOOKBOTH,
		}
		/**
		 * Gtk.Editor:indentation_guides:
		 * 
		 * Gets or sets the view of the indentation guides which is
		 * one of the #IndentViews.
		 */
		public Editor.IndentViews indentation_guides {
			get { return (Editor.IndentViews)this.sci.send_message(Messages.GETINDENTATIONGUIDES, 0, 0); }
			set { this.sci.send_message(Messages.SETINDENTATIONGUIDES, (ulong)value, 0); }
		}
		
		/**
		 * Gtk.Editor:highlight_guide:
		 * 
		 * Gets or sets the indentation guide to be highlighted with
		 * the brace highlighting style.  Set to 0 to cancel this
		 * highlight.
		 */
		public int highlight_guide {
			get { return (int)this.sci.send_message(Messages.GETHIGHLIGHTGUIDE, 0, 0); }
			set { this.sci.send_message(Messages.SETHIGHLIGHTGUIDE, (ulong)value, 0); }
		}

//----------------------------------------------------------------------
// Signals forwarded from Scintilla
		
		/* not used */
		public enum Signals {
			STYLE_NEEDED=2000,
			CHAR_ADDED=2001,
			SAVE_POINT_REACHED=2002,
			SAVE_POINT_LEFT=2003,
			MODIFY_ATTEMPT_R_O=2004,
			KEY=2005,
			DOUBLE_CLICK=2006,
			UPDATE_UI=2007,
			MODIFIED=2008,
			MACRO_RECORD=2009,
			MARGIN_CLICK=2010,
			NEED_SHOWN=2011,
			PAINTED=2013,
			USER_LIST_SELECTION=2014,
			URI_DROPPED=2015,
			DWELL_START=2016,
			DWELL_END=2017,
			ZOOM=2018,
			HOT_SPOT_CLICK=2019,
			HOT_SPOT_DOUBLE_CLICK=2020,
			CALL_TIP_CLICK=2021,
			AUTO_C_SELECTION=2022,
			INDICATOR_CLICK=2023,
			INDICATOR_RELEASE=2024,
			AUTO_C_CANCELLED=2025,
			AUTO_C_CHAR_DELETED=2026,
			HOT_SPOT_RELEASE_CLICK=2027,
		}
		
		public virtual signal void style_needed(int position) {
			/* event id: 2000, params: (ulong)position */
			/* default handler code here */
		}

		public virtual signal void char_added(int ch) {
			/* event id: 2001, params: (ulong)ch */
			/* default handler code here */
			this.update_line_nums();
		}

		public virtual signal void save_point_reached() {
			/* event id: 2002, params:  */
			/* default handler code here */
		}

		public virtual signal void save_point_left() {
			/* event id: 2003, params:  */
			/* default handler code here */
		}

		public virtual signal void modify_attempt_ro() {
			/* event id: 2004, params:  */
			/* default handler code here */
		}

		public virtual signal void key(int ch, int modifiers) {
			/* event id: 2005, params: (ulong)ch, (long)modifiers */
			/* default handler code here */
		}

		public virtual signal void double_click() {
			/* event id: 2006, params:  */
			/* default handler code here */
		}

		public virtual signal void update_ui() {
			/* event id: 2007, params:  */
			/* default handler code here */
		}

		public virtual signal void modified(int position, 
			int modificationType, string? text, int length, 
			int linesAdded, int line, int foldLevelNow, int foldLevelPrev) {
			/* event id: 2008, params: (ulong)position, (long)modificationType, text, length, linesAdded, line, foldLevelNow, foldLevelPrev */
			/* default handler code here */
		}

		public virtual signal void macro_record(int message, int wParam, int lParam) {
			/* event id: 2009, params: (ulong)message, (long)wParam, lParam */
			/* default handler code here */
		}

		/* 
		 * This function is used to workaround a bug in vala where all kinds of 
		 * weird compilation errors when code is in signal block.
		 * valac --version: Vala 0.10.0 
		 */
		private void margin_click_handler(int modifiers, int position, int margin) {
			if (this.folding) {
				int line = (int)this.sci.send_message(Messages.LINEFROMPOSITION, position, 0);
				this.sci.send_message(Messages.TOGGLEFOLD, line, 0);
			}
		}
		public virtual signal void margin_click(int modifiers, int position, int margin) {
			/* event id: 2010, params: (ulong)modifiers, (long)position, margin */
			/* default handler code here */
			this.margin_click_handler(modifiers, position, margin);
		}

		public virtual signal void need_shown(int position, int length) {
			/* event id: 2011, params: (ulong)position, (long)length */
			/* default handler code here */
		}

		public virtual signal void painted() {
			/* event id: 2013, params:  */
			/* default handler code here */
		}

		public virtual signal void user_list_selection(int listType, string text) {
			/* event id: 2014, params: (ulong)listType, (long)text */
			/* default handler code here */
		}

		public virtual signal void uri_dropped(string text) {
			/* event id: 2015, params: (ulong)text */
			/* default handler code here */
		}

		public virtual signal void dwell_start(int position) {
			/* event id: 2016, params: (ulong)position */
			/* default handler code here */
		}

		public virtual signal void dwell_end(int position) {
			/* event id: 2017, params: (ulong)position */
			/* default handler code here */
		}

		public virtual signal void zoom() {
			/* event id: 2018, params:  */
			/* default handler code here */
		}

		public virtual signal void hot_spot_click(int modifiers, int position) {
			/* event id: 2019, params: (ulong)modifiers, (long)position */
			/* default handler code here */
		}

		public virtual signal void hot_spot_double_click(int modifiers, int position) {
			/* event id: 2020, params: (ulong)modifiers, (long)position */
			/* default handler code here */
		}

		public virtual signal void call_tip_click(int position) {
			/* event id: 2021, params: (ulong)position */
			/* default handler code here */
		}

		public virtual signal void auto_c_selection(string text) {
			/* event id: 2022, params: (ulong)text */
			/* default handler code here */
		}

		public virtual signal void indicator_click(int modifiers, int position) {
			/* event id: 2023, params: (ulong)modifiers, (long)position */
			/* default handler code here */
		}

		public virtual signal void indicator_release(int modifiers, int position) {
			/* event id: 2024, params: (ulong)modifiers, (long)position */
			/* default handler code here */
		}

		public virtual signal void auto_c_cancelled() {
			/* event id: 2025, params:  */
			/* default handler code here */
		}

		public virtual signal void auto_c_char_deleted() {
			/* event id: 2026, params:  */
			/* default handler code here */
		}

		public virtual signal void hot_spot_release_click(int modifiers, int position) {
			/* event id: 2027, params: (ulong)modifiers, (long)position */
			/* default handler code here */
		}
		
//----------------------------------------------------------------------
		
		/* dispatch the signals from scintilla */
		private void on_sci_notify(int param, Scintilla.Notification* notif)
		{
			Scintilla.Notification* n = (Scintilla.Notification *)notif;
			
			switch (n->nmhdr.code)
			{
				case Scintilla.Notifications.STYLENEEDED:
					this.style_needed(n->position);
					break;
				case Scintilla.Notifications.CHARADDED:
					//stdout.printf("Char added: %c\n", (char)n->ch);
					this.char_added(n->ch);
					break;
				case Scintilla.Notifications.SAVEPOINTREACHED:
					this.save_point_reached();
					break;
				case Scintilla.Notifications.SAVEPOINTLEFT:
					this.save_point_left();
					break;
				case Scintilla.Notifications.MODIFYATTEMPTRO:
					this.modify_attempt_ro();
					break;
				case Scintilla.Notifications.KEY:
					this.key(n->ch, n->modifiers);
					break;
				case Scintilla.Notifications.DOUBLECLICK:
					this.double_click();
					break;
				case Scintilla.Notifications.UPDATEUI:
					this.update_ui();
					break;
				case Scintilla.Notifications.MODIFIED:
					this.modified(n->position,n->modificationType, 
						n->text, n->length, n->linesAdded, 
						n->line, n->foldLevelNow, n->foldLevelPrev);
					break;
				case Scintilla.Notifications.MACRORECORD:
					this.macro_record(n->message, (int)n->wParam, (int)n->lParam);
					break;
				case Scintilla.Notifications.MARGINCLICK:
					this.margin_click(n->modifiers, n->position, n->margin);
					break;
				case Scintilla.Notifications.NEEDSHOWN:
					this.need_shown(n->position, n->length);
					break;
				case Scintilla.Notifications.PAINTED:
					this.painted();
					break;
				case Scintilla.Notifications.USERLISTSELECTION:
					user_list_selection(n->listType, n->text);
					break;
				case Scintilla.Notifications.URIDROPPED:
					this.uri_dropped(n->text);
					break;
				case Scintilla.Notifications.DWELLSTART:
					this.dwell_start(n->position);
					break;
				case Scintilla.Notifications.DWELLEND:
					this.dwell_end(n->position);
					break;
				case Scintilla.Notifications.ZOOM:
					this.zoom();
					break;
				case Scintilla.Notifications.HOTSPOTCLICK:
					this.hot_spot_click(n->modifiers, n->position);
					break;
				case Scintilla.Notifications.HOTSPOTDOUBLECLICK:
					this.hot_spot_double_click(n->modifiers, n->position);
					break;
				case Scintilla.Notifications.CALLTIPCLICK:
					this.call_tip_click(n->position);
					break;
				case Scintilla.Notifications.AUTOCSELECTION:
					this.auto_c_selection(n->text);
					break;
				case Scintilla.Notifications.INDICATORCLICK:
					this.indicator_click(n->modifiers, n->position);
					break;
				case Scintilla.Notifications.INDICATORRELEASE:
					this.indicator_release(n->modifiers, n->position);
					break;
				case Scintilla.Notifications.AUTOCCANCELLED:
					this.auto_c_cancelled();
					break;
				case Scintilla.Notifications.AUTOCCHARDELETED:
					this.auto_c_char_deleted();
					break;
				case Scintilla.Notifications.HOTSPOTRELEASECLICK:
					this.hot_spot_release_click(n->modifiers, n->position);
					break;
				default:
					stdout.printf("** Unhandled signal code %d\n", (int)n->nmhdr.code);
					break;
			}
			
		}
		
//----------------------------------------------------------------------

	}
	
}





































