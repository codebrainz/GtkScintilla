#include <gtk/gtk.h>
#include "gtkscintilla.h"

gint gtk_scintilla_get_length (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2006, 0, 0);
}
gint gtk_scintilla_get_current_pos (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2008, 0, 0);
}
gint gtk_scintilla_get_anchor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2009, 0, 0);
}
void gtk_scintilla_redo (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2011, 0, 0);
}
void gtk_scintilla_set_undo_collection (GtkScintilla *sci, gboolean collectUndo) {
	scintilla_send_message(SCINTILLA(sci), 2012, (uptr_t)collectUndo, 0);
}
void gtk_scintilla_select_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2013, 0, 0);
}
gboolean gtk_scintilla_can_redo (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2016, 0, 0);
}
gint gtk_scintilla_marker_line_from_handle (GtkScintilla *sci, gint handle) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2017, (uptr_t)handle, 0);
}
void gtk_scintilla_marker_delete_handle (GtkScintilla *sci, gint handle) {
	scintilla_send_message(SCINTILLA(sci), 2018, (uptr_t)handle, 0);
}
gboolean gtk_scintilla_get_undo_collection (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2019, 0, 0);
}
gint gtk_scintilla_get_view_white_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2020, 0, 0);
}
void gtk_scintilla_set_view_white_space (GtkScintilla *sci, gint viewWS) {
	scintilla_send_message(SCINTILLA(sci), 2021, (uptr_t)viewWS, 0);
}
gint gtk_scintilla_position_from_point (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2022, (uptr_t)x, (sptr_t)y);
}
gint gtk_scintilla_position_from_point_close (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2023, (uptr_t)x, (sptr_t)y);
}
void gtk_scintilla_goto_line (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci), 2024, (uptr_t)line, 0);
}
void gtk_scintilla_goto_pos (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2025, (uptr_t)pos, 0);
}
void gtk_scintilla_set_anchor (GtkScintilla *sci, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci), 2026, (uptr_t)posAnchor, 0);
}
gint gtk_scintilla_get_cur_line (GtkScintilla *sci, gint length, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2027, (uptr_t)length, (sptr_t)text);
}
gint gtk_scintilla_get_end_styled (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2028, 0, 0);
}
void gtk_scintilla_convert_eols (GtkScintilla *sci, gint eolMode) {
	scintilla_send_message(SCINTILLA(sci), 2029, (uptr_t)eolMode, 0);
}
gint gtk_scintilla_get_eol_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2030, 0, 0);
}
void gtk_scintilla_set_eol_mode (GtkScintilla *sci, gint eolMode) {
	scintilla_send_message(SCINTILLA(sci), 2031, (uptr_t)eolMode, 0);
}
void gtk_scintilla_start_styling (GtkScintilla *sci, gint pos, gint mask) {
	scintilla_send_message(SCINTILLA(sci), 2032, (uptr_t)pos, (sptr_t)mask);
}
void gtk_scintilla_set_styling (GtkScintilla *sci, gint length, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2033, (uptr_t)length, (sptr_t)style);
}
gboolean gtk_scintilla_get_buffered_draw (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2034, 0, 0);
}
void gtk_scintilla_set_buffered_draw (GtkScintilla *sci, gboolean buffered) {
	scintilla_send_message(SCINTILLA(sci), 2035, (uptr_t)buffered, 0);
}
void gtk_scintilla_set_tab_width (GtkScintilla *sci, gint tabWidth) {
	scintilla_send_message(SCINTILLA(sci), 2036, (uptr_t)tabWidth, 0);
}
gint gtk_scintilla_get_tab_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2121, 0, 0);
}
void gtk_scintilla_set_code_page (GtkScintilla *sci, gint codePage) {
	scintilla_send_message(SCINTILLA(sci), 2037, (uptr_t)codePage, 0);
}
void gtk_scintilla_set_use_palette (GtkScintilla *sci, gboolean usePalette) {
	scintilla_send_message(SCINTILLA(sci), 2039, (uptr_t)usePalette, 0);
}
void gtk_scintilla_marker_define (GtkScintilla *sci, gint markerNumber, gint markerSymbol) {
	scintilla_send_message(SCINTILLA(sci), 2040, (uptr_t)markerNumber, (sptr_t)markerSymbol);
}
void gtk_scintilla_marker_set_fore (GtkScintilla *sci, gint markerNumber, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2041, (uptr_t)markerNumber, (sptr_t)fore);
}
void gtk_scintilla_marker_set_back (GtkScintilla *sci, gint markerNumber, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2042, (uptr_t)markerNumber, (sptr_t)back);
}
gint gtk_scintilla_marker_add (GtkScintilla *sci, gint line, gint markerNumber) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2043, (uptr_t)line, (sptr_t)markerNumber);
}
void gtk_scintilla_marker_delete (GtkScintilla *sci, gint line, gint markerNumber) {
	scintilla_send_message(SCINTILLA(sci), 2044, (uptr_t)line, (sptr_t)markerNumber);
}
void gtk_scintilla_marker_delete_all (GtkScintilla *sci, gint markerNumber) {
	scintilla_send_message(SCINTILLA(sci), 2045, (uptr_t)markerNumber, 0);
}
gint gtk_scintilla_marker_get (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2046, (uptr_t)line, 0);
}
gint gtk_scintilla_marker_next (GtkScintilla *sci, gint lineStart, gint markerMask) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2047, (uptr_t)lineStart, (sptr_t)markerMask);
}
gint gtk_scintilla_marker_previous (GtkScintilla *sci, gint lineStart, gint markerMask) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2048, (uptr_t)lineStart, (sptr_t)markerMask);
}
void gtk_scintilla_marker_define_pixmap (GtkScintilla *sci, gint markerNumber, const gchar *pixmap) {
	scintilla_send_message(SCINTILLA(sci), 2049, (uptr_t)markerNumber, (sptr_t)pixmap);
}
void gtk_scintilla_marker_add_set (GtkScintilla *sci, gint line, gint set) {
	scintilla_send_message(SCINTILLA(sci), 2466, (uptr_t)line, (sptr_t)set);
}
void gtk_scintilla_marker_set_alpha (GtkScintilla *sci, gint markerNumber, gint alpha) {
	scintilla_send_message(SCINTILLA(sci), 2476, (uptr_t)markerNumber, (sptr_t)alpha);
}
void gtk_scintilla_set_margin_type(GtkScintilla *sci, gint margin, GtkScintillaMarginType marginType) {
	scintilla_send_message(SCINTILLA(sci), SCI_SETMARGINTYPEN, (uptr_t)margin, (sptr_t)marginType);
}
gint gtk_scintilla_get_margin_type_n (GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2241, (uptr_t)margin, 0);
}
void gtk_scintilla_set_margin_width_n (GtkScintilla *sci, gint margin, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2242, (uptr_t)margin, (sptr_t)pixelWidth);
}
gint gtk_scintilla_get_margin_width_n (GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2243, (uptr_t)margin, 0);
}
void gtk_scintilla_set_margin_mask(GtkScintilla *sci, gint margin, gint mask) {
	scintilla_send_message(SCINTILLA(sci), 2244, (uptr_t)margin, (sptr_t)mask);
}
gint gtk_scintilla_get_margin_mask(GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2245, (uptr_t)margin, 0);
}
void gtk_scintilla_set_margin_sensitive (GtkScintilla *sci, gint margin, gboolean sensitive) {
	scintilla_send_message(SCINTILLA(sci), 2246, (uptr_t)margin, (sptr_t)sensitive);
}
gboolean gtk_scintilla_get_margin_sensitive (GtkScintilla *sci, gint margin) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2247, (uptr_t)margin, 0);
}
void gtk_scintilla_set_sel_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2067, (uptr_t)useSetting, (sptr_t)fore);
}
void gtk_scintilla_set_sel_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2068, (uptr_t)useSetting, (sptr_t)back);
}
gint gtk_scintilla_get_sel_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2477, 0, 0);
}
void gtk_scintilla_set_sel_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci), 2478, (uptr_t)alpha, 0);
}
gboolean gtk_scintilla_get_sel_eol_filled (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2479, 0, 0);
}
void gtk_scintilla_set_sel_eol_filled (GtkScintilla *sci, gboolean filled) {
	scintilla_send_message(SCINTILLA(sci), 2480, (uptr_t)filled, 0);
}
void gtk_scintilla_set_caret_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2069, (uptr_t)fore, 0);
}
void gtk_scintilla_assign_cmd_key (GtkScintilla *sci, gulong km, gint msg) {
	scintilla_send_message(SCINTILLA(sci), 2070, (uptr_t)km, (sptr_t)msg);
}
void gtk_scintilla_clear_cmd_key (GtkScintilla *sci, gulong km) {
	scintilla_send_message(SCINTILLA(sci), 2071, (uptr_t)km, 0);
}
void gtk_scintilla_clear_all_cmd_keys (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2072, 0, 0);
}
void gtk_scintilla_set_styling_ex (GtkScintilla *sci, gint length, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci), 2073, (uptr_t)length, (sptr_t)styles);
}
gint gtk_scintilla_get_caret_period (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2075, 0, 0);
}
void gtk_scintilla_set_caret_period (GtkScintilla *sci, gint periodMilliseconds) {
	scintilla_send_message(SCINTILLA(sci), 2076, (uptr_t)periodMilliseconds, 0);
}
void gtk_scintilla_set_word_chars (GtkScintilla *sci, const gchar *characters) {
	scintilla_send_message(SCINTILLA(sci), 2077, 0, (sptr_t)characters);
}
void gtk_scintilla_begin_undo_action (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2078, 0, 0);
}
void gtk_scintilla_end_undo_action (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2079, 0, 0);
}
void gtk_scintilla_indic_set_style (GtkScintilla *sci, gint indic, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2080, (uptr_t)indic, (sptr_t)style);
}
gint gtk_scintilla_indic_get_style (GtkScintilla *sci, gint indic) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2081, (uptr_t)indic, 0);
}
void gtk_scintilla_indic_set_fore (GtkScintilla *sci, gint indic, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2082, (uptr_t)indic, (sptr_t)fore);
}
gint gtk_scintilla_indic_get_fore (GtkScintilla *sci, gint indic) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2083, (uptr_t)indic, 0);
}
void gtk_scintilla_indic_set_under (GtkScintilla *sci, gint indic, gboolean under) {
	scintilla_send_message(SCINTILLA(sci), 2510, (uptr_t)indic, (sptr_t)under);
}
gboolean gtk_scintilla_indic_get_under (GtkScintilla *sci, gint indic) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2511, (uptr_t)indic, 0);
}
void gtk_scintilla_set_whitespace_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2084, (uptr_t)useSetting, (sptr_t)fore);
}
void gtk_scintilla_set_whitespace_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2085, (uptr_t)useSetting, (sptr_t)back);
}
void gtk_scintilla_set_whitespace_size (GtkScintilla *sci, gint size) {
	scintilla_send_message(SCINTILLA(sci), 2086, (uptr_t)size, 0);
}
gint gtk_scintilla_get_whitespace_size (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2087, 0, 0);
}
void gtk_scintilla_set_line_state (GtkScintilla *sci, gint line, gint state) {
	scintilla_send_message(SCINTILLA(sci), 2092, (uptr_t)line, (sptr_t)state);
}
gint gtk_scintilla_get_line_state (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2093, (uptr_t)line, 0);
}
gint gtk_scintilla_get_max_line_state (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2094, 0, 0);
}
gboolean gtk_scintilla_get_caret_line_visible (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2095, 0, 0);
}
void gtk_scintilla_set_caret_line_visible (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci), 2096, (uptr_t)show, 0);
}
gint gtk_scintilla_get_caret_line_back (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2097, 0, 0);
}
void gtk_scintilla_set_caret_line_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2098, (uptr_t)back, 0);
}
void gtk_scintilla_auto_completion_show (GtkScintilla *sci, gint lenEntered, const gchar *itemList) {
	scintilla_send_message(SCINTILLA(sci), 2100, (uptr_t)lenEntered, (sptr_t)itemList);
}
void gtk_scintilla_auto_completion_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2101, 0, 0);
}
gboolean gtk_scintilla_auto_completion_active (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2102, 0, 0);
}
gint gtk_scintilla_auto_completion_pos_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2103, 0, 0);
}
void gtk_scintilla_auto_completion_complete (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2104, 0, 0);
}
void gtk_scintilla_auto_completion_stops (GtkScintilla *sci, const gchar *characterSet) {
	scintilla_send_message(SCINTILLA(sci), 2105, 0, (sptr_t)characterSet);
}
void gtk_scintilla_auto_completion_set_separator (GtkScintilla *sci, gint separatorCharacter) {
	scintilla_send_message(SCINTILLA(sci), 2106, (uptr_t)separatorCharacter, 0);
}
gint gtk_scintilla_auto_completion_get_separator (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2107, 0, 0);
}
void gtk_scintilla_auto_completion_select (GtkScintilla *sci, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci), 2108, 0, (sptr_t)text);
}
void gtk_scintilla_auto_completion_set_cancel_at_start (GtkScintilla *sci, gboolean cancel) {
	scintilla_send_message(SCINTILLA(sci), 2110, (uptr_t)cancel, 0);
}
gboolean gtk_scintilla_auto_completion_get_cancel_at_start (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2111, 0, 0);
}
void gtk_scintilla_auto_completion_set_fill_ups (GtkScintilla *sci, const gchar *characterSet) {
	scintilla_send_message(SCINTILLA(sci), 2112, 0, (sptr_t)characterSet);
}
void gtk_scintilla_auto_completion_set_choose_single (GtkScintilla *sci, gboolean chooseSingle) {
	scintilla_send_message(SCINTILLA(sci), 2113, (uptr_t)chooseSingle, 0);
}
gboolean gtk_scintilla_auto_completion_get_choose_single (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2114, 0, 0);
}
void gtk_scintilla_auto_completion_set_ignore_case (GtkScintilla *sci, gboolean ignoreCase) {
	scintilla_send_message(SCINTILLA(sci), 2115, (uptr_t)ignoreCase, 0);
}
gboolean gtk_scintilla_auto_completion_get_ignore_case (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2116, 0, 0);
}
void gtk_scintilla_user_list_show (GtkScintilla *sci, gint listType, const gchar *itemList) {
	scintilla_send_message(SCINTILLA(sci), 2117, (uptr_t)listType, (sptr_t)itemList);
}
void gtk_scintilla_auto_completion_set_auto_hide (GtkScintilla *sci, gboolean autoHide) {
	scintilla_send_message(SCINTILLA(sci), 2118, (uptr_t)autoHide, 0);
}
gboolean gtk_scintilla_auto_completion_get_auto_hide (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2119, 0, 0);
}
void gtk_scintilla_auto_completion_set_drop_rest_of_word (GtkScintilla *sci, gboolean dropRestOfWord) {
	scintilla_send_message(SCINTILLA(sci), 2270, (uptr_t)dropRestOfWord, 0);
}
gboolean gtk_scintilla_auto_completion_get_drop_rest_of_word (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2271, 0, 0);
}
void gtk_scintilla_register_image (GtkScintilla *sci, gint type, const gchar *xpmData) {
	scintilla_send_message(SCINTILLA(sci), 2405, (uptr_t)type, (sptr_t)xpmData);
}
void gtk_scintilla_clear_registered_images (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2408, 0, 0);
}
gint gtk_scintilla_auto_completion_get_type_separator (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2285, 0, 0);
}
void gtk_scintilla_auto_completion_set_type_separator (GtkScintilla *sci, gint separatorCharacter) {
	scintilla_send_message(SCINTILLA(sci), 2286, (uptr_t)separatorCharacter, 0);
}
void gtk_scintilla_auto_completion_set_max_width (GtkScintilla *sci, gint characterCount) {
	scintilla_send_message(SCINTILLA(sci), 2208, (uptr_t)characterCount, 0);
}
gint gtk_scintilla_auto_completion_get_max_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2209, 0, 0);
}
void gtk_scintilla_auto_completion_set_max_height (GtkScintilla *sci, gint rowCount) {
	scintilla_send_message(SCINTILLA(sci), 2210, (uptr_t)rowCount, 0);
}
gint gtk_scintilla_auto_completion_get_max_height (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2211, 0, 0);
}
void gtk_scintilla_set_indent (GtkScintilla *sci, gint indentSize) {
	scintilla_send_message(SCINTILLA(sci), 2122, (uptr_t)indentSize, 0);
}
gint gtk_scintilla_get_indent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2123, 0, 0);
}
void gtk_scintilla_set_use_tabs (GtkScintilla *sci, gboolean useTabs) {
	scintilla_send_message(SCINTILLA(sci), 2124, (uptr_t)useTabs, 0);
}
gboolean gtk_scintilla_get_use_tabs (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2125, 0, 0);
}
void gtk_scintilla_set_line_indentation (GtkScintilla *sci, gint line, gint indentSize) {
	scintilla_send_message(SCINTILLA(sci), 2126, (uptr_t)line, (sptr_t)indentSize);
}
gint gtk_scintilla_get_line_indentation (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2127, (uptr_t)line, 0);
}
gint gtk_scintilla_get_line_indent_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2128, (uptr_t)line, 0);
}
gint gtk_scintilla_get_column (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2129, (uptr_t)pos, 0);
}
void gtk_scintilla_set_h_scroll_bar (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci), 2130, (uptr_t)show, 0);
}
gboolean gtk_scintilla_get_h_scroll_bar (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2131, 0, 0);
}
void gtk_scintilla_set_indentation_guides (GtkScintilla *sci, gint indentView) {
	scintilla_send_message(SCINTILLA(sci), 2132, (uptr_t)indentView, 0);
}
gint gtk_scintilla_get_indentation_guides (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2133, 0, 0);
}
void gtk_scintilla_set_highlight_guide (GtkScintilla *sci, gint column) {
	scintilla_send_message(SCINTILLA(sci), 2134, (uptr_t)column, 0);
}
gint gtk_scintilla_get_highlight_guide (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2135, 0, 0);
}
gint gtk_scintilla_get_line_end_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2136, (uptr_t)line, 0);
}
gint gtk_scintilla_get_code_page (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2137, 0, 0);
}
gint gtk_scintilla_get_caret_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2138, 0, 0);
}
gboolean gtk_scintilla_get_use_palette (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2139, 0, 0);
}
void gtk_scintilla_set_current_pos (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2141, (uptr_t)pos, 0);
}
void gtk_scintilla_set_selection_start (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2142, (uptr_t)pos, 0);
}
gint gtk_scintilla_get_selection_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2143, 0, 0);
}
void gtk_scintilla_set_selection_end (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2144, (uptr_t)pos, 0);
}
gint gtk_scintilla_get_selection_end (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2145, 0, 0);
}
void gtk_scintilla_set_print_magnification (GtkScintilla *sci, gint magnification) {
	scintilla_send_message(SCINTILLA(sci), 2146, (uptr_t)magnification, 0);
}
gint gtk_scintilla_get_print_magnification (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2147, 0, 0);
}
void gtk_scintilla_set_print_colour_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2148, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_print_colour_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2149, 0, 0);
}
gint gtk_scintilla_format_range (GtkScintilla *sci, gboolean draw, struct Sci_RangeToFormat *fr) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2151, (uptr_t)draw, (sptr_t)fr);
}
gint gtk_scintilla_get_first_visible_line (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2152, 0, 0);
}
gint gtk_scintilla_get_line_count (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2154, 0, 0);
}
void gtk_scintilla_set_margin_left (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2155, 0, (sptr_t)pixelWidth);
}
gint gtk_scintilla_get_margin_left (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2156, 0, 0);
}
void gtk_scintilla_set_margin_right (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2157, 0, (sptr_t)pixelWidth);
}
gint gtk_scintilla_get_margin_right (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2158, 0, 0);
}
gboolean gtk_scintilla_get_modify (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2159, 0, 0);
}
void gtk_scintilla_set_sel (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci), 2160, (uptr_t)start, (sptr_t)end);
}
gint gtk_scintilla_get_sel_text (GtkScintilla *sci, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2161, 0, (sptr_t)text);
}
void gtk_scintilla_hide_selection (GtkScintilla *sci, gboolean normal) {
	scintilla_send_message(SCINTILLA(sci), 2163, (uptr_t)normal, 0);
}
gint gtk_scintilla_point_x_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2164, 0, (sptr_t)pos);
}
gint gtk_scintilla_point_y_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2165, 0, (sptr_t)pos);
}
gint gtk_scintilla_line_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2166, (uptr_t)pos, 0);
}
gint gtk_scintilla_position_from_line (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2167, (uptr_t)line, 0);
}
void gtk_scintilla_line_scroll (GtkScintilla *sci, gint columns, gint lines) {
	scintilla_send_message(SCINTILLA(sci), 2168, (uptr_t)columns, (sptr_t)lines);
}
void gtk_scintilla_scroll_caret (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2169, 0, 0);
}
void gtk_scintilla_null (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2172, 0, 0);
}
gboolean gtk_scintilla_can_paste (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2173, 0, 0);
}
gboolean gtk_scintilla_can_undo (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2174, 0, 0);
}
void gtk_scintilla_empty_undo_buffer (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2175, 0, 0);
}
void gtk_scintilla_undo (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2176, 0, 0);
}
void gtk_scintilla_cut (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2177, 0, 0);
}
void gtk_scintilla_copy (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2178, 0, 0);
}
void gtk_scintilla_paste (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2179, 0, 0);
}
void gtk_scintilla_clear (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2180, 0, 0);
}

