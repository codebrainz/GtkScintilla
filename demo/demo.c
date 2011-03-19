#include <gtk/gtk.h>
#include <gtkscintilla.h>

int main(int argc, char *argv[])
{
	GtkWidget *win, *sci;
	
	gtk_init(&argc, &argv);
	
	win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_default_size(GTK_WINDOW(win), 640, 480);
	gtk_window_set_title(GTK_WINDOW(win), "GtkScintilla Basic Demo");
	g_signal_connect(win, "destroy", gtk_main_quit, NULL);
	
	sci = gtk_scintilla_new();
	
	g_object_set(G_OBJECT(sci),
		"text", "Hello World",
		NULL);
	
	gtk_container_add(GTK_CONTAINER(win), sci);
	gtk_widget_show_all(win);
	
	gtk_main();
	
	return 0;	
}
