#include <gtk/gtk.h>
#include <gtkscintilla.h>

#ifndef DEMO_UI_FILE
#define DEMO_UI_FILE "/usr/local/share/gtkscintilla-1.0/demo2/demo2.ui"
#endif

#ifndef DEMO_SAMPLE_FILE
#define DEMO_SAMPLE_FILE "/usr/local/share/gtkscintilla-1.0/demo2/helloworld.c"
#endif

gchar *read_text_file(const gchar *filename)
{
	g_return_val_if_fail(filename != NULL, NULL);

	GError *error = NULL;
	gchar *return_text = NULL;

	if (!g_file_get_contents(filename, &return_text, NULL, &error))
	{
		g_printerr("Error: %s\n", error->message);
		g_error_free(error);
		return NULL;
	}

	return return_text;
}

int main(int argc, char *argv[])
{
	GtkWidget *win, *sci;
	GtkBuilder *builder;
	GError *error = NULL;
	gchar *sample_text;

	gtk_init(&argc, &argv);

	builder = gtk_builder_new();
	if (!gtk_builder_add_from_file(builder, DEMO_UI_FILE, &error))
	{
		g_printerr("Error: %s\n", error->message);
		g_error_free(error);
		return 1;
	}

	win = GTK_WIDGET(gtk_builder_get_object(builder, "window1"));
	gtk_window_set_default_size(GTK_WINDOW(win), 640, 480);
	g_signal_connect(win, "destroy", gtk_main_quit, NULL);

	sci = GTK_WIDGET(gtk_builder_get_object(builder, "scintilla1"));

	sample_text = read_text_file(DEMO_SAMPLE_FILE);
	if (sample_text != NULL)
	{
		gtk_scintilla_set_text(GTK_SCINTILLA(sci), sample_text);
		g_free(sample_text);
	}

	gtk_scintilla_set_keywords(GTK_SCINTILLA(sci), 0, "int char return");

	gtk_widget_show_all(win);
	gtk_main();

	return 0;
}
