/*
 * properties.h
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

#ifndef GTK_SCINTILLA_PROPERTIES_H
#define GTK_SCINTILLA_PROPERTIES_H

#include "gtkscintilla.h"

enum
{
	PROP_0,
	PROP_LENGTH,
	PROP_CURRENT_POS,
	PROP_ANCHOR,
	PROP_UNDO_COLLECTION,
	PROP_VIEW_WHITE_SPACE,
	PROP_END_STYLED,
	PROP_EOL_MODE,
	PROP_BUFFERED_DRAW,
	PROP_TAB_WIDTH,
	PROP_CODE_PAGE,
	PROP_USE_PALETTE,
	PROP_SEL_ALPHA,
	PROP_SEL_EOL_FILLED,
	PROP_CARET_FORE,
	PROP_CARET_PERIOD,
	PROP_WORD_CHARS,
	PROP_WHITESPACE_SIZE,
	PROP_STYLE_BITS,
	PROP_MAX_LINE_STATE,
	PROP_CARET_LINE_VISIBLE,
	PROP_CARET_LINE_BACK,
	PROP_INDENT,
	PROP_USE_TABS,
	PROP_H_SCROLL_BAR,
	PROP_INDENTATION_GUIDES,
	PROP_HIGHLIGHT_GUIDE,
	PROP_READ_ONLY,
	PROP_SELECTION_START,
	PROP_SELECTION_END,
	PROP_PRINT_MAGNIFICATION,
	PROP_PRINT_COLOUR_MODE,
	PROP_FIRST_VISIBLE_LINE,
	PROP_LINE_COUNT,
	PROP_MARGIN_LEFT,
	PROP_MARGIN_RIGHT,
	PROP_MODIFY,
	PROP_TEXT,
	PROP_TEXT_LENGTH,
	PROP_DIRECT_FUNCTION,
	PROP_DIRECT_POINTER,
	PROP_OVERTYPE,
	PROP_CARET_WIDTH,
	PROP_TARGET_START,
	PROP_TARGET_END,
	PROP_SEARCH_FLAGS,
	PROP_FOLD_FLAGS,
	PROP_TAB_INDENTS,
	PROP_BACKSPACE_UNINDENTS,
	PROP_MOUSE_DWELL_TIME,
	PROP_WRAP_MODE,
	PROP_WRAP_VISUAL_FLAGS,
	PROP_WRAP_VISUAL_FLAGS_LOCATION,
	PROP_WRAP_START_INDENT,
	PROP_WRAP_INDENT_MODE,
	PROP_LAYOUT_CACHE,
	PROP_SCROLL_WIDTH,
	PROP_SCROLL_WIDTH_TRACKING,
	PROP_END_AT_LAST_LINE,
	PROP_VSCROLLBAR,
	PROP_TWO_PHASE_DRAW,
	PROP_FONT_QUALITY,
	PROP_MULTI_PASTE,
	PROP_VIEW_EOL,
	PROP_DOC_POINTER,
	PROP_MOD_EVENT_MASK,
	PROP_EDGE_COLUMN,
	PROP_EDGE_MODE,
	PROP_EDGE_COLOUR,
	PROP_ZOOM,
	PROP_FOCUS,
	PROP_STATUS,
	PROP_MOUSE_DOWN_CAPTURES,
	PROP_CURSOR,
	PROP_CONTROL_CHAR_SYMBOL,
	PROP_X_OFFSET,
	PROP_PRINT_WRAP_MODE,
	PROP_HOTSPOT_ACTIVE_FORE,
	PROP_HOTSPOT_ACTIVE_BACK,
	PROP_HOTSPOT_ACTIVE_UNDERLINE,
	PROP_HOTSPOT_SINGLE_LINE,
	PROP_SELECTION_MODE,
	PROP_WHITESPACE_CHARS,
	PROP_CARET_STICKY,
	PROP_PASTE_CONVERT_ENDINGS,
	PROP_CARET_LINE_BACK_ALPHA,
	PROP_CARET_STYLE,
	PROP_INDICATOR_CURRENT,
	PROP_INDICATOR_VALUE,
	PROP_POSITION_CACHE,
	PROP_CHARACTER_POINTER,
	PROP_KEYS_UNICODE,
	PROP_EXTRA_ASCENT,
	PROP_EXTRA_DESCENT,
	PROP_MULTIPLE_SELECTION,
	PROP_ADDITIONAL_SELECTION_TYPING,
	PROP_ADDITIONAL_CARETS_BLINK,
	PROP_ADDITIONAL_CARETS_VISIBLE,
	PROP_SELECTIONS,
	PROP_MAIN_SELECTION,
	PROP_RECTANGULAR_SELECTION_CARET,
	PROP_RECTANGULAR_SELECTION_ANCHOR,
	PROP_RECTANGULAR_SELECTION_CARET_VIRTUAL_SPACE,
	PROP_RECTANGULAR_SELECTION_ANCHOR_VIRTUAL_SPACE,
	PROP_VIRTUAL_SPACE_OPTIONS,
	PROP_RECTANGULAR_SELECTION_MODIFIER,
	PROP_ADDITIONAL_SEL_FORE,
	PROP_ADDITIONAL_SEL_BACK,
	PROP_ADDITIONAL_SEL_ALPHA,
	PROP_ADDITIONAL_CARET_FORE,
	PROP_LEXER,
	PROP_LEXER_LANGUAGE,
	PROP_STYLE_BITS_NEEDED,
  PROP_CASE_SENSITIVE_BEHAVIOUR,
	/* non-scintilla properties */
	PROP_LINE_NUMBERS_VISIBLE,
	PROP_FOLDING_ENABLED,
	PROP_FOLD_STYLE,
	PROP_FONT,
	/* default styles */
	PROP_DEFAULT_STYLE,
	PROP_LINE_NUMBER_STYLE,
	PROP_BRACE_LIGHT_STYLE,
	PROP_BRACE_BAD_STYLE,
	PROP_CONTROL_CHAR_STYLE,
	PROP_INDENT_GUIDE_STYLE,
	PROP_CALL_TIP_STYLE
};

void _gtk_scintilla_class_install_properties(GtkScintillaClass *klass);

#endif /* #ifndef GTK_SCINTILLA_PROPERTIES_H */
