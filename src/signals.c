/*
 * signals.c
 * 
 * Copyright 2011 Matthew Brush <mbrush@codebrainz.ca>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

#include <gtk/gtk.h>
#include "gtkscintilla.h"
#include "signals.h"

guint _gtk_scintilla_signals[LAST_SIGNAL] = { 0 };

void gtk_scintilla_class_install_signals(GtkScintillaClass *klass)
{
	GObjectClass *object_class = G_OBJECT_CLASS(klass);
	
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
	_gtk_scintilla_signals[STYLE_NEEDED] = g_signal_new("style-needed",
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
	_gtk_scintilla_signals[CHAR_ADDED] = g_signal_new("char-added",
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
	_gtk_scintilla_signals[SAVE_POINT_REACHED] = g_signal_new("save-point-reached",
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
	_gtk_scintilla_signals[SAVE_POINT_LEFT] = g_signal_new("save-point-left",
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
	_gtk_scintilla_signals[MODIFY_ATTEMPT_RO] = g_signal_new("modify-attempt-ro",
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
	_gtk_scintilla_signals[KEY] = g_signal_new("key",
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
	_gtk_scintilla_signals[DOUBLE_CLICK] = g_signal_new("double-click",
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
	_gtk_scintilla_signals[UPDATE_UI] = g_signal_new("update-ui",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, update_ui),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	/* todo: add events for each type */
	_gtk_scintilla_signals[MODIFIED] = g_signal_new("modified",
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

	_gtk_scintilla_signals[MACRO_RECORD] = g_signal_new("macro-record",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, macro_record),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,3,
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[MARGIN_CLICK] = g_signal_new("margin-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, margin_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,3,
			G_TYPE_INT, 
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[NEED_SHOWN] = g_signal_new("need-shown",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, need_shown),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[PAINTED] = g_signal_new("painted",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, painted),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	_gtk_scintilla_signals[USER_LIST_SELECTION] = g_signal_new("user-list-selection",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, user_list_selection),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_STRING);

	_gtk_scintilla_signals[URI_DROPPED] = g_signal_new("uri-dropped",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, uri_dropped),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_STRING);

	_gtk_scintilla_signals[DWELL_START] = g_signal_new("dwell-start",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, dwell_start),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	_gtk_scintilla_signals[DWELL_END] = g_signal_new("dwell-end",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, dwell_end),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	_gtk_scintilla_signals[ZOOM] = g_signal_new("zoom",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, zoom),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	_gtk_scintilla_signals[HOT_SPOT_CLICK] = g_signal_new("hot-spot-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, hot_spot_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[HOT_SPOT_DOUBLE_CLICK] = g_signal_new("hot-spot-double-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, hot_spot_double_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[CALL_TIP_CLICK] = g_signal_new("call-tip-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, call_tip_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_INT);

	_gtk_scintilla_signals[AUTO_COMPLETION_SELECTION] = g_signal_new("auto-completion-selection",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_selection),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,1,
			G_TYPE_STRING);

	_gtk_scintilla_signals[INDICATOR_CLICK] = g_signal_new("indicator-click",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, indicator_click),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[INDICATOR_RELEASE] = g_signal_new("indicator-release",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, indicator_release),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,2,
			G_TYPE_INT, 
			G_TYPE_INT);

	_gtk_scintilla_signals[AUTO_COMPLETION_CANCELLED] = g_signal_new("auto-completion-cancelled",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_cancelled),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);

	_gtk_scintilla_signals[AUTO_COMPLETION_CHAR_DELETED] = g_signal_new("auto-completion-char-deleted",
			G_OBJECT_CLASS_TYPE (object_class),
			G_SIGNAL_RUN_FIRST,
			G_STRUCT_OFFSET (GtkScintillaClass, auto_completion_char_deleted),
			NULL, NULL,
			g_cclosure_marshal_VOID__VOID,
			G_TYPE_NONE,0);
}

void gtk_scintilla_forward_signals(GtkScintilla *sci, 
									struct SCNotification *notification)
{
    switch (notification->nmhdr.code) {
        case SCN_STYLENEEDED:
        {
			gint start = gtk_scintilla_get_end_styled(sci);
			start = gtk_scintilla_line_from_position(sci, start);
			start = gtk_scintilla_position_from_line(sci, start); 
            g_signal_emit (sci,
                           _gtk_scintilla_signals[STYLE_NEEDED], 0,
                           start,
                           (gint) notification->position);
            break;
        }
        case SCN_UPDATEUI:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[UPDATE_UI], 0);
            gtk_scintilla_update_line_numbers(sci);
            break;
        case SCN_CHARADDED:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[CHAR_ADDED], 0,
                           (gint) notification->ch);
            break;
        case SCN_SAVEPOINTREACHED:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[SAVE_POINT_REACHED], 0);
            break;
        case SCN_SAVEPOINTLEFT:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[SAVE_POINT_LEFT], 0);
            break;
        case SCN_MODIFYATTEMPTRO:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[MODIFY_ATTEMPT_RO], 0);
            break;
        case SCN_KEY:
            pass_throug_key (sci,
                             (gint) notification->ch,
                             (gint) notification->modifiers);
            g_signal_emit (sci,
                           _gtk_scintilla_signals[KEY], 0,
                           (gint) notification->ch,
                           (gint) notification->modifiers);
            break;
        case SCN_DOUBLECLICK:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[DOUBLE_CLICK], 0,
                           (gint) notification->position,
                           (gint) notification->line);
            break;
        case SCN_MODIFIED:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[MODIFIED], 0,
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
            g_signal_emit (sci,
                           _gtk_scintilla_signals[MACRO_RECORD], 0,
                           (gint) notification->message,
                           (gulong) notification->wParam,
                           (glong) notification->lParam);
            break;
        case SCN_MARGINCLICK:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[MARGIN_CLICK], 0,
                           (gint) notification->modifiers,
                           (gint) notification->position,
                           (gint) notification->margin);
            break;
        case SCN_NEEDSHOWN:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[NEED_SHOWN], 0,
                           (gint) notification->position,
                           (gint) notification->length);
            break;
        case SCN_PAINTED:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[PAINTED], 0);
            break;
        case SCN_USERLISTSELECTION:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[USER_LIST_SELECTION], 0,
                           (gint) notification->listType,
                           (gchar *) notification->text);
            break;
        case SCN_URIDROPPED:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[URI_DROPPED], 0,
                           (gchar *) notification->text);
            break;
        case SCN_DWELLSTART:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[DWELL_START], 0,
                           (gint) notification->position);
            break;
        case SCN_DWELLEND:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[DWELL_END], 0,
                           (gint) notification->position);
            break;
        case SCN_ZOOM:
            g_signal_emit (sci,
                           _gtk_scintilla_signals[ZOOM], 0);
            break;
        default:
            /*g_warning ("GtkScintilla2: Notification code %d not handled!\n",
                       (gint) notification->nmhdr.code);*/
            break;
    }
}