gint gtk_scintilla_get_text_length (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2183, 0, 0);
}
gint gtk_scintilla_get_direct_function (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2184, 0, 0);
}
gint gtk_scintilla_get_direct_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2185, 0, 0);
}
void gtk_scintilla_set_overtype (GtkScintilla *sci, gboolean overtype) {
	scintilla_send_message(SCINTILLA(sci), 2186, (uptr_t)overtype, 0);
}
gboolean gtk_scintilla_get_overtype (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2187, 0, 0);
}
void gtk_scintilla_set_caret_width (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2188, (uptr_t)pixelWidth, 0);
}
gint gtk_scintilla_get_caret_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2189, 0, 0);
}
void gtk_scintilla_call_tip_show (GtkScintilla *sci, gint pos, const gchar *definition) {
	scintilla_send_message(SCINTILLA(sci), 2200, (uptr_t)pos, (sptr_t)definition);
}
void gtk_scintilla_call_tip_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2201, 0, 0);
}
gboolean gtk_scintilla_call_tip_active (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2202, 0, 0);
}
gint gtk_scintilla_call_tip_pos_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2203, 0, 0);
}
void gtk_scintilla_call_tip_set_hlt (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci), 2204, (uptr_t)start, (sptr_t)end);
}
void gtk_scintilla_call_tip_set_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2205, (uptr_t)back, 0);
}
void gtk_scintilla_call_tip_set_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2206, (uptr_t)fore, 0);
}
void gtk_scintilla_call_tip_set_fore_hlt (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2207, (uptr_t)fore, 0);
}
void gtk_scintilla_call_tip_use_style (GtkScintilla *sci, gint tabSize) {
	scintilla_send_message(SCINTILLA(sci), 2212, (uptr_t)tabSize, 0);
}
gint gtk_scintilla_visible_from_doc_line (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2220, (uptr_t)line, 0);
}
gint gtk_scintilla_doc_line_from_visible (GtkScintilla *sci, gint lineDisplay) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2221, (uptr_t)lineDisplay, 0);
}
gint gtk_scintilla_wrap_count (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2235, (uptr_t)line, 0);
}
void gtk_scintilla_set_fold_level (GtkScintilla *sci, gint line, gint level) {
	scintilla_send_message(SCINTILLA(sci), 2222, (uptr_t)line, (sptr_t)level);
}
gint gtk_scintilla_get_fold_level (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2223, (uptr_t)line, 0);
}
gint gtk_scintilla_get_last_child (GtkScintilla *sci, gint line, gint level) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2224, (uptr_t)line, (sptr_t)level);
}
gint gtk_scintilla_get_fold_parent (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2225, (uptr_t)line, 0);
}
void gtk_scintilla_show_lines (GtkScintilla *sci, gint lineStart, gint lineEnd) {
	scintilla_send_message(SCINTILLA(sci), 2226, (uptr_t)lineStart, (sptr_t)lineEnd);
}
void gtk_scintilla_hide_lines (GtkScintilla *sci, gint lineStart, gint lineEnd) {
	scintilla_send_message(SCINTILLA(sci), 2227, (uptr_t)lineStart, (sptr_t)lineEnd);
}
gboolean gtk_scintilla_get_line_visible (GtkScintilla *sci, gint line) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2228, (uptr_t)line, 0);
}
void gtk_scintilla_set_fold_expanded (GtkScintilla *sci, gint line, gboolean expanded) {
	scintilla_send_message(SCINTILLA(sci), 2229, (uptr_t)line, (sptr_t)expanded);
}
gboolean gtk_scintilla_get_fold_expanded (GtkScintilla *sci, gint line) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2230, (uptr_t)line, 0);
}
void gtk_scintilla_toggle_fold (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci), 2231, (uptr_t)line, 0);
}
void gtk_scintilla_ensure_visible (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci), 2232, (uptr_t)line, 0);
}
void gtk_scintilla_set_fold_flags (GtkScintilla *sci, gint flags) {
	scintilla_send_message(SCINTILLA(sci), 2233, (uptr_t)flags, 0);
}
void gtk_scintilla_ensure_visible_enforce_policy (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci), 2234, (uptr_t)line, 0);
}
void gtk_scintilla_set_tab_indents (GtkScintilla *sci, gboolean tabIndents) {
	scintilla_send_message(SCINTILLA(sci), 2260, (uptr_t)tabIndents, 0);
}
gboolean gtk_scintilla_get_tab_indents (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2261, 0, 0);
}
void gtk_scintilla_set_backspace_unindents (GtkScintilla *sci, gboolean bsUnIndents) {
	scintilla_send_message(SCINTILLA(sci), 2262, (uptr_t)bsUnIndents, 0);
}
gboolean gtk_scintilla_get_backspace_unindents (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2263, 0, 0);
}
void gtk_scintilla_set_mouse_dwell_time (GtkScintilla *sci, gint periodMilliseconds) {
	scintilla_send_message(SCINTILLA(sci), 2264, (uptr_t)periodMilliseconds, 0);
}
gint gtk_scintilla_get_mouse_dwell_time (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2265, 0, 0);
}
gint gtk_scintilla_word_start_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2266, (uptr_t)pos, (sptr_t)onlyWordCharacters);
}
gint gtk_scintilla_word_end_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2267, (uptr_t)pos, (sptr_t)onlyWordCharacters);
}
void gtk_scintilla_set_wrap_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2268, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_wrap_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2269, 0, 0);
}
void gtk_scintilla_set_wrap_visual_flags (GtkScintilla *sci, gint wrapVisualFlags) {
	scintilla_send_message(SCINTILLA(sci), 2460, (uptr_t)wrapVisualFlags, 0);
}
gint gtk_scintilla_get_wrap_visual_flags (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2461, 0, 0);
}
void gtk_scintilla_set_wrap_visual_flags_location (GtkScintilla *sci, gint wrapVisualFlagsLocation) {
	scintilla_send_message(SCINTILLA(sci), 2462, (uptr_t)wrapVisualFlagsLocation, 0);
}
gint gtk_scintilla_get_wrap_visual_flags_location (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2463, 0, 0);
}
void gtk_scintilla_set_wrap_start_indent (GtkScintilla *sci, gint indent) {
	scintilla_send_message(SCINTILLA(sci), 2464, (uptr_t)indent, 0);
}
gint gtk_scintilla_get_wrap_start_indent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2465, 0, 0);
}
void gtk_scintilla_set_wrap_indent_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2472, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_wrap_indent_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2473, 0, 0);
}
void gtk_scintilla_set_layout_cache (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2272, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_layout_cache (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2273, 0, 0);
}
void gtk_scintilla_set_scroll_width (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2274, (uptr_t)pixelWidth, 0);
}
gint gtk_scintilla_get_scroll_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2275, 0, 0);
}
void gtk_scintilla_set_scroll_width_tracking (GtkScintilla *sci, gboolean tracking) {
	scintilla_send_message(SCINTILLA(sci), 2516, (uptr_t)tracking, 0);
}
gboolean gtk_scintilla_get_scroll_width_tracking (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2517, 0, 0);
}
gint gtk_scintilla_text_width (GtkScintilla *sci, gint style, const gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2276, (uptr_t)style, (sptr_t)text);
}
void gtk_scintilla_set_end_at_last_line (GtkScintilla *sci, gboolean endAtLastLine) {
	scintilla_send_message(SCINTILLA(sci), 2277, (uptr_t)endAtLastLine, 0);
}
gboolean gtk_scintilla_get_end_at_last_line (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2278, 0, 0);
}
gint gtk_scintilla_text_height (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2279, (uptr_t)line, 0);
}
void gtk_scintilla_set_vscrollbar (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci), 2280, (uptr_t)show, 0);
}
gboolean gtk_scintilla_get_vscrollbar (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2281, 0, 0);
}
gboolean gtk_scintilla_get_two_phase_draw (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2283, 0, 0);
}
void gtk_scintilla_set_two_phase_draw (GtkScintilla *sci, gboolean twoPhase) {
	scintilla_send_message(SCINTILLA(sci), 2284, (uptr_t)twoPhase, 0);
}
void gtk_scintilla_set_font_quality (GtkScintilla *sci, gint fontQuality) {
	scintilla_send_message(SCINTILLA(sci), 2611, (uptr_t)fontQuality, 0);
}
gint gtk_scintilla_get_font_quality (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2612, 0, 0);
}
void gtk_scintilla_set_first_visible_line (GtkScintilla *sci, gint lineDisplay) {
	scintilla_send_message(SCINTILLA(sci), 2613, (uptr_t)lineDisplay, 0);
}
void gtk_scintilla_set_multi_paste (GtkScintilla *sci, gint multiPaste) {
	scintilla_send_message(SCINTILLA(sci), 2614, (uptr_t)multiPaste, 0);
}
gint gtk_scintilla_get_multi_paste (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2615, 0, 0);
}
void gtk_scintilla_lines_join (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2288, 0, 0);
}
void gtk_scintilla_lines_split (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci), 2289, (uptr_t)pixelWidth, 0);
}
void gtk_scintilla_set_fold_margin_colour (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2290, (uptr_t)useSetting, (sptr_t)back);
}
void gtk_scintilla_set_fold_margin_hi_colour (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2291, (uptr_t)useSetting, (sptr_t)fore);
}
void gtk_scintilla_line_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2300, 0, 0);
}
void gtk_scintilla_line_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2301, 0, 0);
}
void gtk_scintilla_line_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2302, 0, 0);
}
void gtk_scintilla_line_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2303, 0, 0);
}
void gtk_scintilla_char_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2304, 0, 0);
}
void gtk_scintilla_char_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2305, 0, 0);
}
void gtk_scintilla_char_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2306, 0, 0);
}
void gtk_scintilla_char_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2307, 0, 0);
}
void gtk_scintilla_word_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2308, 0, 0);
}
void gtk_scintilla_word_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2309, 0, 0);
}
void gtk_scintilla_word_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2310, 0, 0);
}
void gtk_scintilla_word_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2311, 0, 0);
}
void gtk_scintilla_home (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2312, 0, 0);
}
void gtk_scintilla_home_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2313, 0, 0);
}
void gtk_scintilla_line_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2314, 0, 0);
}
void gtk_scintilla_line_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2315, 0, 0);
}
void gtk_scintilla_document_start (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2316, 0, 0);
}
void gtk_scintilla_document_start_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2317, 0, 0);
}
void gtk_scintilla_document_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2318, 0, 0);
}
void gtk_scintilla_document_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2319, 0, 0);
}
void gtk_scintilla_page_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2320, 0, 0);
}
void gtk_scintilla_page_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2321, 0, 0);
}
void gtk_scintilla_page_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2322, 0, 0);
}
void gtk_scintilla_page_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2323, 0, 0);
}
void gtk_scintilla_edit_toggle_overtype (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2324, 0, 0);
}
void gtk_scintilla_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2325, 0, 0);
}
void gtk_scintilla_delete_back (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2326, 0, 0);
}
void gtk_scintilla_tab (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2327, 0, 0);
}
void gtk_scintilla_back_tab (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2328, 0, 0);
}
void gtk_scintilla_new_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2329, 0, 0);
}
void gtk_scintilla_form_feed (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2330, 0, 0);
}
void gtk_scintilla_visible_char_home (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2331, 0, 0);
}
void gtk_scintilla_visible_char_home_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2332, 0, 0);
}
void gtk_scintilla_zoom_in (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2333, 0, 0);
}
void gtk_scintilla_zoom_out (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2334, 0, 0);
}
void gtk_scintilla_del_word_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2335, 0, 0);
}
void gtk_scintilla_del_word_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2336, 0, 0);
}
void gtk_scintilla_del_word_right_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2518, 0, 0);
}
void gtk_scintilla_line_cut (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2337, 0, 0);
}
void gtk_scintilla_line_delete (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2338, 0, 0);
}
void gtk_scintilla_line_transpose (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2339, 0, 0);
}
void gtk_scintilla_line_duplicate (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2404, 0, 0);
}
void gtk_scintilla_lower_case (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2340, 0, 0);
}
void gtk_scintilla_upper_case (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2341, 0, 0);
}
void gtk_scintilla_line_scroll_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2342, 0, 0);
}
void gtk_scintilla_line_scroll_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2343, 0, 0);
}
void gtk_scintilla_delete_back_not_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2344, 0, 0);
}
void gtk_scintilla_home_display (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2345, 0, 0);
}
void gtk_scintilla_home_display_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2346, 0, 0);
}
void gtk_scintilla_line_end_display (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2347, 0, 0);
}
void gtk_scintilla_line_end_display_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2348, 0, 0);
}
void gtk_scintilla_home_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2349, 0, 0);
}
void gtk_scintilla_home_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2450, 0, 0);
}
void gtk_scintilla_line_end_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2451, 0, 0);
}
void gtk_scintilla_line_end_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2452, 0, 0);
}
void gtk_scintilla_visible_char_home_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2453, 0, 0);
}
void gtk_scintilla_visible_char_home_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2454, 0, 0);
}
void gtk_scintilla_line_copy (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2455, 0, 0);
}
void gtk_scintilla_move_caret_inside_view (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2401, 0, 0);
}
gint gtk_scintilla_line_length (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2350, (uptr_t)line, 0);
}
void gtk_scintilla_brace_highlight (GtkScintilla *sci, gint pos1, gint pos2) {
	scintilla_send_message(SCINTILLA(sci), 2351, (uptr_t)pos1, (sptr_t)pos2);
}
void gtk_scintilla_brace_bad_light (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2352, (uptr_t)pos, 0);
}
gint gtk_scintilla_brace_match (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2353, (uptr_t)pos, 0);
}
gboolean gtk_scintilla_get_view_eol (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2355, 0, 0);
}
void gtk_scintilla_set_view_eol (GtkScintilla *sci, gboolean visible) {
	scintilla_send_message(SCINTILLA(sci), 2356, (uptr_t)visible, 0);
}
gint gtk_scintilla_get_doc_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2357, 0, 0);
}
void gtk_scintilla_set_doc_pointer (GtkScintilla *sci, gint pointer) {
	scintilla_send_message(SCINTILLA(sci), 2358, 0, (sptr_t)pointer);
}
void gtk_scintilla_set_mod_event_mask (GtkScintilla *sci, gint mask) {
	scintilla_send_message(SCINTILLA(sci), 2359, (uptr_t)mask, 0);
}
gint gtk_scintilla_get_edge_column (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2360, 0, 0);
}
void gtk_scintilla_set_edge_column (GtkScintilla *sci, gint column) {
	scintilla_send_message(SCINTILLA(sci), 2361, (uptr_t)column, 0);
}
gint gtk_scintilla_get_edge_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2362, 0, 0);
}
void gtk_scintilla_set_edge_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2363, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_edge_colour (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2364, 0, 0);
}
void gtk_scintilla_set_edge_colour (GtkScintilla *sci, gint edgeColour) {
	scintilla_send_message(SCINTILLA(sci), 2365, (uptr_t)edgeColour, 0);
}
gint gtk_scintilla_lines_on_screen (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2370, 0, 0);
}
void gtk_scintilla_use_pop_up (GtkScintilla *sci, gboolean allowPopUp) {
	scintilla_send_message(SCINTILLA(sci), 2371, (uptr_t)allowPopUp, 0);
}
gboolean gtk_scintilla_selection_is_rectangle (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2372, 0, 0);
}
void gtk_scintilla_set_zoom (GtkScintilla *sci, gint zoom) {
	scintilla_send_message(SCINTILLA(sci), 2373, (uptr_t)zoom, 0);
}
gint gtk_scintilla_get_zoom (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2374, 0, 0);
}
gint gtk_scintilla_create_document (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2375, 0, 0);
}
void gtk_scintilla_add_ref_document (GtkScintilla *sci, gint doc) {
	scintilla_send_message(SCINTILLA(sci), 2376, 0, (sptr_t)doc);
}
void gtk_scintilla_release_document (GtkScintilla *sci, gint doc) {
	scintilla_send_message(SCINTILLA(sci), 2377, 0, (sptr_t)doc);
}
gint gtk_scintilla_get_mod_event_mask (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2378, 0, 0);
}
void gtk_scintilla_set_focus (GtkScintilla *sci, gboolean focus) {
	scintilla_send_message(SCINTILLA(sci), 2380, (uptr_t)focus, 0);
}
gboolean gtk_scintilla_get_focus (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2381, 0, 0);
}
void gtk_scintilla_set_status (GtkScintilla *sci, gint statusCode) {
	scintilla_send_message(SCINTILLA(sci), 2382, (uptr_t)statusCode, 0);
}
gint gtk_scintilla_get_status (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2383, 0, 0);
}
void gtk_scintilla_set_mouse_down_captures (GtkScintilla *sci, gboolean captures) {
	scintilla_send_message(SCINTILLA(sci), 2384, (uptr_t)captures, 0);
}
gboolean gtk_scintilla_get_mouse_down_captures (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2385, 0, 0);
}
void gtk_scintilla_set_cursor (GtkScintilla *sci, gint cursorType) {
	scintilla_send_message(SCINTILLA(sci), 2386, (uptr_t)cursorType, 0);
}
gint gtk_scintilla_get_cursor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2387, 0, 0);
}
void gtk_scintilla_set_control_char_symbol (GtkScintilla *sci, gint symbol) {
	scintilla_send_message(SCINTILLA(sci), 2388, (uptr_t)symbol, 0);
}
gint gtk_scintilla_get_control_char_symbol (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2389, 0, 0);
}
void gtk_scintilla_word_part_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2390, 0, 0);
}
void gtk_scintilla_word_part_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2391, 0, 0);
}
void gtk_scintilla_word_part_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2392, 0, 0);
}
void gtk_scintilla_word_part_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2393, 0, 0);
}
void gtk_scintilla_set_visible_policy (GtkScintilla *sci, gint visiblePolicy, gint visibleSlop) {
	scintilla_send_message(SCINTILLA(sci), 2394, (uptr_t)visiblePolicy, (sptr_t)visibleSlop);
}
void gtk_scintilla_del_line_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2395, 0, 0);
}
void gtk_scintilla_del_line_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2396, 0, 0);
}
void gtk_scintilla_set_x_offset (GtkScintilla *sci, gint newOffset) {
	scintilla_send_message(SCINTILLA(sci), 2397, (uptr_t)newOffset, 0);
}
gint gtk_scintilla_get_x_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2398, 0, 0);
}
void gtk_scintilla_choose_caret_x (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2399, 0, 0);
}
void gtk_scintilla_grab_focus (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2400, 0, 0);
}
void gtk_scintilla_set_x_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop) {
	scintilla_send_message(SCINTILLA(sci), 2402, (uptr_t)caretPolicy, (sptr_t)caretSlop);
}
void gtk_scintilla_set_y_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop) {
	scintilla_send_message(SCINTILLA(sci), 2403, (uptr_t)caretPolicy, (sptr_t)caretSlop);
}
void gtk_scintilla_set_print_wrap_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2406, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_print_wrap_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2407, 0, 0);
}
void gtk_scintilla_set_hotspot_active_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2410, (uptr_t)useSetting, (sptr_t)fore);
}
gint gtk_scintilla_get_hotspot_active_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2494, 0, 0);
}
void gtk_scintilla_set_hotspot_active_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2411, (uptr_t)useSetting, (sptr_t)back);
}
gint gtk_scintilla_get_hotspot_active_back (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2495, 0, 0);
}
void gtk_scintilla_set_hotspot_active_underline (GtkScintilla *sci, gboolean underline) {
	scintilla_send_message(SCINTILLA(sci), 2412, (uptr_t)underline, 0);
}
gboolean gtk_scintilla_get_hotspot_active_underline (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2496, 0, 0);
}
void gtk_scintilla_set_hotspot_single_line (GtkScintilla *sci, gboolean singleLine) {
	scintilla_send_message(SCINTILLA(sci), 2421, (uptr_t)singleLine, 0);
}
gboolean gtk_scintilla_get_hotspot_single_line (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2497, 0, 0);
}
void gtk_scintilla_para_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2413, 0, 0);
}
void gtk_scintilla_para_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2414, 0, 0);
}
void gtk_scintilla_para_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2415, 0, 0);
}
void gtk_scintilla_para_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2416, 0, 0);
}
gint gtk_scintilla_position_before (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2417, (uptr_t)pos, 0);
}
gint gtk_scintilla_position_after (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2418, (uptr_t)pos, 0);
}
void gtk_scintilla_copy_range (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci), 2419, (uptr_t)start, (sptr_t)end);
}
void gtk_scintilla_copy_text (GtkScintilla *sci, gint length, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci), 2420, (uptr_t)length, (sptr_t)text);
}
void gtk_scintilla_set_selection_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci), 2422, (uptr_t)mode, 0);
}
gint gtk_scintilla_get_selection_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2423, 0, 0);
}
gint gtk_scintilla_get_line_sel_start_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2424, (uptr_t)line, 0);
}
gint gtk_scintilla_get_line_sel_end_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2425, (uptr_t)line, 0);
}
void gtk_scintilla_line_down_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2426, 0, 0);
}
void gtk_scintilla_line_up_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2427, 0, 0);
}
void gtk_scintilla_char_left_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2428, 0, 0);
}
void gtk_scintilla_char_right_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2429, 0, 0);
}
void gtk_scintilla_home_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2430, 0, 0);
}
void gtk_scintilla_visible_char_home_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2431, 0, 0);
}
void gtk_scintilla_line_end_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2432, 0, 0);
}
void gtk_scintilla_page_up_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2433, 0, 0);
}
void gtk_scintilla_page_down_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2434, 0, 0);
}
void gtk_scintilla_stuttered_page_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2435, 0, 0);
}
void gtk_scintilla_stuttered_page_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2436, 0, 0);
}
void gtk_scintilla_stuttered_page_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2437, 0, 0);
}
void gtk_scintilla_stuttered_page_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2438, 0, 0);
}
void gtk_scintilla_word_left_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2439, 0, 0);
}
void gtk_scintilla_word_left_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2440, 0, 0);
}
void gtk_scintilla_word_right_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2441, 0, 0);
}
void gtk_scintilla_word_right_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2442, 0, 0);
}
void gtk_scintilla_set_whitespace_chars (GtkScintilla *sci, const gchar *characters) {
	scintilla_send_message(SCINTILLA(sci), 2443, 0, (sptr_t)characters);
}
void gtk_scintilla_set_chars_default (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2444, 0, 0);
}
gint gtk_scintilla_auto_completion_get_current (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2445, 0, 0);
}
gint gtk_scintilla_auto_completion_get_current_text (GtkScintilla *sci, gchar *s) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2610, 0, (sptr_t)s);
}
gint gtk_scintilla_find_column (GtkScintilla *sci, gint line, gint column) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2456, (uptr_t)line, (sptr_t)column);
}
gint gtk_scintilla_get_caret_sticky (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2457, 0, 0);
}
void gtk_scintilla_set_caret_sticky (GtkScintilla *sci, gint useCaretStickyBehaviour) {
	scintilla_send_message(SCINTILLA(sci), 2458, (uptr_t)useCaretStickyBehaviour, 0);
}
void gtk_scintilla_toggle_caret_sticky (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2459, 0, 0);
}
void gtk_scintilla_set_paste_convert_endings (GtkScintilla *sci, gboolean convert) {
	scintilla_send_message(SCINTILLA(sci), 2467, (uptr_t)convert, 0);
}
gboolean gtk_scintilla_get_paste_convert_endings (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2468, 0, 0);
}
void gtk_scintilla_selection_duplicate (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2469, 0, 0);
}
void gtk_scintilla_set_caret_line_back_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci), 2470, (uptr_t)alpha, 0);
}
gint gtk_scintilla_get_caret_line_back_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2471, 0, 0);
}
void gtk_scintilla_set_caret_style (GtkScintilla *sci, gint caretStyle) {
	scintilla_send_message(SCINTILLA(sci), 2512, (uptr_t)caretStyle, 0);
}
gint gtk_scintilla_get_caret_style (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2513, 0, 0);
}
void gtk_scintilla_set_indicator_current (GtkScintilla *sci, gint indicator) {
	scintilla_send_message(SCINTILLA(sci), 2500, (uptr_t)indicator, 0);
}
gint gtk_scintilla_get_indicator_current (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2501, 0, 0);
}
void gtk_scintilla_set_indicator_value (GtkScintilla *sci, gint value) {
	scintilla_send_message(SCINTILLA(sci), 2502, (uptr_t)value, 0);
}
gint gtk_scintilla_get_indicator_value (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2503, 0, 0);
}
void gtk_scintilla_indicator_fill_range (GtkScintilla *sci, gint position, gint fillLength) {
	scintilla_send_message(SCINTILLA(sci), 2504, (uptr_t)position, (sptr_t)fillLength);
}
void gtk_scintilla_indicator_clear_range (GtkScintilla *sci, gint position, gint clearLength) {
	scintilla_send_message(SCINTILLA(sci), 2505, (uptr_t)position, (sptr_t)clearLength);
}
gint gtk_scintilla_indicator_all_on_for (GtkScintilla *sci, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2506, (uptr_t)position, 0);
}
gint gtk_scintilla_indicator_value_at (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2507, (uptr_t)indicator, (sptr_t)position);
}
gint gtk_scintilla_indicator_start (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2508, (uptr_t)indicator, (sptr_t)position);
}
gint gtk_scintilla_indicator_end (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2509, (uptr_t)indicator, (sptr_t)position);
}
void gtk_scintilla_set_position_cache (GtkScintilla *sci, gint size) {
	scintilla_send_message(SCINTILLA(sci), 2514, (uptr_t)size, 0);
}
gint gtk_scintilla_get_position_cache (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2515, 0, 0);
}
void gtk_scintilla_copy_allow_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2519, 0, 0);
}
gint gtk_scintilla_get_character_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2520, 0, 0);
}
void gtk_scintilla_set_keys_unicode (GtkScintilla *sci, gboolean keysUnicode) {
	scintilla_send_message(SCINTILLA(sci), 2521, (uptr_t)keysUnicode, 0);
}
gboolean gtk_scintilla_get_keys_unicode (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2522, 0, 0);
}
void gtk_scintilla_indic_set_alpha (GtkScintilla *sci, gint indicator, gint alpha) {
	scintilla_send_message(SCINTILLA(sci), 2523, (uptr_t)indicator, (sptr_t)alpha);
}
gint gtk_scintilla_indic_get_alpha (GtkScintilla *sci, gint indicator) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2524, (uptr_t)indicator, 0);
}
void gtk_scintilla_set_extra_ascent (GtkScintilla *sci, gint extraAscent) {
	scintilla_send_message(SCINTILLA(sci), 2525, (uptr_t)extraAscent, 0);
}
gint gtk_scintilla_get_extra_ascent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2526, 0, 0);
}
void gtk_scintilla_set_extra_descent (GtkScintilla *sci, gint extraDescent) {
	scintilla_send_message(SCINTILLA(sci), 2527, (uptr_t)extraDescent, 0);
}
gint gtk_scintilla_get_extra_descent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2528, 0, 0);
}
gint gtk_scintilla_marker_symbol_defined (GtkScintilla *sci, gint markerNumber) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2529, (uptr_t)markerNumber, 0);
}
void gtk_scintilla_margin_set_text (GtkScintilla *sci, gint line, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci), 2530, (uptr_t)line, (sptr_t)text);
}
gint gtk_scintilla_margin_get_text (GtkScintilla *sci, gint line, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2531, (uptr_t)line, (sptr_t)text);
}
void gtk_scintilla_margin_set_style (GtkScintilla *sci, gint line, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2532, (uptr_t)line, (sptr_t)style);
}
gint gtk_scintilla_margin_get_style (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2533, (uptr_t)line, 0);
}
void gtk_scintilla_margin_set_styles (GtkScintilla *sci, gint line, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci), 2534, (uptr_t)line, (sptr_t)styles);
}
gint gtk_scintilla_margin_get_styles (GtkScintilla *sci, gint line, gchar *styles) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2535, (uptr_t)line, (sptr_t)styles);
}
void gtk_scintilla_margin_text_clear_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2536, 0, 0);
}
void gtk_scintilla_margin_set_style_offset (GtkScintilla *sci, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2537, (uptr_t)style, 0);
}
gint gtk_scintilla_margin_get_style_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2538, 0, 0);
}
void gtk_scintilla_annotation_set_text (GtkScintilla *sci, gint line, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci), 2540, (uptr_t)line, (sptr_t)text);
}
gint gtk_scintilla_annotation_get_text (GtkScintilla *sci, gint line, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2541, (uptr_t)line, (sptr_t)text);
}
void gtk_scintilla_annotation_set_style (GtkScintilla *sci, gint line, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2542, (uptr_t)line, (sptr_t)style);
}
gint gtk_scintilla_annotation_get_style (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2543, (uptr_t)line, 0);
}
void gtk_scintilla_annotation_set_styles (GtkScintilla *sci, gint line, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci), 2544, (uptr_t)line, (sptr_t)styles);
}
gint gtk_scintilla_annotation_get_styles (GtkScintilla *sci, gint line, gchar *styles) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2545, (uptr_t)line, (sptr_t)styles);
}
gint gtk_scintilla_annotation_get_lines (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2546, (uptr_t)line, 0);
}
void gtk_scintilla_annotation_clear_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2547, 0, 0);
}
void gtk_scintilla_annotation_set_visible (GtkScintilla *sci, gint visible) {
	scintilla_send_message(SCINTILLA(sci), 2548, (uptr_t)visible, 0);
}
gint gtk_scintilla_annotation_get_visible (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2549, 0, 0);
}
void gtk_scintilla_annotation_set_style_offset (GtkScintilla *sci, gint style) {
	scintilla_send_message(SCINTILLA(sci), 2550, (uptr_t)style, 0);
}
gint gtk_scintilla_annotation_get_style_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2551, 0, 0);
}
void gtk_scintilla_add_undo_action (GtkScintilla *sci, gint token, gint flags) {
	scintilla_send_message(SCINTILLA(sci), 2560, (uptr_t)token, (sptr_t)flags);
}
gint gtk_scintilla_char_position_from_point (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2561, (uptr_t)x, (sptr_t)y);
}
gint gtk_scintilla_char_position_from_point_close (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2562, (uptr_t)x, (sptr_t)y);
}
void gtk_scintilla_set_multiple_selection (GtkScintilla *sci, gboolean multipleSelection) {
	scintilla_send_message(SCINTILLA(sci), 2563, (uptr_t)multipleSelection, 0);
}
gboolean gtk_scintilla_get_multiple_selection (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2564, 0, 0);
}
void gtk_scintilla_set_additional_selection_typing (GtkScintilla *sci, gboolean additionalSelectionTyping) {
	scintilla_send_message(SCINTILLA(sci), 2565, (uptr_t)additionalSelectionTyping, 0);
}
gboolean gtk_scintilla_get_additional_selection_typing (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2566, 0, 0);
}
void gtk_scintilla_set_additional_carets_blink (GtkScintilla *sci, gboolean additionalCaretsBlink) {
	scintilla_send_message(SCINTILLA(sci), 2567, (uptr_t)additionalCaretsBlink, 0);
}
gboolean gtk_scintilla_get_additional_carets_blink (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2568, 0, 0);
}
void gtk_scintilla_set_additional_carets_visible (GtkScintilla *sci, gboolean additionalCaretsBlink) {
	scintilla_send_message(SCINTILLA(sci), 2608, (uptr_t)additionalCaretsBlink, 0);
}
gboolean gtk_scintilla_get_additional_carets_visible (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci), 2609, 0, 0);
}
gint gtk_scintilla_get_selections (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2570, 0, 0);
}
void gtk_scintilla_clear_selections (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2571, 0, 0);
}
gint gtk_scintilla_set_selection (GtkScintilla *sci, gint caret, gint anchor) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2572, (uptr_t)caret, (sptr_t)anchor);
}
gint gtk_scintilla_add_selection (GtkScintilla *sci, gint caret, gint anchor) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2573, (uptr_t)caret, (sptr_t)anchor);
}
void gtk_scintilla_set_main_selection (GtkScintilla *sci, gint selection) {
	scintilla_send_message(SCINTILLA(sci), 2574, (uptr_t)selection, 0);
}
gint gtk_scintilla_get_main_selection (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2575, 0, 0);
}
void gtk_scintilla_set_selection_n_caret (GtkScintilla *sci, gint selection, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2576, (uptr_t)selection, (sptr_t)pos);
}
gint gtk_scintilla_get_selection_n_caret (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2577, (uptr_t)selection, 0);
}
void gtk_scintilla_set_selection_n_anchor (GtkScintilla *sci, gint selection, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci), 2578, (uptr_t)selection, (sptr_t)posAnchor);
}
gint gtk_scintilla_get_selection_n_anchor (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2579, (uptr_t)selection, 0);
}
void gtk_scintilla_set_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection, gint space) {
	scintilla_send_message(SCINTILLA(sci), 2580, (uptr_t)selection, (sptr_t)space);
}
gint gtk_scintilla_get_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2581, (uptr_t)selection, 0);
}
void gtk_scintilla_set_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection, gint space) {
	scintilla_send_message(SCINTILLA(sci), 2582, (uptr_t)selection, (sptr_t)space);
}
gint gtk_scintilla_get_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2583, (uptr_t)selection, 0);
}
void gtk_scintilla_set_selection_n_start (GtkScintilla *sci, gint selection, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2584, (uptr_t)selection, (sptr_t)pos);
}
gint gtk_scintilla_get_selection_n_start (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2585, (uptr_t)selection, 0);
}
gint gtk_scintilla_get_selection_n_end (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2587, (uptr_t)selection, 0);
}
void gtk_scintilla_set_rectangular_selection_caret (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci), 2588, (uptr_t)pos, 0);
}
gint gtk_scintilla_get_rectangular_selection_caret (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2589, 0, 0);
}
void gtk_scintilla_set_rectangular_selection_anchor (GtkScintilla *sci, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci), 2590, (uptr_t)posAnchor, 0);
}
gint gtk_scintilla_get_rectangular_selection_anchor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2591, 0, 0);
}
void gtk_scintilla_set_rectangular_selection_caret_virtual_space (GtkScintilla *sci, gint space) {
	scintilla_send_message(SCINTILLA(sci), 2592, (uptr_t)space, 0);
}
gint gtk_scintilla_get_rectangular_selection_caret_virtual_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2593, 0, 0);
}
void gtk_scintilla_set_rectangular_selection_anchor_virtual_space (GtkScintilla *sci, gint space) {
	scintilla_send_message(SCINTILLA(sci), 2594, (uptr_t)space, 0);
}
gint gtk_scintilla_get_rectangular_selection_anchor_virtual_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2595, 0, 0);
}
void gtk_scintilla_set_virtual_space_options (GtkScintilla *sci, gint virtualSpaceOptions) {
	scintilla_send_message(SCINTILLA(sci), 2596, (uptr_t)virtualSpaceOptions, 0);
}
gint gtk_scintilla_get_virtual_space_options (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2597, 0, 0);
}
void gtk_scintilla_set_rectangular_selection_modifier (GtkScintilla *sci, gint modifier) {
	scintilla_send_message(SCINTILLA(sci), 2598, (uptr_t)modifier, 0);
}
gint gtk_scintilla_get_rectangular_selection_modifier (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2599, 0, 0);
}
void gtk_scintilla_set_additional_sel_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2600, (uptr_t)fore, 0);
}
void gtk_scintilla_set_additional_sel_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci), 2601, (uptr_t)back, 0);
}
void gtk_scintilla_set_additional_sel_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci), 2602, (uptr_t)alpha, 0);
}
gint gtk_scintilla_get_additional_sel_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2603, 0, 0);
}
void gtk_scintilla_set_additional_caret_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci), 2604, (uptr_t)fore, 0);
}
gint gtk_scintilla_get_additional_caret_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 2605, 0, 0);
}
void gtk_scintilla_rotate_selection (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2606, 0, 0);
}
void gtk_scintilla_swap_main_anchor_caret (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 2607, 0, 0);
}
void gtk_scintilla_start_record (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 3001, 0, 0);
}
void gtk_scintilla_stop_record (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci), 3002, 0, 0);
}
void gtk_scintilla_colourise (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci), 4003, (uptr_t)start, (sptr_t)end);
}

