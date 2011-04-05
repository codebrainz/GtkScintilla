/*
 * style-properties.c
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

#include <gtk/gtk.h>
#include "gtkscintilla.h"
#include "style-properties.h"

void _gtk_scintilla_class_install_style_properties(GtkScintillaClass *klass)
{
	GParamSpec *pspec;
	GtkWidgetClass *widget_class = GTK_WIDGET_CLASS(klass);

	pspec = g_param_spec_boxed("selection-bg-color",
				"Selection backgound color",
				"Color which will be used for the background of the selection.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_uint("selection-bg-alpha",
				"Selection background alpha",
				"Translucency of the selection background, where 255 "
				"(GTK_SCINTILLA_ALPHA_TRANSPARENT) is completely "
				"transparent and 0 (GTK_SCINTILLA_ALPHA_OPAQUE) is "
				"completely opaque.  A value of 255 "
				"(GTK_SCINTILLA_ALPHA_NOALPHA) is opaque and uses code "
				"that is not alpha-aware and may be faster.",
				0, 256, 256,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("selection-fg-color",
				"Selection foreground color",
				"Color which will be used for the text of the selection.  "
				"The default is to use the syntax highlighting colors "
				"rather than explicitely setting one.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boolean("current-line-highlight-enabled",
				"Enable highlighting of the current line.",
				"When this is enabled, the background color and the "
				"alpha of the background color will be applied to the "
				"line where the cursor is.",
				TRUE,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("current-line-bg-color",
				"Background color of the current line",
				"When current-line-highlight-enabled is TRUE, this "
				"style property sets the background color of the line "
				"where the cursor is.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_uint("current-line-bg-alpha",
				"Current line background alpha",
				"Translucency of the current line's background color, "
				"where 255 (GTK_SCINTILLA_ALPHA_TRANSPARENT) is "
				"completely transparent and 0 "
				"(GTK_SCINTILLA_ALPHA_OPAQUE) is completely opaque.  "
				"A value of 255 (GTK_SCINTILLA_ALPHA_NOALPHA) is opaque "
				"and uses code that is not alpha-aware and may be faster.",
				0, 256, 256,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("brace-good-bg-color",
				"Good brace background color",
				"The color to use for the background of braces which "
				"are being highlighted and have a proper match.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("brace-good-fg-color",
				"Good brace foreground color",
				"The color to use for the foreground/text of braces "
				"which are being highlighted and have a proper match.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_string("brace-good-font-desc",
				"Font description string for good brace",
				"This the Pango font description string used to set "
				"the font for a good brace which has a proper match.",
				NULL,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("brace-bad-bg-color",
				"Bad brace background color",
				"The color to use for the background of braces which "
				"are being highlighted and do not have a proper match.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_boxed("brace-bad-fg-color",
				"Bad brace foreground color",
				"The color to use for the foreground/text of braces which "
				"are being highlighted and do not have a proper match.",
				GDK_TYPE_COLOR,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);

	pspec = g_param_spec_string("brace-bad-font-desc",
				"Font description string for bad brace",
				"This the Pango font description string used to set "
				"the font for a bad brace which does not have a "
				"proper match.",
				NULL,
				G_PARAM_READABLE);
	gtk_widget_class_install_style_property(widget_class, pspec);
}
