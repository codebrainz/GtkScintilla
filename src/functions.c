#include <gtk/gtk.h>
#include "gtkscintilla.h"

inline gint gtk_scintilla_get_length (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2006, 0, 0);
}
inline gint gtk_scintilla_get_current_pos (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2008, 0, 0);
}
inline gint gtk_scintilla_get_anchor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2009, 0, 0);
}
inline void gtk_scintilla_redo (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2011, 0, 0);
}
inline void gtk_scintilla_set_undo_collection (GtkScintilla *sci, gboolean collectUndo) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2012, (uptr_t)collectUndo, 0);
}
inline void gtk_scintilla_select_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2013, 0, 0);
}
inline gboolean gtk_scintilla_can_redo (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2016, 0, 0);
}
inline gint gtk_scintilla_marker_line_from_handle (GtkScintilla *sci, gint handle) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2017, (uptr_t)handle, 0);
}
inline void gtk_scintilla_marker_delete_handle (GtkScintilla *sci, gint handle) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2018, (uptr_t)handle, 0);
}
inline gboolean gtk_scintilla_get_undo_collection (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2019, 0, 0);
}
inline gint gtk_scintilla_get_view_white_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2020, 0, 0);
}
inline void gtk_scintilla_set_view_white_space (GtkScintilla *sci, gint viewWS) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2021, (uptr_t)viewWS, 0);
}
inline gint gtk_scintilla_position_from_point (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2022, (uptr_t)x, (sptr_t)y);
}
inline gint gtk_scintilla_position_from_point_close (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2023, (uptr_t)x, (sptr_t)y);
}
inline void gtk_scintilla_goto_line (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2024, (uptr_t)line, 0);
}
inline void gtk_scintilla_goto_pos (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2025, (uptr_t)pos, 0);
}
inline void gtk_scintilla_set_anchor (GtkScintilla *sci, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2026, (uptr_t)posAnchor, 0);
}
inline gint gtk_scintilla_get_cur_line (GtkScintilla *sci, gint length, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2027, (uptr_t)length, (sptr_t)text);
}
inline gint gtk_scintilla_get_end_styled (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2028, 0, 0);
}
inline void gtk_scintilla_convert_eols (GtkScintilla *sci, gint eolMode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2029, (uptr_t)eolMode, 0);
}
inline gint gtk_scintilla_get_eol_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2030, 0, 0);
}
inline void gtk_scintilla_set_eol_mode (GtkScintilla *sci, gint eolMode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2031, (uptr_t)eolMode, 0);
}
inline void gtk_scintilla_start_styling (GtkScintilla *sci, gint pos, gint mask) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2032, (uptr_t)pos, (sptr_t)mask);
}
inline void gtk_scintilla_set_styling (GtkScintilla *sci, gint length, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2033, (uptr_t)length, (sptr_t)style);
}
inline gboolean gtk_scintilla_get_buffered_draw (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2034, 0, 0);
}
inline void gtk_scintilla_set_buffered_draw (GtkScintilla *sci, gboolean buffered) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2035, (uptr_t)buffered, 0);
}
inline void gtk_scintilla_set_tab_width (GtkScintilla *sci, gint tabWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2036, (uptr_t)tabWidth, 0);
}
inline gint gtk_scintilla_get_tab_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2121, 0, 0);
}
inline void gtk_scintilla_set_code_page (GtkScintilla *sci, gint codePage) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2037, (uptr_t)codePage, 0);
}
inline void gtk_scintilla_set_use_palette (GtkScintilla *sci, gboolean usePalette) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2039, (uptr_t)usePalette, 0);
}
inline void gtk_scintilla_marker_define (GtkScintilla *sci, gint markerNumber, gint markerSymbol) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2040, (uptr_t)markerNumber, (sptr_t)markerSymbol);
}
inline void gtk_scintilla_marker_set_fore (GtkScintilla *sci, gint markerNumber, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2041, (uptr_t)markerNumber, (sptr_t)fore);
}
inline void gtk_scintilla_marker_set_back (GtkScintilla *sci, gint markerNumber, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2042, (uptr_t)markerNumber, (sptr_t)back);
}
inline gint gtk_scintilla_marker_add (GtkScintilla *sci, gint line, gint markerNumber) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2043, (uptr_t)line, (sptr_t)markerNumber);
}
inline void gtk_scintilla_marker_delete (GtkScintilla *sci, gint line, gint markerNumber) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2044, (uptr_t)line, (sptr_t)markerNumber);
}
inline void gtk_scintilla_marker_delete_all (GtkScintilla *sci, gint markerNumber) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2045, (uptr_t)markerNumber, 0);
}
inline gint gtk_scintilla_marker_get (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2046, (uptr_t)line, 0);
}
inline gint gtk_scintilla_marker_next (GtkScintilla *sci, gint lineStart, gint markerMask) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2047, (uptr_t)lineStart, (sptr_t)markerMask);
}
inline gint gtk_scintilla_marker_previous (GtkScintilla *sci, gint lineStart, gint markerMask) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2048, (uptr_t)lineStart, (sptr_t)markerMask);
}
inline void gtk_scintilla_marker_define_pixmap (GtkScintilla *sci, gint markerNumber, const gchar *pixmap) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2049, (uptr_t)markerNumber, (sptr_t)pixmap);
}
inline void gtk_scintilla_marker_add_set (GtkScintilla *sci, gint line, gint set) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2466, (uptr_t)line, (sptr_t)set);
}
inline void gtk_scintilla_marker_set_alpha (GtkScintilla *sci, gint markerNumber, gint alpha) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2476, (uptr_t)markerNumber, (sptr_t)alpha);
}
inline void gtk_scintilla_set_margin_type_n (GtkScintilla *sci, gint margin, gint marginType) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2240, (uptr_t)margin, (sptr_t)marginType);
}
inline gint gtk_scintilla_get_margin_type_n (GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2241, (uptr_t)margin, 0);
}
inline void gtk_scintilla_set_margin_width_n (GtkScintilla *sci, gint margin, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2242, (uptr_t)margin, (sptr_t)pixelWidth);
}
inline gint gtk_scintilla_get_margin_width_n (GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2243, (uptr_t)margin, 0);
}
inline void gtk_scintilla_set_margin_mask_n (GtkScintilla *sci, gint margin, gint mask) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2244, (uptr_t)margin, (sptr_t)mask);
}
inline gint gtk_scintilla_get_margin_mask_n (GtkScintilla *sci, gint margin) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2245, (uptr_t)margin, 0);
}
inline void gtk_scintilla_set_margin_sensitive_n (GtkScintilla *sci, gint margin, gboolean sensitive) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2246, (uptr_t)margin, (sptr_t)sensitive);
}
inline gboolean gtk_scintilla_get_margin_sensitive_n (GtkScintilla *sci, gint margin) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2247, (uptr_t)margin, 0);
}
inline void gtk_scintilla_set_sel_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2067, (uptr_t)useSetting, (sptr_t)fore);
}
inline void gtk_scintilla_set_sel_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2068, (uptr_t)useSetting, (sptr_t)back);
}
inline gint gtk_scintilla_get_sel_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2477, 0, 0);
}
inline void gtk_scintilla_set_sel_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2478, (uptr_t)alpha, 0);
}
inline gboolean gtk_scintilla_get_sel_eol_filled (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2479, 0, 0);
}
inline void gtk_scintilla_set_sel_eol_filled (GtkScintilla *sci, gboolean filled) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2480, (uptr_t)filled, 0);
}
inline void gtk_scintilla_set_caret_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2069, (uptr_t)fore, 0);
}
inline void gtk_scintilla_assign_cmd_key (GtkScintilla *sci, gulong km, gint msg) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2070, (uptr_t)km, (sptr_t)msg);
}
inline void gtk_scintilla_clear_cmd_key (GtkScintilla *sci, gulong km) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2071, (uptr_t)km, 0);
}
inline void gtk_scintilla_clear_all_cmd_keys (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2072, 0, 0);
}
inline void gtk_scintilla_set_styling_ex (GtkScintilla *sci, gint length, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2073, (uptr_t)length, (sptr_t)styles);
}
inline gint gtk_scintilla_get_caret_period (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2075, 0, 0);
}
inline void gtk_scintilla_set_caret_period (GtkScintilla *sci, gint periodMilliseconds) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2076, (uptr_t)periodMilliseconds, 0);
}
inline void gtk_scintilla_set_word_chars (GtkScintilla *sci, const gchar *characters) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2077, 0, (sptr_t)characters);
}
inline void gtk_scintilla_begin_undo_action (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2078, 0, 0);
}
inline void gtk_scintilla_end_undo_action (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2079, 0, 0);
}
inline void gtk_scintilla_indic_set_style (GtkScintilla *sci, gint indic, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2080, (uptr_t)indic, (sptr_t)style);
}
inline gint gtk_scintilla_indic_get_style (GtkScintilla *sci, gint indic) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2081, (uptr_t)indic, 0);
}
inline void gtk_scintilla_indic_set_fore (GtkScintilla *sci, gint indic, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2082, (uptr_t)indic, (sptr_t)fore);
}
inline gint gtk_scintilla_indic_get_fore (GtkScintilla *sci, gint indic) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2083, (uptr_t)indic, 0);
}
inline void gtk_scintilla_indic_set_under (GtkScintilla *sci, gint indic, gboolean under) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2510, (uptr_t)indic, (sptr_t)under);
}
inline gboolean gtk_scintilla_indic_get_under (GtkScintilla *sci, gint indic) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2511, (uptr_t)indic, 0);
}
inline void gtk_scintilla_set_whitespace_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2084, (uptr_t)useSetting, (sptr_t)fore);
}
inline void gtk_scintilla_set_whitespace_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2085, (uptr_t)useSetting, (sptr_t)back);
}
inline void gtk_scintilla_set_whitespace_size (GtkScintilla *sci, gint size) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2086, (uptr_t)size, 0);
}
inline gint gtk_scintilla_get_whitespace_size (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2087, 0, 0);
}
inline void gtk_scintilla_set_line_state (GtkScintilla *sci, gint line, gint state) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2092, (uptr_t)line, (sptr_t)state);
}
inline gint gtk_scintilla_get_line_state (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2093, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_max_line_state (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2094, 0, 0);
}
inline gboolean gtk_scintilla_get_caret_line_visible (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2095, 0, 0);
}
inline void gtk_scintilla_set_caret_line_visible (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2096, (uptr_t)show, 0);
}
inline gint gtk_scintilla_get_caret_line_back (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2097, 0, 0);
}
inline void gtk_scintilla_set_caret_line_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2098, (uptr_t)back, 0);
}
inline void gtk_scintilla_auto_completion_show (GtkScintilla *sci, gint lenEntered, const gchar *itemList) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2100, (uptr_t)lenEntered, (sptr_t)itemList);
}
inline void gtk_scintilla_auto_completion_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2101, 0, 0);
}
inline gboolean gtk_scintilla_auto_completion_active (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2102, 0, 0);
}
inline gint gtk_scintilla_auto_completion_pos_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2103, 0, 0);
}
inline void gtk_scintilla_auto_completion_complete (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2104, 0, 0);
}
inline void gtk_scintilla_auto_completion_stops (GtkScintilla *sci, const gchar *characterSet) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2105, 0, (sptr_t)characterSet);
}
inline void gtk_scintilla_auto_completion_set_separator (GtkScintilla *sci, gint separatorCharacter) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2106, (uptr_t)separatorCharacter, 0);
}
inline gint gtk_scintilla_auto_completion_get_separator (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2107, 0, 0);
}
inline void gtk_scintilla_auto_completion_select (GtkScintilla *sci, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2108, 0, (sptr_t)text);
}
inline void gtk_scintilla_auto_completion_set_cancel_at_start (GtkScintilla *sci, gboolean cancel) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2110, (uptr_t)cancel, 0);
}
inline gboolean gtk_scintilla_auto_completion_get_cancel_at_start (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2111, 0, 0);
}
inline void gtk_scintilla_auto_completion_set_fill_ups (GtkScintilla *sci, const gchar *characterSet) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2112, 0, (sptr_t)characterSet);
}
inline void gtk_scintilla_auto_completion_set_choose_single (GtkScintilla *sci, gboolean chooseSingle) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2113, (uptr_t)chooseSingle, 0);
}
inline gboolean gtk_scintilla_auto_completion_get_choose_single (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2114, 0, 0);
}
inline void gtk_scintilla_auto_completion_set_ignore_case (GtkScintilla *sci, gboolean ignoreCase) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2115, (uptr_t)ignoreCase, 0);
}
inline gboolean gtk_scintilla_auto_completion_get_ignore_case (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2116, 0, 0);
}
inline void gtk_scintilla_user_list_show (GtkScintilla *sci, gint listType, const gchar *itemList) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2117, (uptr_t)listType, (sptr_t)itemList);
}
inline void gtk_scintilla_auto_completion_set_auto_hide (GtkScintilla *sci, gboolean autoHide) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2118, (uptr_t)autoHide, 0);
}
inline gboolean gtk_scintilla_auto_completion_get_auto_hide (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2119, 0, 0);
}
inline void gtk_scintilla_auto_completion_set_drop_rest_of_word (GtkScintilla *sci, gboolean dropRestOfWord) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2270, (uptr_t)dropRestOfWord, 0);
}
inline gboolean gtk_scintilla_auto_completion_get_drop_rest_of_word (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2271, 0, 0);
}
inline void gtk_scintilla_register_image (GtkScintilla *sci, gint type, const gchar *xpmData) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2405, (uptr_t)type, (sptr_t)xpmData);
}
inline void gtk_scintilla_clear_registered_images (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2408, 0, 0);
}
inline gint gtk_scintilla_auto_completion_get_type_separator (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2285, 0, 0);
}
inline void gtk_scintilla_auto_completion_set_type_separator (GtkScintilla *sci, gint separatorCharacter) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2286, (uptr_t)separatorCharacter, 0);
}
inline void gtk_scintilla_auto_completion_set_max_width (GtkScintilla *sci, gint characterCount) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2208, (uptr_t)characterCount, 0);
}
inline gint gtk_scintilla_auto_completion_get_max_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2209, 0, 0);
}
inline void gtk_scintilla_auto_completion_set_max_height (GtkScintilla *sci, gint rowCount) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2210, (uptr_t)rowCount, 0);
}
inline gint gtk_scintilla_auto_completion_get_max_height (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2211, 0, 0);
}
inline void gtk_scintilla_set_indent (GtkScintilla *sci, gint indentSize) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2122, (uptr_t)indentSize, 0);
}
inline gint gtk_scintilla_get_indent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2123, 0, 0);
}
inline void gtk_scintilla_set_use_tabs (GtkScintilla *sci, gboolean useTabs) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2124, (uptr_t)useTabs, 0);
}
inline gboolean gtk_scintilla_get_use_tabs (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2125, 0, 0);
}
inline void gtk_scintilla_set_line_indentation (GtkScintilla *sci, gint line, gint indentSize) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2126, (uptr_t)line, (sptr_t)indentSize);
}
inline gint gtk_scintilla_get_line_indentation (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2127, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_line_indent_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2128, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_column (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2129, (uptr_t)pos, 0);
}
inline void gtk_scintilla_set_h_scroll_bar (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2130, (uptr_t)show, 0);
}
inline gboolean gtk_scintilla_get_h_scroll_bar (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2131, 0, 0);
}
inline void gtk_scintilla_set_indentation_guides (GtkScintilla *sci, gint indentView) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2132, (uptr_t)indentView, 0);
}
inline gint gtk_scintilla_get_indentation_guides (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2133, 0, 0);
}
inline void gtk_scintilla_set_highlight_guide (GtkScintilla *sci, gint column) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2134, (uptr_t)column, 0);
}
inline gint gtk_scintilla_get_highlight_guide (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2135, 0, 0);
}
inline gint gtk_scintilla_get_line_end_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2136, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_code_page (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2137, 0, 0);
}
inline gint gtk_scintilla_get_caret_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2138, 0, 0);
}
inline gboolean gtk_scintilla_get_use_palette (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2139, 0, 0);
}
inline void gtk_scintilla_set_current_pos (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2141, (uptr_t)pos, 0);
}
inline void gtk_scintilla_set_selection_start (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2142, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_get_selection_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2143, 0, 0);
}
inline void gtk_scintilla_set_selection_end (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2144, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_get_selection_end (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2145, 0, 0);
}
inline void gtk_scintilla_set_print_magnification (GtkScintilla *sci, gint magnification) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2146, (uptr_t)magnification, 0);
}
inline gint gtk_scintilla_get_print_magnification (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2147, 0, 0);
}
inline void gtk_scintilla_set_print_colour_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2148, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_print_colour_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2149, 0, 0);
}
inline gint gtk_scintilla_format_range (GtkScintilla *sci, gboolean draw, struct Sci_RangeToFormat *fr) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2151, (uptr_t)draw, (sptr_t)fr);
}
inline gint gtk_scintilla_get_first_visible_line (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2152, 0, 0);
}
inline gint gtk_scintilla_get_line_count (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2154, 0, 0);
}
inline void gtk_scintilla_set_margin_left (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2155, 0, (sptr_t)pixelWidth);
}
inline gint gtk_scintilla_get_margin_left (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2156, 0, 0);
}
inline void gtk_scintilla_set_margin_right (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2157, 0, (sptr_t)pixelWidth);
}
inline gint gtk_scintilla_get_margin_right (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2158, 0, 0);
}
inline gboolean gtk_scintilla_get_modify (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2159, 0, 0);
}
inline void gtk_scintilla_set_sel (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2160, (uptr_t)start, (sptr_t)end);
}
inline gint gtk_scintilla_get_sel_text (GtkScintilla *sci, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2161, 0, (sptr_t)text);
}
inline void gtk_scintilla_hide_selection (GtkScintilla *sci, gboolean normal) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2163, (uptr_t)normal, 0);
}
inline gint gtk_scintilla_point_x_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2164, 0, (sptr_t)pos);
}
inline gint gtk_scintilla_point_y_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2165, 0, (sptr_t)pos);
}
inline gint gtk_scintilla_line_from_position (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2166, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_position_from_line (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2167, (uptr_t)line, 0);
}
inline void gtk_scintilla_line_scroll (GtkScintilla *sci, gint columns, gint lines) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2168, (uptr_t)columns, (sptr_t)lines);
}
inline void gtk_scintilla_scroll_caret (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2169, 0, 0);
}
inline void gtk_scintilla_null (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2172, 0, 0);
}
inline gboolean gtk_scintilla_can_paste (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2173, 0, 0);
}
inline gboolean gtk_scintilla_can_undo (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2174, 0, 0);
}
inline void gtk_scintilla_empty_undo_buffer (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2175, 0, 0);
}
inline void gtk_scintilla_undo (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2176, 0, 0);
}
inline void gtk_scintilla_cut (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2177, 0, 0);
}
inline void gtk_scintilla_copy (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2178, 0, 0);
}
inline void gtk_scintilla_paste (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2179, 0, 0);
}
inline void gtk_scintilla_clear (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2180, 0, 0);
}

