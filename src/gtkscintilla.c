#include <gtk/gtk.h>

#include <Scintilla.h>
#include <ScintillaWidget.h>

#include "gtkscintilla.h"
#include "properties.h"
#include "style-properties.h"
#include "signals.h"

static void on_sci_notify(GtkWidget *w, gint param, gpointer notif, gpointer data);
void pass_throug_key(GtkScintilla *sci, gint ch, gint modifiers);

static void gtk_scintilla_finalize(GObject *object);
static void gtk_scintilla_class_init(GtkScintillaClass *klass);
static void gtk_scintilla_init(GtkScintilla *self);

static gpointer parent_class;


struct _GtkScintillaPrivate
{
	gboolean line_numbers_visible;
	gboolean folding_enabled;
	GtkScintillaFoldStyle fold_style;
	gint fold_margin_index;
	gint fold_margin_width;
	gchar *font;
};


G_DEFINE_TYPE(GtkScintilla, gtk_scintilla, SCINTILLA_TYPE_OBJECT)


static void gtk_scintilla_class_init(GtkScintillaClass *klass)
{
	GObjectClass *object_class;

	object_class = G_OBJECT_CLASS(klass);
    parent_class = g_type_class_peek_parent (klass);

	object_class->set_property = gtk_scintilla_set_property;
	object_class->get_property = gtk_scintilla_get_property;

	object_class->finalize = gtk_scintilla_finalize;

	g_type_class_add_private((gpointer)klass, sizeof(GtkScintillaPrivate));

	_gtk_scintilla_class_install_properties(klass);
	_gtk_scintilla_class_install_style_properties(klass);
	_gtk_scintilla_class_install_signals(klass);
}


static void gtk_scintilla_finalize(GObject *object)
{
	GtkScintilla *self;

	g_return_if_fail(object != NULL);
	g_return_if_fail(GTK_IS_SCINTILLA(object));

	self = GTK_SCINTILLA(object);

	G_OBJECT_CLASS(gtk_scintilla_parent_class)->finalize(object);
}


static void gtk_scintilla_init(GtkScintilla *self)
{
	self->priv = G_TYPE_INSTANCE_GET_PRIVATE(self, GTK_TYPE_SCINTILLA, GtkScintillaPrivate);

	/* set defaults */
	self->priv->line_numbers_visible = FALSE;
	self->priv->font = NULL;
	self->priv->fold_style = GTK_SCINTILLA_FOLD_STYLE_NONE;
	self->priv->folding_enabled = FALSE;

	self->priv->fold_margin_index = 2;
	self->priv->fold_margin_width = 16;

	/* connect internal signals */
	g_signal_connect(self, "sci-notify", G_CALLBACK(on_sci_notify), NULL);

	/* initialize defaults */
	gtk_scintilla_set_line_numbers_visible(self, TRUE);
	gtk_scintilla_set_folding_enabled(self, TRUE);
	gtk_scintilla_set_fold_style(self, GTK_SCINTILLA_FOLD_STYLE_BOX);

    gtk_widget_show_all(GTK_WIDGET(self));
}


/**
 * gtk_scintilla_new:
 *
 * Creates a new GtkScintilla widget.
 *
 * @return A new GtkScintilla as a GtkWidget.
 */
GtkWidget *gtk_scintilla_new (void)
{
    GtkScintilla *self;
    self = (GtkScintilla *) gtk_type_new (gtk_scintilla_get_type ());
    return GTK_WIDGET (self);
}


/**
 * gtk_scintilla_send_message:
 * @param self		The GtkScintilla to send the message to.
 * @param iMessage	The message code to send.
 * @param wParam	The first parameter for the message.
 * @param lParam	The second parameter for the message.
 *
 * If #GtkScintilla is doing its job properly, you shouldn't need to use
 * this function.
 *
 * @return	A #glong which corresponds to Scintilla's <emphasis>sptr_t</emphasis>
 * 			type. The meaning of the return value depends on the message
 * 			being sent. Consult the Scintilla documentation for more information.
 */
