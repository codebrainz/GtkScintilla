#include <gtk/gtk.h>
#include <gtkscintilla.h>

static void on_update_ui(GtkWidget *widget, gpointer user_data)
{
	g_print("ui\n");
}

int main(int argc, char *argv[])
{
	GtkWidget *win, *sci;
	
	gtk_init(&argc, &argv);
	
	win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_default_size(GTK_WINDOW(win), 640, 480);
	gtk_window_set_title(GTK_WINDOW(win), "GtkScintilla Basic Lexer Test");
	g_signal_connect(win, "destroy", gtk_main_quit, NULL);
	
	sci = gtk_scintilla_new();
	
	/* setup basic properties */
	g_object_set(sci,
		"line-numbers-visible", TRUE,
		"lexer", GTK_SCINTILLA_LEXER_CPP,
		"tab-width", 4,
		"text", "#include <stdio>\n"
				"\n"
				"int main(int argc, char *argv[]) {\n"
				"\tprintf(\"Hello %s\\n\", \"World\");\n"
				"\treturn 0;\n"
				"}\n\n",
		NULL);
	
	g_signal_connect(sci,
		"update-ui",
		G_CALLBACK(on_update_ui),
		NULL);
	
	gtk_container_add(GTK_CONTAINER(win), sci);
	gtk_widget_show_all(win);
	

	ScintillaObject *s = SCINTILLA(GTK_SCINTILLA(sci)->scintilla);
	g_print("update-ui\n");

	
	/* tell the lexer which words to colorize */
	gtk_scintilla_set_keywords(GTK_SCINTILLA(sci), 
		0, 						/* keywords set 1 */
		"int char void return"	/* white space separated keywords */
		);		

	gtk_scintilla_set_keywords(GTK_SCINTILLA(sci), 1, "printf");
		
	gtk_main();
	return 0;	
}
