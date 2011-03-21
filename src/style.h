
#ifndef GTK_SCINTILLA_STYLE_H
#define GTK_SCINTILLA_STYLE_H

typedef struct 
{
	gint id;
	gchar *name;
	gchar **classes;
} 
GtkScintillaLexerState;

typedef struct 
{
	GdkColor background_color;
	GdkColor foreground_color;
	PangoFontDescription *font_desc;
}
GtkScintillaStyle;

gtk_scintilla_style_read_states(const gchar *states_file);

#endif
