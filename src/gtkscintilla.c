#include <gtk/gtk.h>
#include "gtkscintilla.h"

#define PLAT_GTK 2
#include <Scintilla.h>
#include <ScintillaWidget.h>

static void notify_cb (GtkWidget *w, gint param, gpointer notif, gpointer data);
void pass_throug_key (GtkScintilla *sci, gint ch, gint modifiers);
static void gtk_scintilla_finalize			(GObject *object);
static void gtk_scintilla_class_init(GtkScintillaClass *klass);
static void gtk_scintilla_init(GtkScintilla *self);

static gpointer parent_class;
static guint signals[LAST_SIGNAL] = { 0 };

struct _GtkScintillaPrivate
{
	gboolean line_numbers_visible;
	gchar *font;
};

G_DEFINE_TYPE(GtkScintilla, gtk_scintilla, GTK_TYPE_FRAME)

static void gtk_scintilla_class_init(GtkScintillaClass *klass)
{
	GObjectClass *object_class;
	GParamSpec *pspec;

	object_class = G_OBJECT_CLASS(klass);
    parent_class = g_type_class_peek_parent (klass);
	
	object_class->set_property = gtk_scintilla_set_property;
	object_class->get_property = gtk_scintilla_get_property;

	object_class->finalize = gtk_scintilla_finalize;

	g_type_class_add_private((gpointer)klass, sizeof(GtkScintillaPrivate));
	
	#include "propertyspecs.c"
	
	/**
	 * GtkScintilla::style-needed:
	 * @widget:		The #GtkScintilla object which requires styling.
	 * @start_pos:	The position to begin styling.
	 * @end_pos:	The position to stop styling.
	 * 
	 * If you have set the lexer to #GTK_SCINTILLA_LEXER_CONTAINER to control
	 * the styling yourself, you will receive this signal when #GtkScintilla
	 * is about to display or print text that requires styling.  You are 
	 * required to style the text from @start_pos to @end_pos.
	 */
	signals[STYLE_NEEDED] = g_signal_new("style-needed",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, style_needed),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT,
			G_TYPE_INT);
	
	/**
	 * GtkScintilla::char-added:
	 * @widget: The #GtkScintilla object which had a char added.
	 * @chr:	The character that was added.
	 * 
	 * Sent when the user types an ordinary text character (as opposed to a
	 * command character) that is entered into the text.  The user can decide
	 * to use this to decide to display a calltip or an auto completion list.
	 * This signal is emitted before the character has been styled so 
	 * processing that depends on styling should instead be performed in the
	 * #GtkScintilla::update-ui signal handler.
	 */
	signals[CHAR_ADDED] = g_signal_new("char-added",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, char_added),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	/**
	 * GtkScintilla::save-point-reached:
	 * @widget:		The #GtkScintilla object where the save point was reached.
	 * 
	 * Emitted when the save point is entered, allowing the user to display
	 * a "document dirty" indicator and change its menu items. 
	 */
	signals[SAVE_POINT_REACHED] = g_signal_new("save-point-reached",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, save_point_reached),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	/**
	 * GtkScintilla::save-point-left:
	 * @widget:		The #GtkScintilla object where the save point was left.
	 * 
	 * Emitted when the save point is left, allowing the user to display a
	 * "document dirty" indicator and change its menu items. 
	 */
	signals[SAVE_POINT_LEFT] = g_signal_new("save-point-left",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, save_point_left),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);
	
	/**
	 * GtkScintilla::modify-attempt-ro:
	 * @widget:		The #GtkScintilla object where modifying an R/O document
	 * 				was attempted.
	 * 
	 * When in read-only mode, this signal is emitted if the user tries to
	 * change the text.  This can be used to check the document out of a
	 * version control system.  You can set the read-only state of a document
	 * with gtk_scintilla_set_read_only().
	 */
	signals[MODIFY_ATTEMPT_RO] = g_signal_new("modify-attempt-ro",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, modify_attempt_ro),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	/**
	 * GtkScintilla::key:
	 * @widget:		The #GtkScintilla object where the key was pressed.
	 * @chr:		The key code.
	 * @modifiers:	The key modifiers.
	 * 
	 * Reports all keys pressed but not consumed by #GtkScintilla.  This signal
	 * is emitted if the modifiers include #GTK_SCINTILLA_KEY_MOD_CTRL or 
	 * #GTK_SCINTILLA_KEY_MOD_ALT and the key code is less than 256.
	 */
	signals[KEY] = g_signal_new("key",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, key),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	/**
	 * GtkScintilla::double-click:
	 * @widget:		The #GtkScintilla object that received a double-click.
	 * @position:	The position of the double click.
	 * @line:		The line where the double click occurred.
	 * 
	 * Emitted when the mouse button was doubled in the editor.
	 */
	signals[DOUBLE_CLICK] = g_signal_new("double-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, double_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT,
			G_TYPE_INT);

	/**
	 * GtkScintilla::update-ui:
	 * @widget:		The #GtkScintilla object that had a UI change.
	 * @updated:	The bit field of things changed since the previous signal.
	 * 
	 * Emitted when either the text or styling of the document has changed or
	 * the selection range or scroll position has changed.  In the handler for
	 * this signal, it would be a good time to update any container UI elements
	 * that depend on document or view state.  The @updated parameter is any
	 * combination of #GtkScintillaUpdateFlag values.
	 */
	signals[UPDATE_UI] = g_signal_new("update-ui",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, update_ui),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	/* todo: add events for each type */
	signals[MODIFIED] = g_signal_new("modified",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, modified),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,8,
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_STRING, 
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[MACRO_RECORD] = g_signal_new("macro-record",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, macro_record),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,3,
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[MARGIN_CLICK] = g_signal_new("margin-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, margin_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,3,
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[NEED_SHOWN] = g_signal_new("need-shown",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, need_shown),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[PAINTED] = g_signal_new("painted",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, painted),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	signals[USER_LIST_SELECTION] = g_signal_new("user-list-selection",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, user_list_selection),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_STRING);

	signals[URI_DROPPED] = g_signal_new("uri-dropped",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, uri_dropped),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_STRING);

	signals[DWELL_START] = g_signal_new("dwell-start",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, dwell_start),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	signals[DWELL_END] = g_signal_new("dwell-end",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, dwell_end),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	signals[ZOOM] = g_signal_new("zoom",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, zoom),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	signals[HOT_SPOT_CLICK] = g_signal_new("hot-spot-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, hot_spot_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[HOT_SPOT_DOUBLE_CLICK] = g_signal_new("hot-spot-double-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, hot_spot_double_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[CALL_TIP_CLICK] = g_signal_new("call-tip-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, call_tip_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	signals[AUTO_COMPLETION_SELECTION] = g_signal_new("auto-completion-selection",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_selection),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_STRING);

	signals[INDICATOR_CLICK] = g_signal_new("indicator-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, indicator_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[INDICATOR_RELEASE] = g_signal_new("indicator-release",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, indicator_release),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	signals[AUTO_COMPLETION_CANCELLED] = g_signal_new("auto-completion-cancelled",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_cancelled),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	signals[AUTO_COMPLETION_CHAR_DELETED] = g_signal_new("auto-completion-char-deleted",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_char_deleted),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);
	
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
	self->priv = G_TYPE_INSTANCE_GET_PRIVATE(self,
		GTK_TYPE_SCINTILLA, GtkScintillaPrivate);
	
	self->priv->line_numbers_visible = FALSE;
	self->priv->font = NULL;
		
    self->scintilla = GTK_WIDGET(scintilla_new());
    scintilla_set_id(SCINTILLA(self->scintilla), 1);

    g_signal_connect(G_OBJECT(self->scintilla), "sci-notify",
                      G_CALLBACK(notify_cb), GTK_WIDGET(self));
    
    gtk_container_add(GTK_CONTAINER(self), self->scintilla);
    
    gtk_widget_set_size_request(self->scintilla, 1, 1);
    
    gtk_widget_set (GTK_WIDGET(self->scintilla),
                    "visible", TRUE, NULL);
    
    gtk_widget_show (GTK_WIDGET(self->scintilla));
    gtk_widget_show_all (GTK_WIDGET(self));
}

GtkWidget *gtk_scintilla_new (void)
{
    GtkScintilla *scintilla;
    
    scintilla = (GtkScintilla *) gtk_type_new (gtk_scintilla_get_type ());
    
    return GTK_WIDGET (scintilla);
}

inline void gtk_scintilla_set_id(GtkScintilla *self, gshort id) {
	scintilla_set_id(SCINTILLA(self->scintilla), (uptr_t)id);
}

inline glong gtk_scintilla_send_message(GtkScintilla *self,
										guint iMessage,
										gulong wParam,
										glong lParam)
{
	return (glong)scintilla_send_message(SCINTILLA(self->scintilla),
											iMessage, 
											(uptr_t)wParam,
											(sptr_t)lParam);
}

inline void gtk_scintilla_release_resources() {
	scintilla_release_resources();
}

void gtk_scintilla_update_line_numbers(GtkScintilla *self)
{
	ScintillaObject *sci = SCINTILLA(self->scintilla);
	
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

gboolean gtk_scintilla_get_line_numbers_visible(GtkScintilla *self)
{
	return self->priv->line_numbers_visible;
}

void gtk_scintilla_set_line_numbers_visible(GtkScintilla *self, gboolean visible)
{
	self->priv->line_numbers_visible = visible;
	gtk_scintilla_update_line_numbers(self);
}

ScintillaObject *gtk_scintilla_get_scintilla(GtkScintilla *self) {
	g_return_val_if_fail(self->scintilla != NULL, NULL);
	return SCINTILLA(self->scintilla);
}

static void notify_cb (GtkWidget *w, gint param, gpointer notif, gpointer data)
{
    struct SCNotification *notification = (struct SCNotification *) notif;
    
    GtkScintilla *sci = GTK_SCINTILLA(data);
    
    switch (notification->nmhdr.code) {
        case SCN_STYLENEEDED:
        {
			gint start = gtk_scintilla_get_end_styled(sci);
			start = gtk_scintilla_line_from_position(sci, start);
			start = gtk_scintilla_position_from_line(sci, start); 
            g_signal_emit (G_OBJECT (data),
                           signals[STYLE_NEEDED], 0,
                           start,
                           (gint) notification->position);
            break;
        }
        case SCN_UPDATEUI:
            g_signal_emit (G_OBJECT (data),
                           signals[UPDATE_UI], 0);
            gtk_scintilla_update_line_numbers(GTK_SCINTILLA(data));
            break;
        case SCN_CHARADDED:
            g_signal_emit (G_OBJECT (data),
                           signals[CHAR_ADDED], 0,
                           (gint) notification->ch);
            break;
        case SCN_SAVEPOINTREACHED:
            g_signal_emit (G_OBJECT (data),
                           signals[SAVE_POINT_REACHED], 0);
            break;
        case SCN_SAVEPOINTLEFT:
            g_signal_emit (G_OBJECT (data),
                           signals[SAVE_POINT_LEFT], 0);
            break;
        case SCN_MODIFYATTEMPTRO:
            g_signal_emit (G_OBJECT (data),
                           signals[MODIFY_ATTEMPT_RO], 0);
            break;
        case SCN_KEY:
            pass_throug_key (GTK_SCINTILLA (data),
                             (gint) notification->ch,
                             (gint) notification->modifiers);
            g_signal_emit (G_OBJECT (data),
                           signals[KEY], 0,
                           (gint) notification->ch,
                           (gint) notification->modifiers);
            break;
        case SCN_DOUBLECLICK:
            g_signal_emit (G_OBJECT (data),
                           signals[DOUBLE_CLICK], 0,
                           (gint) notification->position,
                           (gint) notification->line);
            break;
        case SCN_MODIFIED:
            g_signal_emit (G_OBJECT (data),
                           signals[MODIFIED], 0,
                           (gint) notification->position,
                           (gint) notification->modificationType,
                           (gchar *)notification->text,
                           (gint) notification->length,
                           (gint) notification->linesAdded,
                           (gint) notification->line,
                           (gint) notification->foldLevelNow,
                           (gint) notification->foldLevelPrev);
            break;
        case SCN_MACRORECORD:
            g_signal_emit (G_OBJECT (data),
                           signals[MACRO_RECORD], 0,
                           (gint) notification->message,
                           (gulong) notification->wParam,
                           (glong) notification->lParam);
            break;
        case SCN_MARGINCLICK:
            g_signal_emit (G_OBJECT (data),
                           signals[MARGIN_CLICK], 0,
                           (gint) notification->modifiers,
                           (gint) notification->position,
                           (gint) notification->margin);
            break;
        case SCN_NEEDSHOWN:
            g_signal_emit (G_OBJECT (data),
                           signals[NEED_SHOWN], 0,
                           (gint) notification->position,
                           (gint) notification->length);
            break;
        case SCN_PAINTED:
            g_signal_emit (G_OBJECT (data),
                           signals[PAINTED], 0);
            break;
        case SCN_USERLISTSELECTION:
            g_signal_emit (G_OBJECT (data),
                           signals[USER_LIST_SELECTION], 0,
                           (gint) notification->listType,
                           (gchar *) notification->text);
            break;
        case SCN_URIDROPPED:
            g_signal_emit (G_OBJECT (data),
                           signals[URI_DROPPED], 0,
                           (gchar *) notification->text);
            break;
        case SCN_DWELLSTART:
            g_signal_emit (G_OBJECT (data),
                           signals[DWELL_START], 0,
                           (gint) notification->position);
            break;
        case SCN_DWELLEND:
            g_signal_emit (G_OBJECT (data),
                           signals[DWELL_END], 0,
                           (gint) notification->position);
            break;
        case SCN_ZOOM:
            g_signal_emit (G_OBJECT (data),
                           signals[ZOOM], 0);
            break;
        default:
            /*g_warning ("GtkScintilla2: Notification code %d not handled!\n",
                       (gint) notification->nmhdr.code);*/
            break;
    }
}

void
pass_throug_key (GtkScintilla *sci, gint ch, gint modifiers)
{
    gint mods = 0;
    
    if (modifiers & SCMOD_SHIFT)
        mods |= GDK_SHIFT_MASK;
    if (modifiers & SCMOD_CTRL)
        mods |= GDK_CONTROL_MASK;
    if (modifiers & SCMOD_ALT)
        mods |= GDK_MOD1_MASK;
    
    if (sci->accel_group) {
        gtk_accel_groups_activate (G_OBJECT (sci->accel_group),
                                   ch, (GdkModifierType) mods);
    }
}
