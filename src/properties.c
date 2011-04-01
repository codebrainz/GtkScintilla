/*
 * properties.c
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
#include "properties.h"

void gtk_scintilla_class_install_properties(GtkScintillaClass *klass)
{
	GParamSpec *pspec;
	GObjectClass *object_class = G_OBJECT_CLASS(klass);

	pspec = g_param_spec_int("length",
			"Length",
			"Get the length property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_LENGTH, pspec);
	pspec = g_param_spec_int("current-pos",
			"Current pos",
			"Get/set the current-pos property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CURRENT_POS, pspec);
	pspec = g_param_spec_int("anchor",
			"Anchor",
			"Get/set the anchor property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ANCHOR, pspec);
	pspec = g_param_spec_boolean("undo-collection",
			"Undo collection",
			"Get/set the undo-collection property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_UNDO_COLLECTION, pspec);
	pspec = g_param_spec_int("view-white-space",
			"View white space",
			"Get/set the view-white-space property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_VIEW_WHITE_SPACE, pspec);
	pspec = g_param_spec_int("end-styled",
			"End styled",
			"Get the end-styled property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_END_STYLED, pspec);
	pspec = g_param_spec_int("eol-mode",
			"Eol mode",
			"Get/set the eol-mode property",
			G_MININT, G_MAXINT, GTK_SCINTILLA_END_OF_LINE_LF,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EOL_MODE, pspec);
	pspec = g_param_spec_boolean("buffered-draw",
			"Buffered draw",
			"Get/set the buffered-draw property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_BUFFERED_DRAW, pspec);
	pspec = g_param_spec_int("tab-width",
			"Tab width",
			"Get/set the tab-width property",
			G_MININT, G_MAXINT, 8,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TAB_WIDTH, pspec);
	pspec = g_param_spec_int("sel-alpha",
			"Sel alpha",
			"Get/set the sel-alpha property",
			G_MININT, G_MAXINT, 256,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SEL_ALPHA, pspec);
	pspec = g_param_spec_boolean("sel-eol-filled",
			"Sel eol filled",
			"Get/set the sel-eol-filled property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SEL_EOL_FILLED, pspec);
	pspec = g_param_spec_int("caret-period",
			"Caret period",
			"Get/set the caret-period property",
			G_MININT, G_MAXINT, 685,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_PERIOD, pspec);
	pspec = g_param_spec_int("whitespace-size",
			"Whitespace size",
			"Get/set the whitespace-size property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WHITESPACE_SIZE, pspec);
	pspec = g_param_spec_int("style-bits",
			"Style bits",
			"Get/set the style-bits property",
			G_MININT, G_MAXINT, 5,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_STYLE_BITS, pspec);
	pspec = g_param_spec_int("max-line-state",
			"Max line state",
			"Get the max-line-state property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_MAX_LINE_STATE, pspec);
	pspec = g_param_spec_boolean("caret-line-visible",
			"Caret line visible",
			"Get/set the caret-line-visible property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_LINE_VISIBLE, pspec);
	pspec = g_param_spec_int("caret-line-back",
			"Caret line back",
			"Get/set the caret-line-back property",
			G_MININT, G_MAXINT, 65535,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_LINE_BACK, pspec);
	pspec = g_param_spec_int("indent",
			"Indent",
			"Get/set the indent property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_INDENT, pspec);
	pspec = g_param_spec_boolean("use-tabs",
			"Use tabs",
			"Get/set the use-tabs property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_USE_TABS, pspec);
	pspec = g_param_spec_boolean("h-scroll-bar",
			"H scroll bar",
			"Get/set the h-scroll-bar property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_H_SCROLL_BAR, pspec);
	pspec = g_param_spec_int("indentation-guides",
			"Indentation guides",
			"Get/set the indentation-guides property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_INDENTATION_GUIDES, pspec);
	pspec = g_param_spec_int("highlight-guide",
			"Highlight guide",
			"Get/set the highlight-guide property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_HIGHLIGHT_GUIDE, pspec);
	pspec = g_param_spec_int("code-page",
			"Code page",
			"Get/set the code-page property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CODE_PAGE, pspec);
	pspec = g_param_spec_int("caret-fore",
			"Caret fore",
			"Get/set the caret-fore property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_FORE, pspec);
	pspec = g_param_spec_boolean("use-palette",
			"Use palette",
			"Get/set the use-palette property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_USE_PALETTE, pspec);
	pspec = g_param_spec_boolean("read-only",
			"Read only",
			"Get/set the read-only property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_READ_ONLY, pspec);
	pspec = g_param_spec_int("selection-start",
			"Selection start",
			"Get/set the selection-start property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SELECTION_START, pspec);
	pspec = g_param_spec_int("selection-end",
			"Selection end",
			"Get/set the selection-end property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SELECTION_END, pspec);
	pspec = g_param_spec_int("print-magnification",
			"Print magnification",
			"Get/set the print-magnification property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_PRINT_MAGNIFICATION, pspec);
	pspec = g_param_spec_int("print-colour-mode",
			"Print colour mode",
			"Get/set the print-colour-mode property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_PRINT_COLOUR_MODE, pspec);
	pspec = g_param_spec_int("first-visible-line",
			"First visible line",
			"Get/set the first-visible-line property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_FIRST_VISIBLE_LINE, pspec);
	pspec = g_param_spec_int("line-count",
			"Line count",
			"Get the line-count property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_LINE_COUNT, pspec);
	pspec = g_param_spec_int("margin-left",
			"Margin left",
			"Get/set the margin-left property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MARGIN_LEFT, pspec);
	pspec = g_param_spec_int("margin-right",
			"Margin right",
			"Get/set the margin-right property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MARGIN_RIGHT, pspec);
	pspec = g_param_spec_boolean("modify",
			"Modify",
			"Get the modify property", FALSE,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_MODIFY, pspec);
	pspec = g_param_spec_int("text-length",
			"Text length",
			"Get the text-length property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_TEXT_LENGTH, pspec);
	pspec = g_param_spec_int("direct-function",
			"Direct function",
			"Get the direct-function property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_DIRECT_FUNCTION, pspec);
	pspec = g_param_spec_int("direct-pointer",
			"Direct pointer",
			"Get the direct-pointer property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_DIRECT_POINTER, pspec);
	pspec = g_param_spec_boolean("overtype",
			"Overtype",
			"Get/set the overtype property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_OVERTYPE, pspec);
	pspec = g_param_spec_int("caret-width",
			"Caret width",
			"Get/set the caret-width property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_WIDTH, pspec);
	pspec = g_param_spec_int("target-start",
			"Target start",
			"Get/set the target-start property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TARGET_START, pspec);
	pspec = g_param_spec_int("target-end",
			"Target end",
			"Get/set the target-end property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TARGET_END, pspec);
	pspec = g_param_spec_int("search-flags",
			"Search flags",
			"Get/set the search-flags property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SEARCH_FLAGS, pspec);
	pspec = g_param_spec_boolean("tab-indents",
			"Tab indents",
			"Get/set the tab-indents property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TAB_INDENTS, pspec);
	pspec = g_param_spec_boolean("backspace-unindents",
			"Backspace unindents",
			"Get/set the backspace-unindents property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_BACKSPACE_UNINDENTS, pspec);
	pspec = g_param_spec_int("mouse-dwell-time",
			"Mouse dwell time",
			"Get/set the mouse-dwell-time property",
			G_MININT, G_MAXINT, 10000000,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MOUSE_DWELL_TIME, pspec);
	pspec = g_param_spec_int("wrap-mode",
			"Wrap mode",
			"Get/set the wrap-mode property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WRAP_MODE, pspec);
	pspec = g_param_spec_int("wrap-visual-flags",
			"Wrap visual flags",
			"Get/set the wrap-visual-flags property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WRAP_VISUAL_FLAGS, pspec);
	pspec = g_param_spec_int("wrap-visual-flags-location",
			"Wrap visual flags location",
			"Get/set the wrap-visual-flags-location property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WRAP_VISUAL_FLAGS_LOCATION, pspec);
	pspec = g_param_spec_int("wrap-start-indent",
			"Wrap start indent",
			"Get/set the wrap-start-indent property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WRAP_START_INDENT, pspec);
	pspec = g_param_spec_int("wrap-indent-mode",
			"Wrap indent mode",
			"Get/set the wrap-indent-mode property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_WRAP_INDENT_MODE, pspec);
	pspec = g_param_spec_int("layout-cache",
			"Layout cache",
			"Get/set the layout-cache property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_LAYOUT_CACHE, pspec);
	pspec = g_param_spec_int("scroll-width",
			"Scroll width",
			"Get/set the scroll-width property",
			G_MININT, G_MAXINT, 2000,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SCROLL_WIDTH, pspec);
	pspec = g_param_spec_boolean("scroll-width-tracking",
			"Scroll width tracking",
			"Get/set the scroll-width-tracking property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SCROLL_WIDTH_TRACKING, pspec);
	pspec = g_param_spec_boolean("end-at-last-line",
			"End at last line",
			"Get/set the end-at-last-line property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_END_AT_LAST_LINE, pspec);
	pspec = g_param_spec_boolean("vscrollbar",
			"Vscrollbar",
			"Get/set the vscrollbar property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_VSCROLLBAR, pspec);
	pspec = g_param_spec_boolean("two-phase-draw",
			"Two phase draw",
			"Get/set the two-phase-draw property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TWO_PHASE_DRAW, pspec);
	pspec = g_param_spec_int("font-quality",
			"Font quality",
			"Get/set the font-quality property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_FONT_QUALITY, pspec);
	pspec = g_param_spec_int("multi-paste",
			"Multi paste",
			"Get/set the multi-paste property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MULTI_PASTE, pspec);
	pspec = g_param_spec_boolean("view-eol",
			"View eol",
			"Get/set the view-eol property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_VIEW_EOL, pspec);
	pspec = g_param_spec_int("doc-pointer",
			"Doc pointer",
			"Get/set the doc-pointer property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_DOC_POINTER, pspec);
	pspec = g_param_spec_int("edge-column",
			"Edge column",
			"Get/set the edge-column property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EDGE_COLUMN, pspec);
	pspec = g_param_spec_int("edge-mode",
			"Edge mode",
			"Get/set the edge-mode property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EDGE_MODE, pspec);
	pspec = g_param_spec_int("edge-colour",
			"Edge colour",
			"Get/set the edge-colour property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EDGE_COLOUR, pspec);
	pspec = g_param_spec_int("zoom",
			"Zoom",
			"Get/set the zoom property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ZOOM, pspec);
	pspec = g_param_spec_int("mod-event-mask",
			"Mod event mask",
			"Get/set the mod-event-mask property",
			G_MININT, G_MAXINT, 1048575,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MOD_EVENT_MASK, pspec);
	pspec = g_param_spec_boolean("focus",
			"Focus",
			"Get/set the focus property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_FOCUS, pspec);
	pspec = g_param_spec_int("status",
			"Status",
			"Get/set the status property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_STATUS, pspec);
	pspec = g_param_spec_boolean("mouse-down-captures",
			"Mouse down captures",
			"Get/set the mouse-down-captures property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MOUSE_DOWN_CAPTURES, pspec);
	pspec = g_param_spec_int("cursor",
			"Cursor",
			"Get/set the cursor property",
			G_MININT, G_MAXINT, -1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CURSOR, pspec);
	pspec = g_param_spec_int("control-char-symbol",
			"Control char symbol",
			"Get/set the control-char-symbol property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CONTROL_CHAR_SYMBOL, pspec);
	pspec = g_param_spec_int("x-offset",
			"X offset",
			"Get/set the x-offset property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_X_OFFSET, pspec);
	pspec = g_param_spec_int("print-wrap-mode",
			"Print wrap mode",
			"Get/set the print-wrap-mode property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_PRINT_WRAP_MODE, pspec);
	pspec = g_param_spec_int("hotspot-active-fore",
			"Hotspot active fore",
			"Get the hotspot-active-fore property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_HOTSPOT_ACTIVE_FORE, pspec);
	pspec = g_param_spec_int("hotspot-active-back",
			"Hotspot active back",
			"Get the hotspot-active-back property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_HOTSPOT_ACTIVE_BACK, pspec);
	pspec = g_param_spec_boolean("hotspot-active-underline",
			"Hotspot active underline",
			"Get/set the hotspot-active-underline property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_HOTSPOT_ACTIVE_UNDERLINE, pspec);
	pspec = g_param_spec_boolean("hotspot-single-line",
			"Hotspot single line",
			"Get/set the hotspot-single-line property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_HOTSPOT_SINGLE_LINE, pspec);
	pspec = g_param_spec_int("selection-mode",
			"Selection mode",
			"Get/set the selection-mode property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_SELECTION_MODE, pspec);
	pspec = g_param_spec_int("caret-sticky",
			"Caret sticky",
			"Get/set the caret-sticky property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_STICKY, pspec);
	pspec = g_param_spec_boolean("paste-convert-endings",
			"Paste convert endings",
			"Get/set the paste-convert-endings property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_PASTE_CONVERT_ENDINGS, pspec);
	pspec = g_param_spec_int("caret-line-back-alpha",
			"Caret line back alpha",
			"Get/set the caret-line-back-alpha property",
			G_MININT, G_MAXINT, 256,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_LINE_BACK_ALPHA, pspec);
	pspec = g_param_spec_int("caret-style",
			"Caret style",
			"Get/set the caret-style property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_CARET_STYLE, pspec);
	pspec = g_param_spec_int("indicator-current",
			"Indicator current",
			"Get/set the indicator-current property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_INDICATOR_CURRENT, pspec);
	pspec = g_param_spec_int("indicator-value",
			"Indicator value",
			"Get/set the indicator-value property",
			G_MININT, G_MAXINT, 1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_INDICATOR_VALUE, pspec);
	pspec = g_param_spec_int("position-cache",
			"Position cache",
			"Get/set the position-cache property",
			G_MININT, G_MAXINT, 1024,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_POSITION_CACHE, pspec);
	pspec = g_param_spec_int("character-pointer",
			"Character pointer",
			"Get the character-pointer property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_CHARACTER_POINTER, pspec);
	pspec = g_param_spec_boolean("keys-unicode",
			"Keys unicode",
			"Get/set the keys-unicode property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_KEYS_UNICODE, pspec);
	pspec = g_param_spec_int("extra-ascent",
			"Extra ascent",
			"Get/set the extra-ascent property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EXTRA_ASCENT, pspec);
	pspec = g_param_spec_int("extra-descent",
			"Extra descent",
			"Get/set the extra-descent property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_EXTRA_DESCENT, pspec);
	pspec = g_param_spec_boolean("multiple-selection",
			"Multiple selection",
			"Get/set the multiple-selection property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MULTIPLE_SELECTION, pspec);
	pspec = g_param_spec_boolean("additional-selection-typing",
			"Additional selection typing",
			"Get/set the additional-selection-typing property", FALSE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_SELECTION_TYPING, pspec);
	pspec = g_param_spec_boolean("additional-carets-blink",
			"Additional carets blink",
			"Get/set the additional-carets-blink property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_CARETS_BLINK, pspec);
	pspec = g_param_spec_boolean("additional-carets-visible",
			"Additional carets visible",
			"Get/set the additional-carets-visible property", TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_CARETS_VISIBLE, pspec);
	pspec = g_param_spec_int("selections",
			"Selections",
			"Get the selections property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_SELECTIONS, pspec);
	pspec = g_param_spec_int("main-selection",
			"Main selection",
			"Get/set the main-selection property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_MAIN_SELECTION, pspec);
	pspec = g_param_spec_int("rectangular-selection-caret",
			"Rectangular selection caret",
			"Get/set the rectangular-selection-caret property",
			G_MININT, G_MAXINT, -1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_RECTANGULAR_SELECTION_CARET, pspec);
	pspec = g_param_spec_int("rectangular-selection-anchor",
			"Rectangular selection anchor",
			"Get/set the rectangular-selection-anchor property",
			G_MININT, G_MAXINT, -1,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_RECTANGULAR_SELECTION_ANCHOR, pspec);
	pspec = g_param_spec_int("rectangular-selection-caret-virtual-space",
			"Rectangular selection caret virtual space",
			"Get/set the rectangular-selection-caret-virtual-space property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_RECTANGULAR_SELECTION_CARET_VIRTUAL_SPACE, pspec);
	pspec = g_param_spec_int("rectangular-selection-anchor-virtual-space",
			"Rectangular selection anchor virtual space",
			"Get/set the rectangular-selection-anchor-virtual-space property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_RECTANGULAR_SELECTION_ANCHOR_VIRTUAL_SPACE, pspec);
	pspec = g_param_spec_int("virtual-space-options",
			"Virtual space options",
			"Get/set the virtual-space-options property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_VIRTUAL_SPACE_OPTIONS, pspec);
	pspec = g_param_spec_int("rectangular-selection-modifier",
			"Rectangular selection modifier",
			"Get/set the rectangular-selection-modifier property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_RECTANGULAR_SELECTION_MODIFIER, pspec);
	pspec = g_param_spec_int("additional-sel-alpha",
			"Additional sel alpha",
			"Get/set the additional-sel-alpha property",
			G_MININT, G_MAXINT, 256,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_SEL_ALPHA, pspec);
	pspec = g_param_spec_int("additional-caret-fore",
			"Additional caret fore",
			"Get/set the additional-caret-fore property",
			G_MININT, G_MAXINT, 8355711,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_CARET_FORE, pspec);
	pspec = g_param_spec_int("lexer",
			"Lexer",
			"Get/set the lexer by lexer number (ex. GTK_SCINTILLA_LEXER_CPP)",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_LEXER, pspec);
	pspec = g_param_spec_int("style-bits-needed",
			"Style bits needed",
			"Get the style-bits-needed property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_READABLE);
	g_object_class_install_property(object_class, PROP_STYLE_BITS_NEEDED, pspec);
	pspec = g_param_spec_string("word-chars",
			"Word chars",
			"Set the word-chars property",
			NULL,
			G_PARAM_WRITABLE);
	g_object_class_install_property(object_class, PROP_WORD_CHARS, pspec);
	pspec = g_param_spec_string("text",
			"Text",
			"Set the text property",
			NULL,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_TEXT, pspec);
	pspec = g_param_spec_int("fold-flags",
			"Fold flags",
			"Set the fold-flags property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_WRITABLE);
	g_object_class_install_property(object_class, PROP_FOLD_FLAGS, pspec);
	pspec = g_param_spec_string("whitespace-chars",
			"Whitespace chars",
			"Set the whitespace-chars property",
			NULL,
			G_PARAM_WRITABLE);
	g_object_class_install_property(object_class, PROP_WHITESPACE_CHARS, pspec);
	pspec = g_param_spec_int("additional-sel-fore",
			"Additional sel fore",
			"Set the additional-sel-fore property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_WRITABLE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_SEL_FORE, pspec);
	pspec = g_param_spec_int("additional-sel-back",
			"Additional sel back",
			"Set the additional-sel-back property",
			G_MININT, G_MAXINT, 0,
			G_PARAM_WRITABLE);
	g_object_class_install_property(object_class, PROP_ADDITIONAL_SEL_BACK, pspec);
	pspec = g_param_spec_string("lexer-language",
			"Lexer language",
			"Get/set the lexer using it's name (ex. cpp, python)",
			NULL,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_LEXER_LANGUAGE, pspec);

	/* non-scintilla properties */

	pspec = g_param_spec_boolean("line-numbers-visible",
			"Line number visibility",
			"Get/set whether the line number margin is visible",
			TRUE,
			G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_LINE_NUMBERS_VISIBLE, pspec);

	/*
	pspec = g_param_spec_string("font",
				"Font description",
				"Gets/sets the font, as a string compatible with pango_font_description_from_string().",
				NULL,
				G_PARAM_READWRITE);
	g_object_class_install_property(object_class, PROP_FONT, pspec);
	*/
}
