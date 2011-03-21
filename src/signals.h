/*
 * signals.h
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

#ifndef GTK_SCINTILLA_SIGNALS_H
#define GTK_SCINTILLA_SIGNALS_H

#include "gtkscintilla.h"

enum {
	STYLE_NEEDED,
	CHAR_ADDED,
	SAVE_POINT_REACHED,
	SAVE_POINT_LEFT,
	MODIFY_ATTEMPT_RO,
	KEY,
	DOUBLE_CLICK,
	UPDATE_UI,
	MODIFIED,
	/* todo: make into separate signals */
	/*
	TEXT_INSERTED,
	TEXT_DELETED,
	STYLE_CHANGED,
	FOLD_CHANGED,
	MARKER_CHANGED,
	BEFORE_INSERT,
	BEFORE_DELETE,
	INDICATOR_CHANGED,
	LINE_STATE_CHANGED,
	LEXER_STATE_CHANGED,
	MARGIN_CHANGED,
	ANNOTATION_CHANGED,
	*/
	MACRO_RECORD,
	MARGIN_CLICK,
	NEED_SHOWN,
	PAINTED,
	USER_LIST_SELECTION,
	URI_DROPPED,
	DWELL_START,
	DWELL_END,
	ZOOM,
	HOT_SPOT_CLICK,
	HOT_SPOT_DOUBLE_CLICK,
	CALL_TIP_CLICK,
	AUTO_COMPLETION_SELECTION,
	INDICATOR_CLICK,
	INDICATOR_RELEASE,
	AUTO_COMPLETION_CANCELLED,
	AUTO_COMPLETION_CHAR_DELETED,
	LAST_SIGNAL
};

extern guint _gtk_scintilla_signals[];

void gtk_scintilla_class_install_signals(GtkScintillaClass *klass);
void gtk_scintilla_forward_signals(GtkScintilla *sci, 
									struct SCNotification *notif);

#endif /* #ifndef GTK_SCINTILLA_SIGNALS_H */