void gtk_scintilla_set_lexer_property(GtkScintilla *sci, const gchar *key, const gchar *value)
{
	scintilla_send_message(SCINTILLA(sci), SCI_SETPROPERTY, (uptr_t)key, (sptr_t)value);
}


gchar *gtk_scintilla_get_lexer_property(GtkScintilla *sci, const gchar *key)
{
	gint len;
	gchar *tmp;

	len = (gint)scintilla_send_message(SCINTILLA(sci), SCI_GETPROPERTY, (sptr_t)key, 0);

	tmp = g_malloc0(len + 1);
	if (tmp == NULL)
	{
		g_debug("Unable to store value of property '%s'.", key);
		return NULL;
	}

	len = (gint)scintilla_send_message(SCINTILLA(sci), SCI_GETPROPERTY, (sptr_t)key, (sptr_t)tmp);
	if (len == 0 && strcmp(tmp, ""))
	{
		g_debug("Unable to find property '%s'.", key);
		g_free(tmp);
		return NULL;
	}

	return tmp;
}



void gtk_scintilla_set_keywords (GtkScintilla *sci, gint keywordSet, const gchar *keyWords)
{
	scintilla_send_message(SCINTILLA(sci), 4005, (uptr_t)keywordSet, (sptr_t)keyWords);
}
void gtk_scintilla_set_lexer_language (GtkScintilla *sci, const gchar *language) {
	scintilla_send_message(SCINTILLA(sci), 4006, 0, (sptr_t)language);
}
void gtk_scintilla_load_lexer_library (GtkScintilla *sci, const gchar *path) {
	scintilla_send_message(SCINTILLA(sci), 4007, 0, (sptr_t)path);
}
gint gtk_scintilla_get_lexer_property_expanded (GtkScintilla *sci, const gchar *key, gchar *buf) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 4009, (uptr_t)key, (sptr_t)buf);
}
gint gtk_scintilla_get_lexer_property_int (GtkScintilla *sci, const gchar *key) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 4010, (uptr_t)key, 0);
}
gint gtk_scintilla_get_style_bits_needed (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci), 4011, 0, 0);
}

gchar *gtk_scintilla_get_lexer_language (GtkScintilla *sci) {
	gint len = (gint)scintilla_send_message(SCINTILLA(sci), 4012, 0, 0);
	gchar *tmp = g_malloc0(len+1);
	scintilla_send_message(SCINTILLA(sci), 4012, 0, (sptr_t)tmp);
	return tmp;
}
