#include <gtk/gtk.h>
#include "gtkeditor.h"

int main(int argc, char *argv[])
{
	gtk_init(&argc, &argv);

	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	g_signal_connect(win, "destroy", gtk_main_quit, NULL);
	gtk_window_set_title(GTK_WINDOW(win), "GtkEditor Demo");
	gtk_window_set_default_size(GTK_WINDOW(win), 640, 480);
	
	GtkWidget *editor = GTK_WIDGET(gtk_editor_new());
	
	GtkWidget *vbox = gtk_vbox_new(FALSE, 0);
	
	GtkWidget *statusbar = gtk_statusbar_new();

	GtkWidget *menu_bar = gtk_menu_bar_new();
	
	GtkWidget *filemenu = gtk_menu_new();
	
	GtkWidget *filemenuitem = gtk_menu_item_new_with_label("File");
	gtk_widget_show(filemenuitem);
	
	GtkWidget *openmenuitem = gtk_menu_item_new_with_label("Open");
	gtk_widget_show(openmenuitem);
	
	gtk_menu_append(GTK_MENU(filemenu), openmenuitem);
	
	gtk_menu_item_set_submenu(GTK_MENU_ITEM(filemenuitem), filemenu);
	
	gtk_menu_bar_append(GTK_MENU_BAR(menu_bar), filemenuitem);
	
	gtk_box_pack_start(GTK_BOX(vbox), menu_bar, FALSE, FALSE, 0);
	gtk_widget_show(menu_bar);

	gtk_box_pack_start(GTK_BOX(vbox), editor, TRUE, TRUE, 0);
	gtk_box_pack_start(GTK_BOX(vbox), statusbar, FALSE, FALSE, 0);
	
	gtk_container_add(GTK_CONTAINER(win), vbox);

	gtk_widget_show_all(win);

	gtk_main();
	
	return 0;
}
