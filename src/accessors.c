#include "gtkscintilla.h"
#include "properties.h"

void gtk_scintilla_get_property(GObject *object, guint property_id, GValue *value, GParamSpec *pspec)
{
	GtkScintilla *self = GTK_SCINTILLA(object);

	switch (property_id)
	{
		case PROP_LENGTH:
			g_value_set_int(value, gtk_scintilla_get_length(self));
			break;
		case PROP_CURRENT_POS:
			g_value_set_int(value, gtk_scintilla_get_current_pos(self));
			break;
		case PROP_ANCHOR:
			g_value_set_int(value, gtk_scintilla_get_anchor(self));
			break;
		case PROP_UNDO_COLLECTION:
			g_value_set_boolean(value, gtk_scintilla_get_undo_collection(self));
			break;
		case PROP_VIEW_WHITE_SPACE:
			g_value_set_int(value, gtk_scintilla_get_view_white_space(self));
			break;
		case PROP_END_STYLED:
			g_value_set_int(value, gtk_scintilla_get_end_styled(self));
			break;
		case PROP_EOL_MODE:
			g_value_set_int(value, gtk_scintilla_get_eol_mode(self));
			break;
		case PROP_BUFFERED_DRAW:
			g_value_set_boolean(value, gtk_scintilla_get_buffered_draw(self));
			break;
		case PROP_TAB_WIDTH:
			g_value_set_int(value, gtk_scintilla_get_tab_width(self));
			break;
		case PROP_SEL_ALPHA:
			g_value_set_int(value, gtk_scintilla_get_sel_alpha(self));
			break;
		case PROP_SEL_EOL_FILLED:
			g_value_set_boolean(value, gtk_scintilla_get_sel_eol_filled(self));
			break;
		case PROP_CARET_PERIOD:
			g_value_set_int(value, gtk_scintilla_get_caret_period(self));
			break;
		case PROP_WHITESPACE_SIZE:
			g_value_set_int(value, gtk_scintilla_get_whitespace_size(self));
			break;
		case PROP_STYLE_BITS:
			g_value_set_int(value, gtk_scintilla_get_style_bits(self));
			break;
		case PROP_MAX_LINE_STATE:
			g_value_set_int(value, gtk_scintilla_get_max_line_state(self));
			break;
		case PROP_CARET_LINE_VISIBLE:
			g_value_set_boolean(value, gtk_scintilla_get_caret_line_visible(self));
			break;
		case PROP_CARET_LINE_BACK:
			g_value_set_int(value, gtk_scintilla_get_caret_line_back(self));
			break;
		case PROP_INDENT:
			g_value_set_int(value, gtk_scintilla_get_indent(self));
			break;
		case PROP_USE_TABS:
			g_value_set_boolean(value, gtk_scintilla_get_use_tabs(self));
			break;
		case PROP_H_SCROLL_BAR:
			g_value_set_boolean(value, gtk_scintilla_get_h_scroll_bar(self));
			break;
		case PROP_INDENTATION_GUIDES:
			g_value_set_int(value, gtk_scintilla_get_indentation_guides(self));
			break;
		case PROP_HIGHLIGHT_GUIDE:
			g_value_set_int(value, gtk_scintilla_get_highlight_guide(self));
			break;
		case PROP_CODE_PAGE:
			g_value_set_int(value, gtk_scintilla_get_code_page(self));
			break;
		case PROP_CARET_FORE:
			g_value_set_int(value, gtk_scintilla_get_caret_fore(self));
			break;
		case PROP_USE_PALETTE:
			g_value_set_boolean(value, gtk_scintilla_get_use_palette(self));
			break;
		case PROP_READ_ONLY:
			g_value_set_boolean(value, gtk_scintilla_get_read_only(self));
			break;
		case PROP_SELECTION_START:
			g_value_set_int(value, gtk_scintilla_get_selection_start(self));
			break;
		case PROP_SELECTION_END:
			g_value_set_int(value, gtk_scintilla_get_selection_end(self));
			break;
		case PROP_PRINT_MAGNIFICATION:
			g_value_set_int(value, gtk_scintilla_get_print_magnification(self));
			break;
		case PROP_PRINT_COLOUR_MODE:
			g_value_set_int(value, gtk_scintilla_get_print_colour_mode(self));
			break;
		case PROP_FIRST_VISIBLE_LINE:
			g_value_set_int(value, gtk_scintilla_get_first_visible_line(self));
			break;
		case PROP_LINE_COUNT:
			g_value_set_int(value, gtk_scintilla_get_line_count(self));
			break;
		case PROP_MARGIN_LEFT:
			g_value_set_int(value, gtk_scintilla_get_margin_left(self));
			break;
		case PROP_MARGIN_RIGHT:
			g_value_set_int(value, gtk_scintilla_get_margin_right(self));
			break;
		case PROP_MODIFY:
			g_value_set_boolean(value, gtk_scintilla_get_modify(self));
			break;
		case PROP_TEXT_LENGTH:
			g_value_set_int(value, gtk_scintilla_get_text_length(self));
			break;
		case PROP_DIRECT_FUNCTION:
			g_value_set_int(value, gtk_scintilla_get_direct_function(self));
			break;
		case PROP_DIRECT_POINTER:
			g_value_set_int(value, gtk_scintilla_get_direct_pointer(self));
			break;
		case PROP_OVERTYPE:
			g_value_set_boolean(value, gtk_scintilla_get_overtype(self));
			break;
		case PROP_CARET_WIDTH:
			g_value_set_int(value, gtk_scintilla_get_caret_width(self));
			break;
		case PROP_TARGET_START:
			g_value_set_int(value, gtk_scintilla_get_target_start(self));
			break;
		case PROP_TARGET_END:
			g_value_set_int(value, gtk_scintilla_get_target_end(self));
			break;
		case PROP_SEARCH_FLAGS:
			g_value_set_int(value, gtk_scintilla_get_search_flags(self));
			break;
		case PROP_TAB_INDENTS:
			g_value_set_boolean(value, gtk_scintilla_get_tab_indents(self));
			break;
		case PROP_BACKSPACE_UNINDENTS:
			g_value_set_boolean(value, gtk_scintilla_get_backspace_unindents(self));
			break;
		case PROP_MOUSE_DWELL_TIME:
			g_value_set_int(value, gtk_scintilla_get_mouse_dwell_time(self));
			break;
		case PROP_WRAP_MODE:
			g_value_set_int(value, gtk_scintilla_get_wrap_mode(self));
			break;
		case PROP_WRAP_VISUAL_FLAGS:
			g_value_set_int(value, gtk_scintilla_get_wrap_visual_flags(self));
			break;
		case PROP_WRAP_VISUAL_FLAGS_LOCATION:
			g_value_set_int(value, gtk_scintilla_get_wrap_visual_flags_location(self));
			break;
		case PROP_WRAP_START_INDENT:
			g_value_set_int(value, gtk_scintilla_get_wrap_start_indent(self));
			break;
		case PROP_WRAP_INDENT_MODE:
			g_value_set_int(value, gtk_scintilla_get_wrap_indent_mode(self));
			break;
		case PROP_LAYOUT_CACHE:
			g_value_set_int(value, gtk_scintilla_get_layout_cache(self));
			break;
		case PROP_SCROLL_WIDTH:
			g_value_set_int(value, gtk_scintilla_get_scroll_width(self));
			break;
		case PROP_SCROLL_WIDTH_TRACKING:
			g_value_set_boolean(value, gtk_scintilla_get_scroll_width_tracking(self));
			break;
		case PROP_END_AT_LAST_LINE:
			g_value_set_boolean(value, gtk_scintilla_get_end_at_last_line(self));
			break;
		case PROP_VSCROLLBAR:
			g_value_set_boolean(value, gtk_scintilla_get_vscrollbar(self));
			break;
		case PROP_TWO_PHASE_DRAW:
			g_value_set_boolean(value, gtk_scintilla_get_two_phase_draw(self));
			break;
		case PROP_FONT_QUALITY:
			g_value_set_int(value, gtk_scintilla_get_font_quality(self));
			break;
		case PROP_MULTI_PASTE:
			g_value_set_int(value, gtk_scintilla_get_multi_paste(self));
			break;
		case PROP_VIEW_EOL:
			g_value_set_boolean(value, gtk_scintilla_get_view_eol(self));
			break;
		case PROP_DOC_POINTER:
			g_value_set_int(value, gtk_scintilla_get_doc_pointer(self));
			break;
		case PROP_EDGE_COLUMN:
			g_value_set_int(value, gtk_scintilla_get_edge_column(self));
			break;
		case PROP_EDGE_MODE:
			g_value_set_int(value, gtk_scintilla_get_edge_mode(self));
			break;
		case PROP_EDGE_COLOUR:
			g_value_set_int(value, gtk_scintilla_get_edge_colour(self));
			break;
		case PROP_ZOOM:
			g_value_set_int(value, gtk_scintilla_get_zoom(self));
			break;
		case PROP_MOD_EVENT_MASK:
			g_value_set_int(value, gtk_scintilla_get_mod_event_mask(self));
			break;
		case PROP_FOCUS:
			g_value_set_boolean(value, gtk_scintilla_get_focus(self));
			break;
		case PROP_STATUS:
			g_value_set_int(value, gtk_scintilla_get_status(self));
			break;
		case PROP_MOUSE_DOWN_CAPTURES:
			g_value_set_boolean(value, gtk_scintilla_get_mouse_down_captures(self));
			break;
		case PROP_CURSOR:
			g_value_set_int(value, gtk_scintilla_get_cursor(self));
			break;
		case PROP_CONTROL_CHAR_SYMBOL:
			g_value_set_int(value, gtk_scintilla_get_control_char_symbol(self));
			break;
		case PROP_X_OFFSET:
			g_value_set_int(value, gtk_scintilla_get_x_offset(self));
			break;
		case PROP_PRINT_WRAP_MODE:
			g_value_set_int(value, gtk_scintilla_get_print_wrap_mode(self));
			break;
		case PROP_HOTSPOT_ACTIVE_FORE:
			g_value_set_int(value, gtk_scintilla_get_hotspot_active_fore(self));
			break;
		case PROP_HOTSPOT_ACTIVE_BACK:
			g_value_set_int(value, gtk_scintilla_get_hotspot_active_back(self));
			break;
		case PROP_HOTSPOT_ACTIVE_UNDERLINE:
			g_value_set_boolean(value, gtk_scintilla_get_hotspot_active_underline(self));
			break;
		case PROP_HOTSPOT_SINGLE_LINE:
			g_value_set_boolean(value, gtk_scintilla_get_hotspot_single_line(self));
			break;
		case PROP_SELECTION_MODE:
			g_value_set_int(value, gtk_scintilla_get_selection_mode(self));
			break;
		case PROP_CARET_STICKY:
			g_value_set_int(value, gtk_scintilla_get_caret_sticky(self));
			break;
		case PROP_PASTE_CONVERT_ENDINGS:
			g_value_set_boolean(value, gtk_scintilla_get_paste_convert_endings(self));
			break;
		case PROP_CARET_LINE_BACK_ALPHA:
			g_value_set_int(value, gtk_scintilla_get_caret_line_back_alpha(self));
			break;
		case PROP_CARET_STYLE:
			g_value_set_int(value, gtk_scintilla_get_caret_style(self));
			break;
		case PROP_INDICATOR_CURRENT:
			g_value_set_int(value, gtk_scintilla_get_indicator_current(self));
			break;
		case PROP_INDICATOR_VALUE:
			g_value_set_int(value, gtk_scintilla_get_indicator_value(self));
			break;
		case PROP_POSITION_CACHE:
			g_value_set_int(value, gtk_scintilla_get_position_cache(self));
			break;
		case PROP_CHARACTER_POINTER:
			g_value_set_int(value, gtk_scintilla_get_character_pointer(self));
			break;
		case PROP_KEYS_UNICODE:
			g_value_set_boolean(value, gtk_scintilla_get_keys_unicode(self));
			break;
		case PROP_EXTRA_ASCENT:
			g_value_set_int(value, gtk_scintilla_get_extra_ascent(self));
			break;
		case PROP_EXTRA_DESCENT:
			g_value_set_int(value, gtk_scintilla_get_extra_descent(self));
			break;
		case PROP_MULTIPLE_SELECTION:
			g_value_set_boolean(value, gtk_scintilla_get_multiple_selection(self));
			break;
		case PROP_ADDITIONAL_SELECTION_TYPING:
			g_value_set_boolean(value, gtk_scintilla_get_additional_selection_typing(self));
			break;
		case PROP_ADDITIONAL_CARETS_BLINK:
			g_value_set_boolean(value, gtk_scintilla_get_additional_carets_blink(self));
			break;
		case PROP_ADDITIONAL_CARETS_VISIBLE:
			g_value_set_boolean(value, gtk_scintilla_get_additional_carets_visible(self));
			break;
		case PROP_SELECTIONS:
			g_value_set_int(value, gtk_scintilla_get_selections(self));
			break;
		case PROP_MAIN_SELECTION:
			g_value_set_int(value, gtk_scintilla_get_main_selection(self));
			break;
		case PROP_RECTANGULAR_SELECTION_CARET:
			g_value_set_int(value, gtk_scintilla_get_rectangular_selection_caret(self));
			break;
		case PROP_RECTANGULAR_SELECTION_ANCHOR:
			g_value_set_int(value, gtk_scintilla_get_rectangular_selection_anchor(self));
			break;
		case PROP_RECTANGULAR_SELECTION_CARET_VIRTUAL_SPACE:
			g_value_set_int(value, gtk_scintilla_get_rectangular_selection_caret_virtual_space(self));
			break;
		case PROP_RECTANGULAR_SELECTION_ANCHOR_VIRTUAL_SPACE:
			g_value_set_int(value, gtk_scintilla_get_rectangular_selection_anchor_virtual_space(self));
			break;
		case PROP_VIRTUAL_SPACE_OPTIONS:
			g_value_set_int(value, gtk_scintilla_get_virtual_space_options(self));
			break;
		case PROP_RECTANGULAR_SELECTION_MODIFIER:
			g_value_set_int(value, gtk_scintilla_get_rectangular_selection_modifier(self));
			break;
		case PROP_ADDITIONAL_SEL_ALPHA:
			g_value_set_int(value, gtk_scintilla_get_additional_sel_alpha(self));
			break;
		case PROP_ADDITIONAL_CARET_FORE:
			g_value_set_int(value, gtk_scintilla_get_additional_caret_fore(self));
			break;
		case PROP_LEXER:
			g_value_set_int(value, gtk_scintilla_get_lexer(self));
			break;
		case PROP_LEXER_LANGUAGE:
			g_value_set_string(value, gtk_scintilla_get_lexer_language(self));
			break;
		case PROP_STYLE_BITS_NEEDED:
			g_value_set_int(value, gtk_scintilla_get_style_bits_needed(self));
			break;
    case PROP_CASE_SENSITIVE_BEHAVIOUR:
      g_value_set_enum(value, gtk_scintilla_get_case_sensitive_behaviour(self));
      break;
		/* non-scintilla properties */
		case PROP_LINE_NUMBERS_VISIBLE:
			g_value_set_boolean(value, gtk_scintilla_get_line_numbers_visible(self));
			break;
		case PROP_FOLDING_ENABLED:
			g_value_set_boolean(value, gtk_scintilla_get_folding_enabled(self));
			break;
		case PROP_FOLD_STYLE:
			g_value_set_enum(value, gtk_scintilla_get_fold_style(self));
			break;
		case PROP_FONT:
			g_value_set_static_string(value, gtk_scintilla_get_font(self));
			break;

		default:
			G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec);
			break;
	}
}

