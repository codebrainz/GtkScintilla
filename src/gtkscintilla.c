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

	if (self->priv->font != NULL)
		g_free(self->priv->font);

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

	self->priv->fold_margin_index = GTK_SCINTILLA_FOLD_MARGIN_INDEX_DEFAULT;
	self->priv->fold_margin_width = GTK_SCINTILLA_FOLD_MARGIN_WIDTH_DEFAULT;

	/* connect internal signals */
	g_signal_connect(self, "sci-notify", G_CALLBACK(on_sci_notify), NULL);

	/* initialize defaults */
	gtk_scintilla_set_line_numbers_visible(self, TRUE);
	gtk_scintilla_set_folding_enabled(self, TRUE);
	gtk_scintilla_set_fold_style(self, GTK_SCINTILLA_FOLD_STYLE_BOX);
	gtk_scintilla_set_font(self, "Monospace 10");

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
    return g_object_new (GTK_TYPE_SCINTILLA, NULL);
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

	gtk_scintilla_set_margin_width_n(sci, sci->priv->fold_margin_index, 0);

	/* leave the fold margin hidden and return */
	if (!sci->priv->folding_enabled || sci->priv->fold_style == GTK_SCINTILLA_FOLD_STYLE_NONE)
		return;

	/* set some lexer properties */
	/* todo: use the new lexer.c classes */
	gtk_scintilla_set_lexer_property(sci, "fold", "1");
	gtk_scintilla_set_lexer_property(sci, "fold.compact", "0");
	gtk_scintilla_set_lexer_property(sci, "fold.comment", "1");
	gtk_scintilla_set_lexer_property(sci, "fold.preprocessor", "1");

	gtk_scintilla_set_margin_type(sci, sci->priv->fold_margin_index,
		GTK_SCINTILLA_MARGIN_TYPE_SYMBOL);
	gtk_scintilla_set_margin_mask(sci, sci->priv->fold_margin_index,
		GTK_SCINTILLA_MASK_FOLDERS);
	gtk_scintilla_set_margin_width_n(sci, sci->priv->fold_margin_index,
		sci->priv->fold_margin_width);

	switch (sci->priv->fold_style)
	{
		case GTK_SCINTILLA_FOLD_STYLE_BOX:
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDEROPEN,
				GTK_SCINTILLA_MARKER_SYMBOL_BOXMINUS);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDER,
				GTK_SCINTILLA_MARKER_SYMBOL_BOXPLUS);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDERSUB,
				GTK_SCINTILLA_MARKER_SYMBOL_VLINE);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDERTAIL,
				GTK_SCINTILLA_MARKER_SYMBOL_LCORNER);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDEREND,
				GTK_SCINTILLA_MARKER_SYMBOL_BOXPLUSCONNECTED);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDEROPENMID,
				GTK_SCINTILLA_MARKER_SYMBOL_BOXMINUSCONNECTED);
			gtk_scintilla_marker_define(sci, GTK_SCINTILLA_MARKER_OUTLINE_FOLDERMIDTAIL,
				GTK_SCINTILLA_MARKER_SYMBOL_TCORNER);
			break;
		default:
			g_debug("Fold style %d is not yet implemented.", sci->priv->fold_style);
			break;
	}

	/* should be with themes/styles, and better */
	gint markers[] = {
		SC_MARKNUM_FOLDEROPEN,
		SC_MARKNUM_FOLDER,
		SC_MARKNUM_FOLDERSUB,
		SC_MARKNUM_FOLDERTAIL,
		SC_MARKNUM_FOLDEREND,
		SC_MARKNUM_FOLDEROPENMID,
		SC_MARKNUM_FOLDERMIDTAIL
	};
	guint i;

	for (i = 0; i < 7; i++)
	{
		SSM(sci, SCI_MARKERSETFORE, markers[i], 0xffffff);
		SSM(sci, SCI_MARKERSETBACK, markers[i], 0x000000);
	}

	gtk_scintilla_set_fold_flags(sci, GTK_SCINTILLA_FOLD_FLAG_LINEAFTER_CONTRACTED);
	gtk_scintilla_set_margin_sensitive(sci, sci->priv->fold_margin_index, TRUE);
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


void gtk_scintilla_set_lexer (GtkScintilla *sci, GtkScintillaLexers lexer)
{
	scintilla_send_message(SCINTILLA(sci), SCI_SETLEXER, (uptr_t)lexer, 0);
	configure_folding(sci);
}

GtkScintillaLexers gtk_scintilla_get_lexer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), SCI_GETLEXER, 0, 0);
}

void gtk_scintilla_set_font (GtkScintilla *self, const gchar *font_desc)
{
	gint style, size;
	gchar *font_name;
	PangoFontDescription *pfd;

	g_return_if_fail(self != NULL);
	g_return_if_fail(font_desc != NULL);

	if (self->priv->font != NULL)
		g_free(self->priv->font);
	self->priv->font = g_strdup(font_desc);

	pfd = pango_font_description_from_string(font_desc);
	size = pango_font_description_get_size(pfd) / PANGO_SCALE;
	font_name = g_strdup_printf("!%s", pango_font_description_get_family(pfd));
	pango_font_description_free(pfd);

	for (style = 0; style <= STYLE_MAX; style++)
	{
		scintilla_send_message(SCINTILLA(self), SCI_STYLESETFONT, style, (sptr_t)font_name);
		scintilla_send_message(SCINTILLA(self), SCI_STYLESETSIZE, style, size);
	}

	/* line number and braces */
	/*
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETFONT, STYLE_LINENUMBER, (sptr_t)font_name);
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETSIZE, STYLE_LINENUMBER, size);
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETFONT, STYLE_BRACELIGHT, (sptr_t)font_name);
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETSIZE, STYLE_BRACELIGHT, size);
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETFONT, STYLE_BRACEBAD, (sptr_t)font_name);
	scintilla_send_message(SCINTILLA(self), SCI_STYLESETSIZE, STYLE_BRACEBAD, size);
	*/
	g_free(font_name);
	/* zoom to 100% to prevent confusion */
	scintilla_send_message(SCINTILLA(self), SCI_ZOOMOUT, 0, 0);
}

const gchar* gtk_scintilla_get_font (GtkScintilla *self)
{
	return self->priv->font;
}


/* To re-emit notifications as separate signals */
static void on_sci_notify(GtkWidget *widget, gint param, gpointer notif, gpointer user_data)
{
    struct SCNotification *notification = (struct SCNotification *) notif;
    GtkScintilla *self = GTK_SCINTILLA(widget);
	gtk_scintilla_forward_signals(self, notification);
}