glong gtk_scintilla_send_message(GtkScintilla *self, guint iMessage,
	gulong wParam, glong lParam)
{
	return (glong)scintilla_send_message(SCINTILLA(self), iMessage,
		(uptr_t)wParam,	(sptr_t)lParam);
}


/**
 * gtk_scintilla_update_line_numbers:
 * @param self	The #GtkScintilla to operate on.
 *
 * Causes the width of the line number margin to be re-calculated and
 * re-adjusted.
 */
void gtk_scintilla_update_line_numbers(GtkScintilla *self)
{
	ScintillaObject *sci = SCINTILLA(self);

	if (gtk_scintilla_get_line_numbers_visible(self))
	{
		gchar tmp_str[15];
		gint len, width;

		len = SSM(sci, SCI_GETLINECOUNT, 0, 0);
		g_snprintf(tmp_str, 15, "_%d", len);
		width = SSM(sci, SCI_TEXTWIDTH, STYLE_LINENUMBER, (sptr_t)tmp_str);
		SSM(sci, SCI_SETMARGINWIDTHN, 0, width);
		SSM(sci, SCI_SETMARGINSENSITIVEN, 0, FALSE);
	}
	else
		SSM(sci, SCI_SETMARGINWIDTHN, 0, 0);
}

/**
 * gtk_scintilla_get_line_numbers_visible:
 * @self:	The #GtkScintilla object
 *
 * Gets whether the line number margin is visible or not.
 *
 * Returns: The visibility of the line number margin for the #GtkScintilla.
 **/
gboolean gtk_scintilla_get_line_numbers_visible(GtkScintilla *self)
{
	return self->priv->line_numbers_visible;
}


/**
 * gtk_scintilla_set_line_numbers_visible:
 * @self:		The #GtkScintilla object
 * @visible:	#TRUE for visible, #FALSE for hidden
 *
 * Sets the line number visibility to @visibility on the #GtkScintilla.
 **/
void gtk_scintilla_set_line_numbers_visible(GtkScintilla *self, gboolean visible)
{
	self->priv->line_numbers_visible = visible;
	gtk_scintilla_update_line_numbers(self);
}

/* helper function to setup the folding markers and hide/show the fold margin */
static void configure_folding(GtkScintilla *sci)
{
	g_return_if_fail(sci != NULL);

	if (sci->priv->folding_enabled)
	{
		/* todo: setup all the folding markers and stuff here */
		gtk_scintilla_set_margin_width_n(sci, sci->priv->fold_margin_index,
			sci->priv->fold_margin_width);
	}
	else
		gtk_scintilla_set_margin_width_n(sci, sci->priv->fold_margin_index, 0);
}


gboolean gtk_scintilla_get_folding_enabled(GtkScintilla *self)
{
	g_return_val_if_fail(self != NULL, FALSE);

	return self->priv->folding_enabled;
}


void gtk_scintilla_set_folding_enabled(GtkScintilla *self, gboolean enabled)
{
	g_return_if_fail(self != NULL);

	self->priv->folding_enabled = enabled;
	configure_folding(self);
}


GtkScintillaFoldStyle gtk_scintilla_get_fold_style(GtkScintilla *self)
{
	g_return_val_if_fail(self != NULL, GTK_SCINTILLA_FOLD_STYLE_NONE);

	return self->priv->fold_style;
}


void gtk_scintilla_set_fold_style(GtkScintilla *self, GtkScintillaFoldStyle fold_style)
{
	g_return_if_fail(self != NULL);

	self->priv->fold_style = fold_style;

	if (fold_style == GTK_SCINTILLA_FOLD_STYLE_NONE)
		gtk_scintilla_set_folding_enabled(self, FALSE);
	else
		configure_folding(self);
}


/* To re-emit notifications as separate signals */
static void on_sci_notify(GtkWidget *widget, gint param, gpointer notif, gpointer user_data)
{
    struct SCNotification *notification = (struct SCNotification *) notif;
    GtkScintilla *self = GTK_SCINTILLA(widget);
	gtk_scintilla_forward_signals(self, notification);
}