void gtk_scintilla_set_property(GObject *object, guint property_id, const GValue *value, GParamSpec *pspec)
{
	GtkScintilla *self = GTK_SCINTILLA(object);

	switch (property_id)
	{
		case PROP_UNDO_COLLECTION:
			gtk_scintilla_set_undo_collection(self, g_value_get_boolean(value));
			break;
		case PROP_VIEW_WHITE_SPACE:
			gtk_scintilla_set_view_white_space(self, g_value_get_int(value));
			break;
		case PROP_ANCHOR:
			gtk_scintilla_set_anchor(self, g_value_get_int(value));
			break;
		case PROP_EOL_MODE:
			gtk_scintilla_set_eol_mode(self, g_value_get_int(value));
			break;
		case PROP_BUFFERED_DRAW:
			gtk_scintilla_set_buffered_draw(self, g_value_get_boolean(value));
			break;
		case PROP_TAB_WIDTH:
			gtk_scintilla_set_tab_width(self, g_value_get_int(value));
			break;
		case PROP_CODE_PAGE:
			gtk_scintilla_set_code_page(self, g_value_get_int(value));
			break;
		case PROP_USE_PALETTE:
			gtk_scintilla_set_use_palette(self, g_value_get_boolean(value));
			break;
		case PROP_SEL_ALPHA:
			gtk_scintilla_set_sel_alpha(self, g_value_get_int(value));
			break;
		case PROP_SEL_EOL_FILLED:
			gtk_scintilla_set_sel_eol_filled(self, g_value_get_boolean(value));
			break;
		case PROP_CARET_FORE:
			gtk_scintilla_set_caret_fore(self, g_value_get_int(value));
			break;
		case PROP_CARET_PERIOD:
			gtk_scintilla_set_caret_period(self, g_value_get_int(value));
			break;
		case PROP_WORD_CHARS:
			gtk_scintilla_set_word_chars(self, g_value_get_string(value));
			break;
		case PROP_WHITESPACE_SIZE:
			gtk_scintilla_set_whitespace_size(self, g_value_get_int(value));
			break;
		case PROP_STYLE_BITS:
			gtk_scintilla_set_style_bits(self, g_value_get_int(value));
			break;
		case PROP_CARET_LINE_VISIBLE:
			gtk_scintilla_set_caret_line_visible(self, g_value_get_boolean(value));
			break;
		case PROP_CARET_LINE_BACK:
			gtk_scintilla_set_caret_line_back(self, g_value_get_int(value));
			break;
		case PROP_INDENT:
			gtk_scintilla_set_indent(self, g_value_get_int(value));
			break;
		case PROP_USE_TABS:
			gtk_scintilla_set_use_tabs(self, g_value_get_boolean(value));
			break;
		case PROP_H_SCROLL_BAR:
			gtk_scintilla_set_h_scroll_bar(self, g_value_get_boolean(value));
			break;
		case PROP_INDENTATION_GUIDES:
			gtk_scintilla_set_indentation_guides(self, g_value_get_int(value));
			break;
		case PROP_HIGHLIGHT_GUIDE:
			gtk_scintilla_set_highlight_guide(self, g_value_get_int(value));
			break;
		case PROP_CURRENT_POS:
			gtk_scintilla_set_current_pos(self, g_value_get_int(value));
			break;
		case PROP_SELECTION_START:
			gtk_scintilla_set_selection_start(self, g_value_get_int(value));
			break;
		case PROP_SELECTION_END:
			gtk_scintilla_set_selection_end(self, g_value_get_int(value));
			break;
		case PROP_PRINT_MAGNIFICATION:
			gtk_scintilla_set_print_magnification(self, g_value_get_int(value));
			break;
		case PROP_PRINT_COLOUR_MODE:
			gtk_scintilla_set_print_colour_mode(self, g_value_get_int(value));
			break;
		case PROP_MARGIN_LEFT:
			gtk_scintilla_set_margin_left(self, g_value_get_int(value));
			break;
		case PROP_MARGIN_RIGHT:
			gtk_scintilla_set_margin_right(self, g_value_get_int(value));
			break;
		case PROP_READ_ONLY:
			gtk_scintilla_set_read_only(self, g_value_get_boolean(value));
			break;
		case PROP_OVERTYPE:
			gtk_scintilla_set_overtype(self, g_value_get_boolean(value));
			break;
		case PROP_CARET_WIDTH:
			gtk_scintilla_set_caret_width(self, g_value_get_int(value));
			break;
		case PROP_TARGET_START:
			gtk_scintilla_set_target_start(self, g_value_get_int(value));
			break;
		case PROP_TARGET_END:
			gtk_scintilla_set_target_end(self, g_value_get_int(value));
			break;
		case PROP_SEARCH_FLAGS:
			gtk_scintilla_set_search_flags(self, g_value_get_int(value));
			break;
		case PROP_FOLD_FLAGS:
			gtk_scintilla_set_fold_flags(self, g_value_get_int(value));
			break;
		case PROP_TAB_INDENTS:
			gtk_scintilla_set_tab_indents(self, g_value_get_boolean(value));
			break;
		case PROP_BACKSPACE_UNINDENTS:
			gtk_scintilla_set_backspace_unindents(self, g_value_get_boolean(value));
			break;
		case PROP_MOUSE_DWELL_TIME:
			gtk_scintilla_set_mouse_dwell_time(self, g_value_get_int(value));
			break;
		case PROP_WRAP_MODE:
			gtk_scintilla_set_wrap_mode(self, g_value_get_int(value));
			break;
		case PROP_WRAP_VISUAL_FLAGS:
			gtk_scintilla_set_wrap_visual_flags(self, g_value_get_int(value));
			break;
		case PROP_WRAP_VISUAL_FLAGS_LOCATION:
			gtk_scintilla_set_wrap_visual_flags_location(self, g_value_get_int(value));
			break;
		case PROP_WRAP_START_INDENT:
			gtk_scintilla_set_wrap_start_indent(self, g_value_get_int(value));
			break;
		case PROP_WRAP_INDENT_MODE:
			gtk_scintilla_set_wrap_indent_mode(self, g_value_get_int(value));
			break;
		case PROP_LAYOUT_CACHE:
			gtk_scintilla_set_layout_cache(self, g_value_get_int(value));
			break;
		case PROP_SCROLL_WIDTH:
			gtk_scintilla_set_scroll_width(self, g_value_get_int(value));
			break;
		case PROP_SCROLL_WIDTH_TRACKING:
			gtk_scintilla_set_scroll_width_tracking(self, g_value_get_boolean(value));
			break;
		case PROP_END_AT_LAST_LINE:
			gtk_scintilla_set_end_at_last_line(self, g_value_get_boolean(value));
			break;
		case PROP_VSCROLLBAR:
			gtk_scintilla_set_vscrollbar(self, g_value_get_boolean(value));
			break;
		case PROP_TWO_PHASE_DRAW:
			gtk_scintilla_set_two_phase_draw(self, g_value_get_boolean(value));
			break;
		case PROP_FONT_QUALITY:
			gtk_scintilla_set_font_quality(self, g_value_get_int(value));
			break;
		case PROP_FIRST_VISIBLE_LINE:
			gtk_scintilla_set_first_visible_line(self, g_value_get_int(value));
			break;
		case PROP_MULTI_PASTE:
			gtk_scintilla_set_multi_paste(self, g_value_get_int(value));
			break;
		case PROP_VIEW_EOL:
			gtk_scintilla_set_view_eol(self, g_value_get_boolean(value));
			break;
		case PROP_DOC_POINTER:
			gtk_scintilla_set_doc_pointer(self, g_value_get_int(value));
			break;
		case PROP_MOD_EVENT_MASK:
			gtk_scintilla_set_mod_event_mask(self, g_value_get_int(value));
			break;
		case PROP_EDGE_COLUMN:
			gtk_scintilla_set_edge_column(self, g_value_get_int(value));
			break;
		case PROP_EDGE_MODE:
			gtk_scintilla_set_edge_mode(self, g_value_get_int(value));
			break;
		case PROP_EDGE_COLOUR:
			gtk_scintilla_set_edge_colour(self, g_value_get_int(value));
			break;
		case PROP_ZOOM:
			gtk_scintilla_set_zoom(self, g_value_get_int(value));
			break;
		case PROP_FOCUS:
			gtk_scintilla_set_focus(self, g_value_get_boolean(value));
			break;
		case PROP_STATUS:
			gtk_scintilla_set_status(self, g_value_get_int(value));
			break;
		case PROP_MOUSE_DOWN_CAPTURES:
			gtk_scintilla_set_mouse_down_captures(self, g_value_get_boolean(value));
			break;
		case PROP_CURSOR:
			gtk_scintilla_set_cursor(self, g_value_get_int(value));
			break;
		case PROP_CONTROL_CHAR_SYMBOL:
			gtk_scintilla_set_control_char_symbol(self, g_value_get_int(value));
			break;
		case PROP_X_OFFSET:
			gtk_scintilla_set_x_offset(self, g_value_get_int(value));
			break;
		case PROP_PRINT_WRAP_MODE:
			gtk_scintilla_set_print_wrap_mode(self, g_value_get_int(value));
			break;
		case PROP_HOTSPOT_ACTIVE_UNDERLINE:
			gtk_scintilla_set_hotspot_active_underline(self, g_value_get_boolean(value));
			break;
		case PROP_HOTSPOT_SINGLE_LINE:
			gtk_scintilla_set_hotspot_single_line(self, g_value_get_boolean(value));
			break;
		case PROP_SELECTION_MODE:
			gtk_scintilla_set_selection_mode(self, g_value_get_int(value));
			break;
		case PROP_WHITESPACE_CHARS:
			gtk_scintilla_set_whitespace_chars(self, g_value_get_string(value));
			break;
		case PROP_CARET_STICKY:
			gtk_scintilla_set_caret_sticky(self, g_value_get_int(value));
			break;
		case PROP_PASTE_CONVERT_ENDINGS:
			gtk_scintilla_set_paste_convert_endings(self, g_value_get_boolean(value));
			break;
		case PROP_CARET_LINE_BACK_ALPHA:
			gtk_scintilla_set_caret_line_back_alpha(self, g_value_get_int(value));
			break;
		case PROP_CARET_STYLE:
			gtk_scintilla_set_caret_style(self, g_value_get_int(value));
			break;
		case PROP_INDICATOR_CURRENT:
			gtk_scintilla_set_indicator_current(self, g_value_get_int(value));
			break;
		case PROP_INDICATOR_VALUE:
			gtk_scintilla_set_indicator_value(self, g_value_get_int(value));
			break;
		case PROP_POSITION_CACHE:
			gtk_scintilla_set_position_cache(self, g_value_get_int(value));
			break;
		case PROP_KEYS_UNICODE:
			gtk_scintilla_set_keys_unicode(self, g_value_get_boolean(value));
			break;
		case PROP_EXTRA_ASCENT:
			gtk_scintilla_set_extra_ascent(self, g_value_get_int(value));
			break;
		case PROP_EXTRA_DESCENT:
			gtk_scintilla_set_extra_descent(self, g_value_get_int(value));
			break;
		case PROP_MULTIPLE_SELECTION:
			gtk_scintilla_set_multiple_selection(self, g_value_get_boolean(value));
			break;
		case PROP_ADDITIONAL_SELECTION_TYPING:
			gtk_scintilla_set_additional_selection_typing(self, g_value_get_boolean(value));
			break;
		case PROP_ADDITIONAL_CARETS_BLINK:
			gtk_scintilla_set_additional_carets_blink(self, g_value_get_boolean(value));
			break;
		case PROP_ADDITIONAL_CARETS_VISIBLE:
			gtk_scintilla_set_additional_carets_visible(self, g_value_get_boolean(value));
			break;
		case PROP_MAIN_SELECTION:
			gtk_scintilla_set_main_selection(self, g_value_get_int(value));
			break;
		case PROP_RECTANGULAR_SELECTION_CARET:
			gtk_scintilla_set_rectangular_selection_caret(self, g_value_get_int(value));
			break;
		case PROP_RECTANGULAR_SELECTION_ANCHOR:
			gtk_scintilla_set_rectangular_selection_anchor(self, g_value_get_int(value));
			break;
		case PROP_RECTANGULAR_SELECTION_CARET_VIRTUAL_SPACE:
			gtk_scintilla_set_rectangular_selection_caret_virtual_space(self, g_value_get_int(value));
			break;
		case PROP_RECTANGULAR_SELECTION_ANCHOR_VIRTUAL_SPACE:
			gtk_scintilla_set_rectangular_selection_anchor_virtual_space(self, g_value_get_int(value));
			break;
		case PROP_VIRTUAL_SPACE_OPTIONS:
			gtk_scintilla_set_virtual_space_options(self, g_value_get_int(value));
			break;
		case PROP_RECTANGULAR_SELECTION_MODIFIER:
			gtk_scintilla_set_rectangular_selection_modifier(self, g_value_get_int(value));
			break;
		case PROP_ADDITIONAL_SEL_FORE:
			gtk_scintilla_set_additional_sel_fore(self, g_value_get_int(value));
			break;
		case PROP_ADDITIONAL_SEL_BACK:
			gtk_scintilla_set_additional_sel_back(self, g_value_get_int(value));
			break;
		case PROP_ADDITIONAL_SEL_ALPHA:
			gtk_scintilla_set_additional_sel_alpha(self, g_value_get_int(value));
			break;
		case PROP_ADDITIONAL_CARET_FORE:
			gtk_scintilla_set_additional_caret_fore(self, g_value_get_int(value));
			break;
		case PROP_LEXER:
			gtk_scintilla_set_lexer(self, g_value_get_int(value));
			break;
		case PROP_LEXER_LANGUAGE:
			gtk_scintilla_set_lexer_language(self, g_value_get_string(value));
			break;
		case PROP_TEXT:
			gtk_scintilla_set_text(self, g_value_get_string(value));
			break;
    case PROP_CASE_SENSITIVE_BEHAVIOUR:
      gtk_scintilla_set_case_sensitive_behaviour(self, g_value_get_enum(value));
      break;
			/* non-scintilla properties */
		case PROP_LINE_NUMBERS_VISIBLE:
			gtk_scintilla_set_line_numbers_visible(self, g_value_get_boolean(value));
			break;
		case PROP_FOLDING_ENABLED:
			gtk_scintilla_set_folding_enabled(self, g_value_get_boolean(value));
			break;
		case PROP_FOLD_STYLE:
			gtk_scintilla_set_fold_style(self, g_value_get_enum(value));
			break;
		case PROP_FONT:
			gtk_scintilla_set_font(self, g_value_get_string(value));
			break;
		default:
			G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec);
			break;
	}
}
