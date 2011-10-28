/*
 * style.h
 *
 * Copyright 2011 Matthew Brush <mbrush@codebrainz.ca>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

#ifndef GTK_SCINTILLA_STYLE_H
#define GTK_SCINTILLA_STYLE_H

#include <gtk/gtk.h>

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