inline gint gtk_scintilla_get_text_length (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2183, 0, 0);
}
inline gint gtk_scintilla_get_direct_function (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2184, 0, 0);
}
inline gint gtk_scintilla_get_direct_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2185, 0, 0);
}
inline void gtk_scintilla_set_overtype (GtkScintilla *sci, gboolean overtype) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2186, (uptr_t)overtype, 0);
}
inline gboolean gtk_scintilla_get_overtype (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2187, 0, 0);
}
inline void gtk_scintilla_set_caret_width (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2188, (uptr_t)pixelWidth, 0);
}
inline gint gtk_scintilla_get_caret_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2189, 0, 0);
}
inline void gtk_scintilla_call_tip_show (GtkScintilla *sci, gint pos, const gchar *definition) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2200, (uptr_t)pos, (sptr_t)definition);
}
inline void gtk_scintilla_call_tip_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2201, 0, 0);
}
inline gboolean gtk_scintilla_call_tip_active (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2202, 0, 0);
}
inline gint gtk_scintilla_call_tip_pos_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2203, 0, 0);
}
inline void gtk_scintilla_call_tip_set_hlt (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2204, (uptr_t)start, (sptr_t)end);
}
inline void gtk_scintilla_call_tip_set_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2205, (uptr_t)back, 0);
}
inline void gtk_scintilla_call_tip_set_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2206, (uptr_t)fore, 0);
}
inline void gtk_scintilla_call_tip_set_fore_hlt (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2207, (uptr_t)fore, 0);
}
inline void gtk_scintilla_call_tip_use_style (GtkScintilla *sci, gint tabSize) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2212, (uptr_t)tabSize, 0);
}
inline gint gtk_scintilla_visible_from_doc_line (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2220, (uptr_t)line, 0);
}
inline gint gtk_scintilla_doc_line_from_visible (GtkScintilla *sci, gint lineDisplay) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2221, (uptr_t)lineDisplay, 0);
}
inline gint gtk_scintilla_wrap_count (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2235, (uptr_t)line, 0);
}
inline void gtk_scintilla_set_fold_level (GtkScintilla *sci, gint line, gint level) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2222, (uptr_t)line, (sptr_t)level);
}
inline gint gtk_scintilla_get_fold_level (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2223, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_last_child (GtkScintilla *sci, gint line, gint level) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2224, (uptr_t)line, (sptr_t)level);
}
inline gint gtk_scintilla_get_fold_parent (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2225, (uptr_t)line, 0);
}
inline void gtk_scintilla_show_lines (GtkScintilla *sci, gint lineStart, gint lineEnd) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2226, (uptr_t)lineStart, (sptr_t)lineEnd);
}
inline void gtk_scintilla_hide_lines (GtkScintilla *sci, gint lineStart, gint lineEnd) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2227, (uptr_t)lineStart, (sptr_t)lineEnd);
}
inline gboolean gtk_scintilla_get_line_visible (GtkScintilla *sci, gint line) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2228, (uptr_t)line, 0);
}
inline void gtk_scintilla_set_fold_expanded (GtkScintilla *sci, gint line, gboolean expanded) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2229, (uptr_t)line, (sptr_t)expanded);
}
inline gboolean gtk_scintilla_get_fold_expanded (GtkScintilla *sci, gint line) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2230, (uptr_t)line, 0);
}
inline void gtk_scintilla_toggle_fold (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2231, (uptr_t)line, 0);
}
inline void gtk_scintilla_ensure_visible (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2232, (uptr_t)line, 0);
}
inline void gtk_scintilla_set_fold_flags (GtkScintilla *sci, gint flags) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2233, (uptr_t)flags, 0);
}
inline void gtk_scintilla_ensure_visible_enforce_policy (GtkScintilla *sci, gint line) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2234, (uptr_t)line, 0);
}
inline void gtk_scintilla_set_tab_indents (GtkScintilla *sci, gboolean tabIndents) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2260, (uptr_t)tabIndents, 0);
}
inline gboolean gtk_scintilla_get_tab_indents (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2261, 0, 0);
}
inline void gtk_scintilla_set_backspace_unindents (GtkScintilla *sci, gboolean bsUnIndents) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2262, (uptr_t)bsUnIndents, 0);
}
inline gboolean gtk_scintilla_get_backspace_unindents (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2263, 0, 0);
}
inline void gtk_scintilla_set_mouse_dwell_time (GtkScintilla *sci, gint periodMilliseconds) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2264, (uptr_t)periodMilliseconds, 0);
}
inline gint gtk_scintilla_get_mouse_dwell_time (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2265, 0, 0);
}
inline gint gtk_scintilla_word_start_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2266, (uptr_t)pos, (sptr_t)onlyWordCharacters);
}
inline gint gtk_scintilla_word_end_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2267, (uptr_t)pos, (sptr_t)onlyWordCharacters);
}
inline void gtk_scintilla_set_wrap_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2268, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_wrap_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2269, 0, 0);
}
inline void gtk_scintilla_set_wrap_visual_flags (GtkScintilla *sci, gint wrapVisualFlags) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2460, (uptr_t)wrapVisualFlags, 0);
}
inline gint gtk_scintilla_get_wrap_visual_flags (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2461, 0, 0);
}
inline void gtk_scintilla_set_wrap_visual_flags_location (GtkScintilla *sci, gint wrapVisualFlagsLocation) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2462, (uptr_t)wrapVisualFlagsLocation, 0);
}
inline gint gtk_scintilla_get_wrap_visual_flags_location (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2463, 0, 0);
}
inline void gtk_scintilla_set_wrap_start_indent (GtkScintilla *sci, gint indent) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2464, (uptr_t)indent, 0);
}
inline gint gtk_scintilla_get_wrap_start_indent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2465, 0, 0);
}
inline void gtk_scintilla_set_wrap_indent_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2472, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_wrap_indent_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2473, 0, 0);
}
inline void gtk_scintilla_set_layout_cache (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2272, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_layout_cache (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2273, 0, 0);
}
inline void gtk_scintilla_set_scroll_width (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2274, (uptr_t)pixelWidth, 0);
}
inline gint gtk_scintilla_get_scroll_width (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2275, 0, 0);
}
inline void gtk_scintilla_set_scroll_width_tracking (GtkScintilla *sci, gboolean tracking) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2516, (uptr_t)tracking, 0);
}
inline gboolean gtk_scintilla_get_scroll_width_tracking (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2517, 0, 0);
}
inline gint gtk_scintilla_text_width (GtkScintilla *sci, gint style, const gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2276, (uptr_t)style, (sptr_t)text);
}
inline void gtk_scintilla_set_end_at_last_line (GtkScintilla *sci, gboolean endAtLastLine) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2277, (uptr_t)endAtLastLine, 0);
}
inline gboolean gtk_scintilla_get_end_at_last_line (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2278, 0, 0);
}
inline gint gtk_scintilla_text_height (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2279, (uptr_t)line, 0);
}
inline void gtk_scintilla_set_vscrollbar (GtkScintilla *sci, gboolean show) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2280, (uptr_t)show, 0);
}
inline gboolean gtk_scintilla_get_vscrollbar (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2281, 0, 0);
}
inline gboolean gtk_scintilla_get_two_phase_draw (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2283, 0, 0);
}
inline void gtk_scintilla_set_two_phase_draw (GtkScintilla *sci, gboolean twoPhase) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2284, (uptr_t)twoPhase, 0);
}
inline void gtk_scintilla_set_font_quality (GtkScintilla *sci, gint fontQuality) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2611, (uptr_t)fontQuality, 0);
}
inline gint gtk_scintilla_get_font_quality (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2612, 0, 0);
}
inline void gtk_scintilla_set_first_visible_line (GtkScintilla *sci, gint lineDisplay) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2613, (uptr_t)lineDisplay, 0);
}
inline void gtk_scintilla_set_multi_paste (GtkScintilla *sci, gint multiPaste) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2614, (uptr_t)multiPaste, 0);
}
inline gint gtk_scintilla_get_multi_paste (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2615, 0, 0);
}
inline void gtk_scintilla_lines_join (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2288, 0, 0);
}
inline void gtk_scintilla_lines_split (GtkScintilla *sci, gint pixelWidth) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2289, (uptr_t)pixelWidth, 0);
}
inline void gtk_scintilla_set_fold_margin_colour (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2290, (uptr_t)useSetting, (sptr_t)back);
}
inline void gtk_scintilla_set_fold_margin_hi_colour (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2291, (uptr_t)useSetting, (sptr_t)fore);
}
inline void gtk_scintilla_line_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2300, 0, 0);
}
inline void gtk_scintilla_line_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2301, 0, 0);
}
inline void gtk_scintilla_line_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2302, 0, 0);
}
inline void gtk_scintilla_line_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2303, 0, 0);
}
inline void gtk_scintilla_char_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2304, 0, 0);
}
inline void gtk_scintilla_char_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2305, 0, 0);
}
inline void gtk_scintilla_char_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2306, 0, 0);
}
inline void gtk_scintilla_char_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2307, 0, 0);
}
inline void gtk_scintilla_word_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2308, 0, 0);
}
inline void gtk_scintilla_word_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2309, 0, 0);
}
inline void gtk_scintilla_word_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2310, 0, 0);
}
inline void gtk_scintilla_word_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2311, 0, 0);
}
inline void gtk_scintilla_home (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2312, 0, 0);
}
inline void gtk_scintilla_home_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2313, 0, 0);
}
inline void gtk_scintilla_line_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2314, 0, 0);
}
inline void gtk_scintilla_line_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2315, 0, 0);
}
inline void gtk_scintilla_document_start (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2316, 0, 0);
}
inline void gtk_scintilla_document_start_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2317, 0, 0);
}
inline void gtk_scintilla_document_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2318, 0, 0);
}
inline void gtk_scintilla_document_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2319, 0, 0);
}
inline void gtk_scintilla_page_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2320, 0, 0);
}
inline void gtk_scintilla_page_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2321, 0, 0);
}
inline void gtk_scintilla_page_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2322, 0, 0);
}
inline void gtk_scintilla_page_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2323, 0, 0);
}
inline void gtk_scintilla_edit_toggle_overtype (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2324, 0, 0);
}
inline void gtk_scintilla_cancel (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2325, 0, 0);
}
inline void gtk_scintilla_delete_back (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2326, 0, 0);
}
inline void gtk_scintilla_tab (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2327, 0, 0);
}
inline void gtk_scintilla_back_tab (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2328, 0, 0);
}
inline void gtk_scintilla_new_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2329, 0, 0);
}
inline void gtk_scintilla_form_feed (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2330, 0, 0);
}
inline void gtk_scintilla_visible_char_home (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2331, 0, 0);
}
inline void gtk_scintilla_visible_char_home_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2332, 0, 0);
}
inline void gtk_scintilla_zoom_in (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2333, 0, 0);
}
inline void gtk_scintilla_zoom_out (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2334, 0, 0);
}
inline void gtk_scintilla_del_word_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2335, 0, 0);
}
inline void gtk_scintilla_del_word_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2336, 0, 0);
}
inline void gtk_scintilla_del_word_right_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2518, 0, 0);
}
inline void gtk_scintilla_line_cut (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2337, 0, 0);
}
inline void gtk_scintilla_line_delete (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2338, 0, 0);
}
inline void gtk_scintilla_line_transpose (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2339, 0, 0);
}
inline void gtk_scintilla_line_duplicate (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2404, 0, 0);
}
inline void gtk_scintilla_lower_case (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2340, 0, 0);
}
inline void gtk_scintilla_upper_case (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2341, 0, 0);
}
inline void gtk_scintilla_line_scroll_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2342, 0, 0);
}
inline void gtk_scintilla_line_scroll_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2343, 0, 0);
}
inline void gtk_scintilla_delete_back_not_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2344, 0, 0);
}
inline void gtk_scintilla_home_display (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2345, 0, 0);
}
inline void gtk_scintilla_home_display_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2346, 0, 0);
}
inline void gtk_scintilla_line_end_display (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2347, 0, 0);
}
inline void gtk_scintilla_line_end_display_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2348, 0, 0);
}
inline void gtk_scintilla_home_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2349, 0, 0);
}
inline void gtk_scintilla_home_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2450, 0, 0);
}
inline void gtk_scintilla_line_end_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2451, 0, 0);
}
inline void gtk_scintilla_line_end_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2452, 0, 0);
}
inline void gtk_scintilla_visible_char_home_wrap (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2453, 0, 0);
}
inline void gtk_scintilla_visible_char_home_wrap_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2454, 0, 0);
}
inline void gtk_scintilla_line_copy (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2455, 0, 0);
}
inline void gtk_scintilla_move_caret_inside_view (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2401, 0, 0);
}
inline gint gtk_scintilla_line_length (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2350, (uptr_t)line, 0);
}
inline void gtk_scintilla_brace_highlight (GtkScintilla *sci, gint pos1, gint pos2) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2351, (uptr_t)pos1, (sptr_t)pos2);
}
inline void gtk_scintilla_brace_bad_light (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2352, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_brace_match (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2353, (uptr_t)pos, 0);
}
inline gboolean gtk_scintilla_get_view_eol (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2355, 0, 0);
}
inline void gtk_scintilla_set_view_eol (GtkScintilla *sci, gboolean visible) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2356, (uptr_t)visible, 0);
}
inline gint gtk_scintilla_get_doc_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2357, 0, 0);
}
inline void gtk_scintilla_set_doc_pointer (GtkScintilla *sci, gint pointer) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2358, 0, (sptr_t)pointer);
}
inline void gtk_scintilla_set_mod_event_mask (GtkScintilla *sci, gint mask) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2359, (uptr_t)mask, 0);
}
inline gint gtk_scintilla_get_edge_column (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2360, 0, 0);
}
inline void gtk_scintilla_set_edge_column (GtkScintilla *sci, gint column) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2361, (uptr_t)column, 0);
}
inline gint gtk_scintilla_get_edge_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2362, 0, 0);
}
inline void gtk_scintilla_set_edge_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2363, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_edge_colour (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2364, 0, 0);
}
inline void gtk_scintilla_set_edge_colour (GtkScintilla *sci, gint edgeColour) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2365, (uptr_t)edgeColour, 0);
}
inline gint gtk_scintilla_lines_on_screen (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2370, 0, 0);
}
inline void gtk_scintilla_use_pop_up (GtkScintilla *sci, gboolean allowPopUp) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2371, (uptr_t)allowPopUp, 0);
}
inline gboolean gtk_scintilla_selection_is_rectangle (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2372, 0, 0);
}
inline void gtk_scintilla_set_zoom (GtkScintilla *sci, gint zoom) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2373, (uptr_t)zoom, 0);
}
inline gint gtk_scintilla_get_zoom (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2374, 0, 0);
}
inline gint gtk_scintilla_create_document (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2375, 0, 0);
}
inline void gtk_scintilla_add_ref_document (GtkScintilla *sci, gint doc) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2376, 0, (sptr_t)doc);
}
inline void gtk_scintilla_release_document (GtkScintilla *sci, gint doc) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2377, 0, (sptr_t)doc);
}
inline gint gtk_scintilla_get_mod_event_mask (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2378, 0, 0);
}
inline void gtk_scintilla_set_focus (GtkScintilla *sci, gboolean focus) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2380, (uptr_t)focus, 0);
}
inline gboolean gtk_scintilla_get_focus (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2381, 0, 0);
}
inline void gtk_scintilla_set_status (GtkScintilla *sci, gint statusCode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2382, (uptr_t)statusCode, 0);
}
inline gint gtk_scintilla_get_status (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2383, 0, 0);
}
inline void gtk_scintilla_set_mouse_down_captures (GtkScintilla *sci, gboolean captures) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2384, (uptr_t)captures, 0);
}
inline gboolean gtk_scintilla_get_mouse_down_captures (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2385, 0, 0);
}
inline void gtk_scintilla_set_cursor (GtkScintilla *sci, gint cursorType) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2386, (uptr_t)cursorType, 0);
}
inline gint gtk_scintilla_get_cursor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2387, 0, 0);
}
inline void gtk_scintilla_set_control_char_symbol (GtkScintilla *sci, gint symbol) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2388, (uptr_t)symbol, 0);
}
inline gint gtk_scintilla_get_control_char_symbol (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2389, 0, 0);
}
inline void gtk_scintilla_word_part_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2390, 0, 0);
}
inline void gtk_scintilla_word_part_left_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2391, 0, 0);
}
inline void gtk_scintilla_word_part_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2392, 0, 0);
}
inline void gtk_scintilla_word_part_right_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2393, 0, 0);
}
inline void gtk_scintilla_set_visible_policy (GtkScintilla *sci, gint visiblePolicy, gint visibleSlop) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2394, (uptr_t)visiblePolicy, (sptr_t)visibleSlop);
}
inline void gtk_scintilla_del_line_left (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2395, 0, 0);
}
inline void gtk_scintilla_del_line_right (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2396, 0, 0);
}
inline void gtk_scintilla_set_x_offset (GtkScintilla *sci, gint newOffset) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2397, (uptr_t)newOffset, 0);
}
inline gint gtk_scintilla_get_x_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2398, 0, 0);
}
inline void gtk_scintilla_choose_caret_x (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2399, 0, 0);
}
inline void gtk_scintilla_grab_focus (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2400, 0, 0);
}
inline void gtk_scintilla_set_x_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2402, (uptr_t)caretPolicy, (sptr_t)caretSlop);
}
inline void gtk_scintilla_set_y_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2403, (uptr_t)caretPolicy, (sptr_t)caretSlop);
}
inline void gtk_scintilla_set_print_wrap_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2406, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_print_wrap_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2407, 0, 0);
}
inline void gtk_scintilla_set_hotspot_active_fore (GtkScintilla *sci, gboolean useSetting, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2410, (uptr_t)useSetting, (sptr_t)fore);
}
inline gint gtk_scintilla_get_hotspot_active_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2494, 0, 0);
}
inline void gtk_scintilla_set_hotspot_active_back (GtkScintilla *sci, gboolean useSetting, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2411, (uptr_t)useSetting, (sptr_t)back);
}
inline gint gtk_scintilla_get_hotspot_active_back (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2495, 0, 0);
}
inline void gtk_scintilla_set_hotspot_active_underline (GtkScintilla *sci, gboolean underline) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2412, (uptr_t)underline, 0);
}
inline gboolean gtk_scintilla_get_hotspot_active_underline (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2496, 0, 0);
}
inline void gtk_scintilla_set_hotspot_single_line (GtkScintilla *sci, gboolean singleLine) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2421, (uptr_t)singleLine, 0);
}
inline gboolean gtk_scintilla_get_hotspot_single_line (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2497, 0, 0);
}
inline void gtk_scintilla_para_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2413, 0, 0);
}
inline void gtk_scintilla_para_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2414, 0, 0);
}
inline void gtk_scintilla_para_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2415, 0, 0);
}
inline void gtk_scintilla_para_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2416, 0, 0);
}
inline gint gtk_scintilla_position_before (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2417, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_position_after (GtkScintilla *sci, gint pos) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2418, (uptr_t)pos, 0);
}
inline void gtk_scintilla_copy_range (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2419, (uptr_t)start, (sptr_t)end);
}
inline void gtk_scintilla_copy_text (GtkScintilla *sci, gint length, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2420, (uptr_t)length, (sptr_t)text);
}
inline void gtk_scintilla_set_selection_mode (GtkScintilla *sci, gint mode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2422, (uptr_t)mode, 0);
}
inline gint gtk_scintilla_get_selection_mode (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2423, 0, 0);
}
inline gint gtk_scintilla_get_line_sel_start_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2424, (uptr_t)line, 0);
}
inline gint gtk_scintilla_get_line_sel_end_position (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2425, (uptr_t)line, 0);
}
inline void gtk_scintilla_line_down_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2426, 0, 0);
}
inline void gtk_scintilla_line_up_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2427, 0, 0);
}
inline void gtk_scintilla_char_left_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2428, 0, 0);
}
inline void gtk_scintilla_char_right_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2429, 0, 0);
}
inline void gtk_scintilla_home_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2430, 0, 0);
}
inline void gtk_scintilla_visible_char_home_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2431, 0, 0);
}
inline void gtk_scintilla_line_end_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2432, 0, 0);
}
inline void gtk_scintilla_page_up_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2433, 0, 0);
}
inline void gtk_scintilla_page_down_rect_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2434, 0, 0);
}
inline void gtk_scintilla_stuttered_page_up (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2435, 0, 0);
}
inline void gtk_scintilla_stuttered_page_up_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2436, 0, 0);
}
inline void gtk_scintilla_stuttered_page_down (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2437, 0, 0);
}
inline void gtk_scintilla_stuttered_page_down_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2438, 0, 0);
}
inline void gtk_scintilla_word_left_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2439, 0, 0);
}
inline void gtk_scintilla_word_left_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2440, 0, 0);
}
inline void gtk_scintilla_word_right_end (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2441, 0, 0);
}
inline void gtk_scintilla_word_right_end_extend (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2442, 0, 0);
}
inline void gtk_scintilla_set_whitespace_chars (GtkScintilla *sci, const gchar *characters) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2443, 0, (sptr_t)characters);
}
inline void gtk_scintilla_set_chars_default (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2444, 0, 0);
}
inline gint gtk_scintilla_auto_completion_get_current (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2445, 0, 0);
}
inline gint gtk_scintilla_auto_completion_get_current_text (GtkScintilla *sci, gchar *s) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2610, 0, (sptr_t)s);
}
inline gint gtk_scintilla_find_column (GtkScintilla *sci, gint line, gint column) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2456, (uptr_t)line, (sptr_t)column);
}
inline gint gtk_scintilla_get_caret_sticky (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2457, 0, 0);
}
inline void gtk_scintilla_set_caret_sticky (GtkScintilla *sci, gint useCaretStickyBehaviour) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2458, (uptr_t)useCaretStickyBehaviour, 0);
}
inline void gtk_scintilla_toggle_caret_sticky (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2459, 0, 0);
}
inline void gtk_scintilla_set_paste_convert_endings (GtkScintilla *sci, gboolean convert) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2467, (uptr_t)convert, 0);
}
inline gboolean gtk_scintilla_get_paste_convert_endings (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2468, 0, 0);
}
inline void gtk_scintilla_selection_duplicate (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2469, 0, 0);
}
inline void gtk_scintilla_set_caret_line_back_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2470, (uptr_t)alpha, 0);
}
inline gint gtk_scintilla_get_caret_line_back_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2471, 0, 0);
}
inline void gtk_scintilla_set_caret_style (GtkScintilla *sci, gint caretStyle) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2512, (uptr_t)caretStyle, 0);
}
inline gint gtk_scintilla_get_caret_style (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2513, 0, 0);
}
inline void gtk_scintilla_set_indicator_current (GtkScintilla *sci, gint indicator) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2500, (uptr_t)indicator, 0);
}
inline gint gtk_scintilla_get_indicator_current (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2501, 0, 0);
}
inline void gtk_scintilla_set_indicator_value (GtkScintilla *sci, gint value) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2502, (uptr_t)value, 0);
}
inline gint gtk_scintilla_get_indicator_value (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2503, 0, 0);
}
inline void gtk_scintilla_indicator_fill_range (GtkScintilla *sci, gint position, gint fillLength) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2504, (uptr_t)position, (sptr_t)fillLength);
}
inline void gtk_scintilla_indicator_clear_range (GtkScintilla *sci, gint position, gint clearLength) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2505, (uptr_t)position, (sptr_t)clearLength);
}
inline gint gtk_scintilla_indicator_all_on_for (GtkScintilla *sci, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2506, (uptr_t)position, 0);
}
inline gint gtk_scintilla_indicator_value_at (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2507, (uptr_t)indicator, (sptr_t)position);
}
inline gint gtk_scintilla_indicator_start (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2508, (uptr_t)indicator, (sptr_t)position);
}
inline gint gtk_scintilla_indicator_end (GtkScintilla *sci, gint indicator, gint position) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2509, (uptr_t)indicator, (sptr_t)position);
}
inline void gtk_scintilla_set_position_cache (GtkScintilla *sci, gint size) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2514, (uptr_t)size, 0);
}
inline gint gtk_scintilla_get_position_cache (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2515, 0, 0);
}
inline void gtk_scintilla_copy_allow_line (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2519, 0, 0);
}
inline gint gtk_scintilla_get_character_pointer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2520, 0, 0);
}
inline void gtk_scintilla_set_keys_unicode (GtkScintilla *sci, gboolean keysUnicode) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2521, (uptr_t)keysUnicode, 0);
}
inline gboolean gtk_scintilla_get_keys_unicode (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2522, 0, 0);
}
inline void gtk_scintilla_indic_set_alpha (GtkScintilla *sci, gint indicator, gint alpha) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2523, (uptr_t)indicator, (sptr_t)alpha);
}
inline gint gtk_scintilla_indic_get_alpha (GtkScintilla *sci, gint indicator) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2524, (uptr_t)indicator, 0);
}
inline void gtk_scintilla_set_extra_ascent (GtkScintilla *sci, gint extraAscent) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2525, (uptr_t)extraAscent, 0);
}
inline gint gtk_scintilla_get_extra_ascent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2526, 0, 0);
}
inline void gtk_scintilla_set_extra_descent (GtkScintilla *sci, gint extraDescent) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2527, (uptr_t)extraDescent, 0);
}
inline gint gtk_scintilla_get_extra_descent (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2528, 0, 0);
}
inline gint gtk_scintilla_marker_symbol_defined (GtkScintilla *sci, gint markerNumber) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2529, (uptr_t)markerNumber, 0);
}
inline void gtk_scintilla_margin_set_text (GtkScintilla *sci, gint line, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2530, (uptr_t)line, (sptr_t)text);
}
inline gint gtk_scintilla_margin_get_text (GtkScintilla *sci, gint line, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2531, (uptr_t)line, (sptr_t)text);
}
inline void gtk_scintilla_margin_set_style (GtkScintilla *sci, gint line, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2532, (uptr_t)line, (sptr_t)style);
}
inline gint gtk_scintilla_margin_get_style (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2533, (uptr_t)line, 0);
}
inline void gtk_scintilla_margin_set_styles (GtkScintilla *sci, gint line, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2534, (uptr_t)line, (sptr_t)styles);
}
inline gint gtk_scintilla_margin_get_styles (GtkScintilla *sci, gint line, gchar *styles) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2535, (uptr_t)line, (sptr_t)styles);
}
inline void gtk_scintilla_margin_text_clear_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2536, 0, 0);
}
inline void gtk_scintilla_margin_set_style_offset (GtkScintilla *sci, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2537, (uptr_t)style, 0);
}
inline gint gtk_scintilla_margin_get_style_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2538, 0, 0);
}
inline void gtk_scintilla_annotation_set_text (GtkScintilla *sci, gint line, const gchar *text) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2540, (uptr_t)line, (sptr_t)text);
}
inline gint gtk_scintilla_annotation_get_text (GtkScintilla *sci, gint line, gchar *text) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2541, (uptr_t)line, (sptr_t)text);
}
inline void gtk_scintilla_annotation_set_style (GtkScintilla *sci, gint line, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2542, (uptr_t)line, (sptr_t)style);
}
inline gint gtk_scintilla_annotation_get_style (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2543, (uptr_t)line, 0);
}
inline void gtk_scintilla_annotation_set_styles (GtkScintilla *sci, gint line, const gchar *styles) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2544, (uptr_t)line, (sptr_t)styles);
}
inline gint gtk_scintilla_annotation_get_styles (GtkScintilla *sci, gint line, gchar *styles) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2545, (uptr_t)line, (sptr_t)styles);
}
inline gint gtk_scintilla_annotation_get_lines (GtkScintilla *sci, gint line) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2546, (uptr_t)line, 0);
}
inline void gtk_scintilla_annotation_clear_all (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2547, 0, 0);
}
inline void gtk_scintilla_annotation_set_visible (GtkScintilla *sci, gint visible) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2548, (uptr_t)visible, 0);
}
inline gint gtk_scintilla_annotation_get_visible (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2549, 0, 0);
}
inline void gtk_scintilla_annotation_set_style_offset (GtkScintilla *sci, gint style) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2550, (uptr_t)style, 0);
}
inline gint gtk_scintilla_annotation_get_style_offset (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2551, 0, 0);
}
inline void gtk_scintilla_add_undo_action (GtkScintilla *sci, gint token, gint flags) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2560, (uptr_t)token, (sptr_t)flags);
}
inline gint gtk_scintilla_char_position_from_point (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2561, (uptr_t)x, (sptr_t)y);
}
inline gint gtk_scintilla_char_position_from_point_close (GtkScintilla *sci, gint x, gint y) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2562, (uptr_t)x, (sptr_t)y);
}
inline void gtk_scintilla_set_multiple_selection (GtkScintilla *sci, gboolean multipleSelection) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2563, (uptr_t)multipleSelection, 0);
}
inline gboolean gtk_scintilla_get_multiple_selection (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2564, 0, 0);
}
inline void gtk_scintilla_set_additional_selection_typing (GtkScintilla *sci, gboolean additionalSelectionTyping) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2565, (uptr_t)additionalSelectionTyping, 0);
}
inline gboolean gtk_scintilla_get_additional_selection_typing (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2566, 0, 0);
}
inline void gtk_scintilla_set_additional_carets_blink (GtkScintilla *sci, gboolean additionalCaretsBlink) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2567, (uptr_t)additionalCaretsBlink, 0);
}
inline gboolean gtk_scintilla_get_additional_carets_blink (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2568, 0, 0);
}
inline void gtk_scintilla_set_additional_carets_visible (GtkScintilla *sci, gboolean additionalCaretsBlink) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2608, (uptr_t)additionalCaretsBlink, 0);
}
inline gboolean gtk_scintilla_get_additional_carets_visible (GtkScintilla *sci) {
	return (gboolean)scintilla_send_message(SCINTILLA(sci->scintilla), 2609, 0, 0);
}
inline gint gtk_scintilla_get_selections (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2570, 0, 0);
}
inline void gtk_scintilla_clear_selections (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2571, 0, 0);
}
inline gint gtk_scintilla_set_selection (GtkScintilla *sci, gint caret, gint anchor) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2572, (uptr_t)caret, (sptr_t)anchor);
}
inline gint gtk_scintilla_add_selection (GtkScintilla *sci, gint caret, gint anchor) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2573, (uptr_t)caret, (sptr_t)anchor);
}
inline void gtk_scintilla_set_main_selection (GtkScintilla *sci, gint selection) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2574, (uptr_t)selection, 0);
}
inline gint gtk_scintilla_get_main_selection (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2575, 0, 0);
}
inline void gtk_scintilla_set_selection_n_caret (GtkScintilla *sci, gint selection, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2576, (uptr_t)selection, (sptr_t)pos);
}
inline gint gtk_scintilla_get_selection_n_caret (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2577, (uptr_t)selection, 0);
}
inline void gtk_scintilla_set_selection_n_anchor (GtkScintilla *sci, gint selection, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2578, (uptr_t)selection, (sptr_t)posAnchor);
}
inline gint gtk_scintilla_get_selection_n_anchor (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2579, (uptr_t)selection, 0);
}
inline void gtk_scintilla_set_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection, gint space) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2580, (uptr_t)selection, (sptr_t)space);
}
inline gint gtk_scintilla_get_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2581, (uptr_t)selection, 0);
}
inline void gtk_scintilla_set_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection, gint space) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2582, (uptr_t)selection, (sptr_t)space);
}
inline gint gtk_scintilla_get_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2583, (uptr_t)selection, 0);
}
inline void gtk_scintilla_set_selection_n_start (GtkScintilla *sci, gint selection, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2584, (uptr_t)selection, (sptr_t)pos);
}
inline gint gtk_scintilla_get_selection_n_start (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2585, (uptr_t)selection, 0);
}
inline gint gtk_scintilla_get_selection_n_end (GtkScintilla *sci, gint selection) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2587, (uptr_t)selection, 0);
}
inline void gtk_scintilla_set_rectangular_selection_caret (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2588, (uptr_t)pos, 0);
}
inline gint gtk_scintilla_get_rectangular_selection_caret (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2589, 0, 0);
}
inline void gtk_scintilla_set_rectangular_selection_anchor (GtkScintilla *sci, gint posAnchor) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2590, (uptr_t)posAnchor, 0);
}
inline gint gtk_scintilla_get_rectangular_selection_anchor (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2591, 0, 0);
}
inline void gtk_scintilla_set_rectangular_selection_caret_virtual_space (GtkScintilla *sci, gint space) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2592, (uptr_t)space, 0);
}
inline gint gtk_scintilla_get_rectangular_selection_caret_virtual_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2593, 0, 0);
}
inline void gtk_scintilla_set_rectangular_selection_anchor_virtual_space (GtkScintilla *sci, gint space) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2594, (uptr_t)space, 0);
}
inline gint gtk_scintilla_get_rectangular_selection_anchor_virtual_space (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2595, 0, 0);
}
inline void gtk_scintilla_set_virtual_space_options (GtkScintilla *sci, gint virtualSpaceOptions) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2596, (uptr_t)virtualSpaceOptions, 0);
}
inline gint gtk_scintilla_get_virtual_space_options (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2597, 0, 0);
}
inline void gtk_scintilla_set_rectangular_selection_modifier (GtkScintilla *sci, gint modifier) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2598, (uptr_t)modifier, 0);
}
inline gint gtk_scintilla_get_rectangular_selection_modifier (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2599, 0, 0);
}
inline void gtk_scintilla_set_additional_sel_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2600, (uptr_t)fore, 0);
}
inline void gtk_scintilla_set_additional_sel_back (GtkScintilla *sci, gint back) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2601, (uptr_t)back, 0);
}
inline void gtk_scintilla_set_additional_sel_alpha (GtkScintilla *sci, gint alpha) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2602, (uptr_t)alpha, 0);
}
inline gint gtk_scintilla_get_additional_sel_alpha (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2603, 0, 0);
}
inline void gtk_scintilla_set_additional_caret_fore (GtkScintilla *sci, gint fore) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2604, (uptr_t)fore, 0);
}
inline gint gtk_scintilla_get_additional_caret_fore (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2605, 0, 0);
}
inline void gtk_scintilla_rotate_selection (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2606, 0, 0);
}
inline void gtk_scintilla_swap_main_anchor_caret (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2607, 0, 0);
}
inline void gtk_scintilla_start_record (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 3001, 0, 0);
}
inline void gtk_scintilla_stop_record (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 3002, 0, 0);
}
inline void gtk_scintilla_set_lexer (GtkScintilla *sci, gint lexer) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4001, (uptr_t)lexer, 0);
}
inline gint gtk_scintilla_get_lexer (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4002, 0, 0);
}
inline void gtk_scintilla_colourise (GtkScintilla *sci, gint start, gint end) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4003, (uptr_t)start, (sptr_t)end);
}
inline void gtk_scintilla_set_lexer_property (GtkScintilla *sci, const gchar *key, const gchar *value) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4004, (uptr_t)key, (sptr_t)value);
}
inline void gtk_scintilla_set_keywords (GtkScintilla *sci, gint keywordSet, const gchar *keyWords) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4005, (uptr_t)keywordSet, (sptr_t)keyWords);
}
inline void gtk_scintilla_set_lexer_language (GtkScintilla *sci, const gchar *language) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4006, 0, (sptr_t)language);
}
inline void gtk_scintilla_load_lexer_library (GtkScintilla *sci, const gchar *path) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 4007, 0, (sptr_t)path);
}
inline gint gtk_scintilla_get_lexer_property (GtkScintilla *sci, const gchar *key, gchar *buf) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4008, (uptr_t)key, (sptr_t)buf);
}
inline gint gtk_scintilla_get_lexer_property_expanded (GtkScintilla *sci, const gchar *key, gchar *buf) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4009, (uptr_t)key, (sptr_t)buf);
}
inline gint gtk_scintilla_get_lexer_property_int (GtkScintilla *sci, const gchar *key) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4010, (uptr_t)key, 0);
}
inline gint gtk_scintilla_get_style_bits_needed (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4011, 0, 0);
}

gchar *gtk_scintilla_get_lexer_language (GtkScintilla *sci) {
	gint len = (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 4012, 0, 0);
	gchar *tmp = g_malloc0(len+1);
	scintilla_send_message(SCINTILLA(sci->scintilla), 4012, 0, (sptr_t)tmp);
	return tmp;
}


