<?xml version="1.0"?>
<api version="1.0">
	<namespace name="GtkScintilla">
		<function name="color_spec_to_int" symbol="color_spec_to_int">
			<return-type type="gint"/>
			<parameters>
				<parameter name="color_spec" type="gchar*"/>
			</parameters>
		</function>
		<function name="int_to_color_spec" symbol="int_to_color_spec">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="int_color" type="gint"/>
			</parameters>
		</function>
		<struct name="GtkScintilla">
			<method name="add_ref_document" symbol="gtk_scintilla_add_ref_document">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="doc" type="gint"/>
				</parameters>
			</method>
			<method name="add_selection" symbol="gtk_scintilla_add_selection">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="caret" type="gint"/>
					<parameter name="anchor" type="gint"/>
				</parameters>
			</method>
			<method name="add_styled_text" symbol="gtk_scintilla_add_styled_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="guint"/>
					<parameter name="styled_text" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_text" symbol="gtk_scintilla_add_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="guint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_undo_action" symbol="gtk_scintilla_add_undo_action">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="token" type="gint"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="allocate" symbol="gtk_scintilla_allocate">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="bytes" type="guint"/>
				</parameters>
			</method>
			<method name="annotation_clear_all" symbol="gtk_scintilla_annotation_clear_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="annotation_get_lines" symbol="gtk_scintilla_annotation_get_lines">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="annotation_get_style" symbol="gtk_scintilla_annotation_get_style">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="annotation_get_style_offset" symbol="gtk_scintilla_annotation_get_style_offset">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="annotation_get_styles" symbol="gtk_scintilla_annotation_get_styles">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="styles" type="gchar*"/>
				</parameters>
			</method>
			<method name="annotation_get_text" symbol="gtk_scintilla_annotation_get_text">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="annotation_get_visible" symbol="gtk_scintilla_annotation_get_visible">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="annotation_set_style" symbol="gtk_scintilla_annotation_set_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="annotation_set_style_offset" symbol="gtk_scintilla_annotation_set_style_offset">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="annotation_set_styles" symbol="gtk_scintilla_annotation_set_styles">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="styles" type="gchar*"/>
				</parameters>
			</method>
			<method name="annotation_set_text" symbol="gtk_scintilla_annotation_set_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="annotation_set_visible" symbol="gtk_scintilla_annotation_set_visible">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="visible" type="gint"/>
				</parameters>
			</method>
			<method name="annotation_visible_get_type" symbol="gtk_scintilla_annotation_visible_get_type">
				<return-type type="GType"/>
			</method>
			<method name="append_text" symbol="gtk_scintilla_append_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="guint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="assign_cmd_key" symbol="gtk_scintilla_assign_cmd_key">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="km" type="gulong"/>
					<parameter name="msg" type="gint"/>
				</parameters>
			</method>
			<method name="auto_completion_active" symbol="gtk_scintilla_auto_completion_active">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_cancel" symbol="gtk_scintilla_auto_completion_cancel">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_complete" symbol="gtk_scintilla_auto_completion_complete">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_auto_hide" symbol="gtk_scintilla_auto_completion_get_auto_hide">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_cancel_at_start" symbol="gtk_scintilla_auto_completion_get_cancel_at_start">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_choose_single" symbol="gtk_scintilla_auto_completion_get_choose_single">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_current" symbol="gtk_scintilla_auto_completion_get_current">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_current_text" symbol="gtk_scintilla_auto_completion_get_current_text">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="s" type="gchar*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_drop_rest_of_word" symbol="gtk_scintilla_auto_completion_get_drop_rest_of_word">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_ignore_case" symbol="gtk_scintilla_auto_completion_get_ignore_case">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_max_height" symbol="gtk_scintilla_auto_completion_get_max_height">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_max_width" symbol="gtk_scintilla_auto_completion_get_max_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_separator" symbol="gtk_scintilla_auto_completion_get_separator">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_get_type_separator" symbol="gtk_scintilla_auto_completion_get_type_separator">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_pos_start" symbol="gtk_scintilla_auto_completion_pos_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="auto_completion_select" symbol="gtk_scintilla_auto_completion_select">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="auto_completion_set_auto_hide" symbol="gtk_scintilla_auto_completion_set_auto_hide">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="autoHide" type="gboolean"/>
				</parameters>
			</method>
			<method name="auto_completion_set_cancel_at_start" symbol="gtk_scintilla_auto_completion_set_cancel_at_start">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="cancel" type="gboolean"/>
				</parameters>
			</method>
			<method name="auto_completion_set_choose_single" symbol="gtk_scintilla_auto_completion_set_choose_single">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="chooseSingle" type="gboolean"/>
				</parameters>
			</method>
			<method name="auto_completion_set_drop_rest_of_word" symbol="gtk_scintilla_auto_completion_set_drop_rest_of_word">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="dropRestOfWord" type="gboolean"/>
				</parameters>
			</method>
			<method name="auto_completion_set_fill_ups" symbol="gtk_scintilla_auto_completion_set_fill_ups">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="characterSet" type="gchar*"/>
				</parameters>
			</method>
			<method name="auto_completion_set_ignore_case" symbol="gtk_scintilla_auto_completion_set_ignore_case">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="ignoreCase" type="gboolean"/>
				</parameters>
			</method>
			<method name="auto_completion_set_max_height" symbol="gtk_scintilla_auto_completion_set_max_height">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="rowCount" type="gint"/>
				</parameters>
			</method>
			<method name="auto_completion_set_max_width" symbol="gtk_scintilla_auto_completion_set_max_width">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="characterCount" type="gint"/>
				</parameters>
			</method>
			<method name="auto_completion_set_separator" symbol="gtk_scintilla_auto_completion_set_separator">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="separatorCharacter" type="gint"/>
				</parameters>
			</method>
			<method name="auto_completion_set_type_separator" symbol="gtk_scintilla_auto_completion_set_type_separator">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="separatorCharacter" type="gint"/>
				</parameters>
			</method>
			<method name="auto_completion_show" symbol="gtk_scintilla_auto_completion_show">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lenEntered" type="gint"/>
					<parameter name="itemList" type="gchar*"/>
				</parameters>
			</method>
			<method name="auto_completion_stops" symbol="gtk_scintilla_auto_completion_stops">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="characterSet" type="gchar*"/>
				</parameters>
			</method>
			<method name="back_tab" symbol="gtk_scintilla_back_tab">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="begin_undo_action" symbol="gtk_scintilla_begin_undo_action">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="brace_bad_light" symbol="gtk_scintilla_brace_bad_light">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="brace_highlight" symbol="gtk_scintilla_brace_highlight">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos1" type="gint"/>
					<parameter name="pos2" type="gint"/>
				</parameters>
			</method>
			<method name="brace_match" symbol="gtk_scintilla_brace_match">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="call_tip_active" symbol="gtk_scintilla_call_tip_active">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="call_tip_cancel" symbol="gtk_scintilla_call_tip_cancel">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="call_tip_pos_start" symbol="gtk_scintilla_call_tip_pos_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="call_tip_set_back" symbol="gtk_scintilla_call_tip_set_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="call_tip_set_fore" symbol="gtk_scintilla_call_tip_set_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="call_tip_set_fore_hlt" symbol="gtk_scintilla_call_tip_set_fore_hlt">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="call_tip_set_hlt" symbol="gtk_scintilla_call_tip_set_hlt">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start" type="gint"/>
					<parameter name="end" type="gint"/>
				</parameters>
			</method>
			<method name="call_tip_show" symbol="gtk_scintilla_call_tip_show">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
					<parameter name="definition" type="gchar*"/>
				</parameters>
			</method>
			<method name="call_tip_use_style" symbol="gtk_scintilla_call_tip_use_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="tabSize" type="gint"/>
				</parameters>
			</method>
			<method name="can_paste" symbol="gtk_scintilla_can_paste">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="can_redo" symbol="gtk_scintilla_can_redo">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="can_undo" symbol="gtk_scintilla_can_undo">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="cancel" symbol="gtk_scintilla_cancel">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="caret_policy_get_type" symbol="gtk_scintilla_caret_policy_get_type">
				<return-type type="GType"/>
			</method>
			<method name="caret_sticky_get_type" symbol="gtk_scintilla_caret_sticky_get_type">
				<return-type type="GType"/>
			</method>
			<method name="caret_style_get_type" symbol="gtk_scintilla_caret_style_get_type">
				<return-type type="GType"/>
			</method>
			<method name="case_get_type" symbol="gtk_scintilla_case_get_type">
				<return-type type="GType"/>
			</method>
			<method name="char_left" symbol="gtk_scintilla_char_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="char_left_extend" symbol="gtk_scintilla_char_left_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="char_left_rect_extend" symbol="gtk_scintilla_char_left_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="char_position_from_point" symbol="gtk_scintilla_char_position_from_point">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
				</parameters>
			</method>
			<method name="char_position_from_point_close" symbol="gtk_scintilla_char_position_from_point_close">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
				</parameters>
			</method>
			<method name="char_right" symbol="gtk_scintilla_char_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="char_right_extend" symbol="gtk_scintilla_char_right_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="char_right_rect_extend" symbol="gtk_scintilla_char_right_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="character_set_get_type" symbol="gtk_scintilla_character_set_get_type">
				<return-type type="GType"/>
			</method>
			<method name="choose_caret_x" symbol="gtk_scintilla_choose_caret_x">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear" symbol="gtk_scintilla_clear">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear_all" symbol="gtk_scintilla_clear_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear_all_cmd_keys" symbol="gtk_scintilla_clear_all_cmd_keys">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear_cmd_key" symbol="gtk_scintilla_clear_cmd_key">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="km" type="gulong"/>
				</parameters>
			</method>
			<method name="clear_document_style" symbol="gtk_scintilla_clear_document_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear_registered_images" symbol="gtk_scintilla_clear_registered_images">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="clear_selections" symbol="gtk_scintilla_clear_selections">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="colourise" symbol="gtk_scintilla_colourise">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start" type="gint"/>
					<parameter name="end" type="gint"/>
				</parameters>
			</method>
			<method name="convert_eols" symbol="gtk_scintilla_convert_eols">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="eolMode" type="gint"/>
				</parameters>
			</method>
			<method name="copy" symbol="gtk_scintilla_copy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="copy_allow_line" symbol="gtk_scintilla_copy_allow_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="copy_range" symbol="gtk_scintilla_copy_range">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start" type="gint"/>
					<parameter name="end" type="gint"/>
				</parameters>
			</method>
			<method name="copy_text" symbol="gtk_scintilla_copy_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="create_document" symbol="gtk_scintilla_create_document">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="cursor_shape_get_type" symbol="gtk_scintilla_cursor_shape_get_type">
				<return-type type="GType"/>
			</method>
			<method name="cut" symbol="gtk_scintilla_cut">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="del_line_left" symbol="gtk_scintilla_del_line_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="del_line_right" symbol="gtk_scintilla_del_line_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="del_word_left" symbol="gtk_scintilla_del_word_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="del_word_right" symbol="gtk_scintilla_del_word_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="del_word_right_end" symbol="gtk_scintilla_del_word_right_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="delete_back" symbol="gtk_scintilla_delete_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="delete_back_not_line" symbol="gtk_scintilla_delete_back_not_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="doc_line_from_visible" symbol="gtk_scintilla_doc_line_from_visible">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineDisplay" type="gint"/>
				</parameters>
			</method>
			<method name="document_end" symbol="gtk_scintilla_document_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="document_end_extend" symbol="gtk_scintilla_document_end_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="document_start" symbol="gtk_scintilla_document_start">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="document_start_extend" symbol="gtk_scintilla_document_start_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="edge_visual_style_get_type" symbol="gtk_scintilla_edge_visual_style_get_type">
				<return-type type="GType"/>
			</method>
			<method name="edit_toggle_overtype" symbol="gtk_scintilla_edit_toggle_overtype">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="empty_undo_buffer" symbol="gtk_scintilla_empty_undo_buffer">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="encoded_from_utf8" symbol="gtk_scintilla_encoded_from_utf8">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="utf8" type="gchar*"/>
					<parameter name="bytes" type="gint"/>
				</parameters>
			</method>
			<method name="end_of_line_get_type" symbol="gtk_scintilla_end_of_line_get_type">
				<return-type type="GType"/>
			</method>
			<method name="end_undo_action" symbol="gtk_scintilla_end_undo_action">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="ensure_visible" symbol="gtk_scintilla_ensure_visible">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="ensure_visible_enforce_policy" symbol="gtk_scintilla_ensure_visible_enforce_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="find_column" symbol="gtk_scintilla_find_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="column" type="gint"/>
				</parameters>
			</method>
			<method name="find_option_get_type" symbol="gtk_scintilla_find_option_get_type">
				<return-type type="GType"/>
			</method>
			<method name="find_text" symbol="gtk_scintilla_find_text">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pattern" type="gchar*"/>
					<parameter name="search_start_pos" type="gint"/>
					<parameter name="search_end_pos" type="gint"/>
					<parameter name="found_start_pos" type="gint*"/>
					<parameter name="found_end_pos" type="gint*"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="fold_flag_get_type" symbol="gtk_scintilla_fold_flag_get_type">
				<return-type type="GType"/>
			</method>
			<method name="fold_level_get_type" symbol="gtk_scintilla_fold_level_get_type">
				<return-type type="GType"/>
			</method>
			<method name="fold_style_get_type" symbol="gtk_scintilla_fold_style_get_type">
				<return-type type="GType"/>
			</method>
			<method name="font_quality_get_type" symbol="gtk_scintilla_font_quality_get_type">
				<return-type type="GType"/>
			</method>
			<method name="form_feed" symbol="gtk_scintilla_form_feed">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="format_range" symbol="gtk_scintilla_format_range">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="draw" type="gboolean"/>
					<parameter name="fr" type="struct Sci_RangeToFormat*"/>
				</parameters>
			</method>
			<method name="get_additional_caret_fore" symbol="gtk_scintilla_get_additional_caret_fore">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_additional_carets_blink" symbol="gtk_scintilla_get_additional_carets_blink">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_additional_carets_visible" symbol="gtk_scintilla_get_additional_carets_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_additional_sel_alpha" symbol="gtk_scintilla_get_additional_sel_alpha">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_additional_selection_typing" symbol="gtk_scintilla_get_additional_selection_typing">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_anchor" symbol="gtk_scintilla_get_anchor">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_background_color" symbol="gtk_scintilla_get_background_color">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="get_backspace_unindents" symbol="gtk_scintilla_get_backspace_unindents">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_buffered_draw" symbol="gtk_scintilla_get_buffered_draw">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_fore" symbol="gtk_scintilla_get_caret_fore">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_line_back" symbol="gtk_scintilla_get_caret_line_back">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_line_back_alpha" symbol="gtk_scintilla_get_caret_line_back_alpha">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_line_visible" symbol="gtk_scintilla_get_caret_line_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_period" symbol="gtk_scintilla_get_caret_period">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_sticky" symbol="gtk_scintilla_get_caret_sticky">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_style" symbol="gtk_scintilla_get_caret_style">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_caret_width" symbol="gtk_scintilla_get_caret_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_char_at" symbol="gtk_scintilla_get_char_at">
				<return-type type="gchar"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="guint"/>
				</parameters>
			</method>
			<method name="get_character_pointer" symbol="gtk_scintilla_get_character_pointer">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_code_page" symbol="gtk_scintilla_get_code_page">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_column" symbol="gtk_scintilla_get_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="get_control_char_symbol" symbol="gtk_scintilla_get_control_char_symbol">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_cur_line" symbol="gtk_scintilla_get_cur_line">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_current_pos" symbol="gtk_scintilla_get_current_pos">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_cursor" symbol="gtk_scintilla_get_cursor">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_direct_function" symbol="gtk_scintilla_get_direct_function">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_direct_pointer" symbol="gtk_scintilla_get_direct_pointer">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_doc_pointer" symbol="gtk_scintilla_get_doc_pointer">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_edge_colour" symbol="gtk_scintilla_get_edge_colour">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_edge_column" symbol="gtk_scintilla_get_edge_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_edge_mode" symbol="gtk_scintilla_get_edge_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_end_at_last_line" symbol="gtk_scintilla_get_end_at_last_line">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_end_styled" symbol="gtk_scintilla_get_end_styled">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_eol_mode" symbol="gtk_scintilla_get_eol_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_extra_ascent" symbol="gtk_scintilla_get_extra_ascent">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_extra_descent" symbol="gtk_scintilla_get_extra_descent">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_first_visible_line" symbol="gtk_scintilla_get_first_visible_line">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_focus" symbol="gtk_scintilla_get_focus">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_fold_expanded" symbol="gtk_scintilla_get_fold_expanded">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_fold_level" symbol="gtk_scintilla_get_fold_level">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_fold_parent" symbol="gtk_scintilla_get_fold_parent">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_fold_style" symbol="gtk_scintilla_get_fold_style">
				<return-type type="GtkScintillaFoldStyle"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_folding_enabled" symbol="gtk_scintilla_get_folding_enabled">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_font" symbol="gtk_scintilla_get_font">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_font_quality" symbol="gtk_scintilla_get_font_quality">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_foreground_color" symbol="gtk_scintilla_get_foreground_color">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="get_h_scroll_bar" symbol="gtk_scintilla_get_h_scroll_bar">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_highlight_guide" symbol="gtk_scintilla_get_highlight_guide">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_hotspot_active_back" symbol="gtk_scintilla_get_hotspot_active_back">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_hotspot_active_fore" symbol="gtk_scintilla_get_hotspot_active_fore">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_hotspot_active_underline" symbol="gtk_scintilla_get_hotspot_active_underline">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_hotspot_single_line" symbol="gtk_scintilla_get_hotspot_single_line">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_indent" symbol="gtk_scintilla_get_indent">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_indentation_guides" symbol="gtk_scintilla_get_indentation_guides">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_indicator_current" symbol="gtk_scintilla_get_indicator_current">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_indicator_value" symbol="gtk_scintilla_get_indicator_value">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_keys_unicode" symbol="gtk_scintilla_get_keys_unicode">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_last_child" symbol="gtk_scintilla_get_last_child">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="level" type="gint"/>
				</parameters>
			</method>
			<method name="get_layout_cache" symbol="gtk_scintilla_get_layout_cache">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="gtk_scintilla_get_length">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_lexer" symbol="gtk_scintilla_get_lexer">
				<return-type type="GtkScintillaLexers"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_lexer_language" symbol="gtk_scintilla_get_lexer_language">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_lexer_property" symbol="gtk_scintilla_get_lexer_property">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="key" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_lexer_property_expanded" symbol="gtk_scintilla_get_lexer_property_expanded">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="buf" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_lexer_property_int" symbol="gtk_scintilla_get_lexer_property_int">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="key" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_line" symbol="gtk_scintilla_get_line">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="guint"/>
				</parameters>
			</method>
			<method name="get_line_count" symbol="gtk_scintilla_get_line_count">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_line_end_position" symbol="gtk_scintilla_get_line_end_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_indent_position" symbol="gtk_scintilla_get_line_indent_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_indentation" symbol="gtk_scintilla_get_line_indentation">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_numbers_visible" symbol="gtk_scintilla_get_line_numbers_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_line_sel_end_position" symbol="gtk_scintilla_get_line_sel_end_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_sel_start_position" symbol="gtk_scintilla_get_line_sel_start_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_state" symbol="gtk_scintilla_get_line_state">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_line_visible" symbol="gtk_scintilla_get_line_visible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="get_main_selection" symbol="gtk_scintilla_get_main_selection">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_margin_left" symbol="gtk_scintilla_get_margin_left">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_margin_mask_n" symbol="gtk_scintilla_get_margin_mask_n">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
				</parameters>
			</method>
			<method name="get_margin_right" symbol="gtk_scintilla_get_margin_right">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_margin_sensitive_n" symbol="gtk_scintilla_get_margin_sensitive_n">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
				</parameters>
			</method>
			<method name="get_margin_type_n" symbol="gtk_scintilla_get_margin_type_n">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
				</parameters>
			</method>
			<method name="get_margin_width_n" symbol="gtk_scintilla_get_margin_width_n">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
				</parameters>
			</method>
			<method name="get_max_line_state" symbol="gtk_scintilla_get_max_line_state">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_mod_event_mask" symbol="gtk_scintilla_get_mod_event_mask">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_modify" symbol="gtk_scintilla_get_modify">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_mouse_down_captures" symbol="gtk_scintilla_get_mouse_down_captures">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_mouse_dwell_time" symbol="gtk_scintilla_get_mouse_dwell_time">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_multi_paste" symbol="gtk_scintilla_get_multi_paste">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_multiple_selection" symbol="gtk_scintilla_get_multiple_selection">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_overtype" symbol="gtk_scintilla_get_overtype">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_paste_convert_endings" symbol="gtk_scintilla_get_paste_convert_endings">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_position_cache" symbol="gtk_scintilla_get_position_cache">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_print_colour_mode" symbol="gtk_scintilla_get_print_colour_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_print_magnification" symbol="gtk_scintilla_get_print_magnification">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_print_wrap_mode" symbol="gtk_scintilla_get_print_wrap_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_property" symbol="gtk_scintilla_get_property">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="GObject*"/>
					<parameter name="property_id" type="guint"/>
					<parameter name="value" type="GValue*"/>
					<parameter name="pspec" type="GParamSpec*"/>
				</parameters>
			</method>
			<method name="get_read_only" symbol="gtk_scintilla_get_read_only">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_rectangular_selection_anchor" symbol="gtk_scintilla_get_rectangular_selection_anchor">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_rectangular_selection_anchor_virtual_space" symbol="gtk_scintilla_get_rectangular_selection_anchor_virtual_space">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_rectangular_selection_caret" symbol="gtk_scintilla_get_rectangular_selection_caret">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_rectangular_selection_caret_virtual_space" symbol="gtk_scintilla_get_rectangular_selection_caret_virtual_space">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_rectangular_selection_modifier" symbol="gtk_scintilla_get_rectangular_selection_modifier">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_scintilla" symbol="gtk_scintilla_get_scintilla">
				<return-type type="ScintillaObject*"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_scroll_width" symbol="gtk_scintilla_get_scroll_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_scroll_width_tracking" symbol="gtk_scintilla_get_scroll_width_tracking">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_search_flags" symbol="gtk_scintilla_get_search_flags">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_sel_alpha" symbol="gtk_scintilla_get_sel_alpha">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_sel_eol_filled" symbol="gtk_scintilla_get_sel_eol_filled">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_sel_text" symbol="gtk_scintilla_get_sel_text">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_selection_end" symbol="gtk_scintilla_get_selection_end">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_selection_mode" symbol="gtk_scintilla_get_selection_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_selection_n_anchor" symbol="gtk_scintilla_get_selection_n_anchor">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_n_anchor_virtual_space" symbol="gtk_scintilla_get_selection_n_anchor_virtual_space">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_n_caret" symbol="gtk_scintilla_get_selection_n_caret">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_n_caret_virtual_space" symbol="gtk_scintilla_get_selection_n_caret_virtual_space">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_n_end" symbol="gtk_scintilla_get_selection_n_end">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_n_start" symbol="gtk_scintilla_get_selection_n_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="get_selection_start" symbol="gtk_scintilla_get_selection_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_selections" symbol="gtk_scintilla_get_selections">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_status" symbol="gtk_scintilla_get_status">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_style_at" symbol="gtk_scintilla_get_style_at">
				<return-type type="gchar"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="guint"/>
				</parameters>
			</method>
			<method name="get_style_bits" symbol="gtk_scintilla_get_style_bits">
				<return-type type="guchar"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_style_bits_needed" symbol="gtk_scintilla_get_style_bits_needed">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_styled_text_range" symbol="gtk_scintilla_get_styled_text_range">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start_pos" type="guint"/>
					<parameter name="end_pos" type="gint"/>
				</parameters>
			</method>
			<method name="get_tab_indents" symbol="gtk_scintilla_get_tab_indents">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_tab_width" symbol="gtk_scintilla_get_tab_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_tag" symbol="gtk_scintilla_get_tag">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="tag_number" type="gint"/>
				</parameters>
			</method>
			<method name="get_target_end" symbol="gtk_scintilla_get_target_end">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_target_start" symbol="gtk_scintilla_get_target_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_text" symbol="gtk_scintilla_get_text">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_text_length" symbol="gtk_scintilla_get_text_length">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_text_range" symbol="gtk_scintilla_get_text_range">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start_pos" type="guint"/>
					<parameter name="end_pos" type="gint"/>
				</parameters>
			</method>
			<method name="get_two_phase_draw" symbol="gtk_scintilla_get_two_phase_draw">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_undo_collection" symbol="gtk_scintilla_get_undo_collection">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_use_palette" symbol="gtk_scintilla_get_use_palette">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_use_tabs" symbol="gtk_scintilla_get_use_tabs">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_view_eol" symbol="gtk_scintilla_get_view_eol">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_view_white_space" symbol="gtk_scintilla_get_view_white_space">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_virtual_space_options" symbol="gtk_scintilla_get_virtual_space_options">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_vscrollbar" symbol="gtk_scintilla_get_vscrollbar">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_whitespace_size" symbol="gtk_scintilla_get_whitespace_size">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_wrap_indent_mode" symbol="gtk_scintilla_get_wrap_indent_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_wrap_mode" symbol="gtk_scintilla_get_wrap_mode">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_wrap_start_indent" symbol="gtk_scintilla_get_wrap_start_indent">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_wrap_visual_flags" symbol="gtk_scintilla_get_wrap_visual_flags">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_wrap_visual_flags_location" symbol="gtk_scintilla_get_wrap_visual_flags_location">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_x_offset" symbol="gtk_scintilla_get_x_offset">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="get_zoom" symbol="gtk_scintilla_get_zoom">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="goto_line" symbol="gtk_scintilla_goto_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="goto_pos" symbol="gtk_scintilla_goto_pos">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="grab_focus" symbol="gtk_scintilla_grab_focus">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="hide_lines" symbol="gtk_scintilla_hide_lines">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineStart" type="gint"/>
					<parameter name="lineEnd" type="gint"/>
				</parameters>
			</method>
			<method name="hide_selection" symbol="gtk_scintilla_hide_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="normal" type="gboolean"/>
				</parameters>
			</method>
			<method name="home" symbol="gtk_scintilla_home">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_display" symbol="gtk_scintilla_home_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_display_extend" symbol="gtk_scintilla_home_display_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_extend" symbol="gtk_scintilla_home_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_rect_extend" symbol="gtk_scintilla_home_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_wrap" symbol="gtk_scintilla_home_wrap">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="home_wrap_extend" symbol="gtk_scintilla_home_wrap_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="indent_view_get_type" symbol="gtk_scintilla_indent_view_get_type">
				<return-type type="GType"/>
			</method>
			<method name="indic_get_alpha" symbol="gtk_scintilla_indic_get_alpha">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
				</parameters>
			</method>
			<method name="indic_get_fore" symbol="gtk_scintilla_indic_get_fore">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
				</parameters>
			</method>
			<method name="indic_get_style" symbol="gtk_scintilla_indic_get_style">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
				</parameters>
			</method>
			<method name="indic_get_under" symbol="gtk_scintilla_indic_get_under">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
				</parameters>
			</method>
			<method name="indic_set_alpha" symbol="gtk_scintilla_indic_set_alpha">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
					<parameter name="alpha" type="gint"/>
				</parameters>
			</method>
			<method name="indic_set_fore" symbol="gtk_scintilla_indic_set_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="indic_set_style" symbol="gtk_scintilla_indic_set_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="indic_set_under" symbol="gtk_scintilla_indic_set_under">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indic" type="gint"/>
					<parameter name="under" type="gboolean"/>
				</parameters>
			</method>
			<method name="indicator_all_on_for" symbol="gtk_scintilla_indicator_all_on_for">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="position" type="gint"/>
				</parameters>
			</method>
			<method name="indicator_clear_range" symbol="gtk_scintilla_indicator_clear_range">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="position" type="gint"/>
					<parameter name="clearLength" type="gint"/>
				</parameters>
			</method>
			<method name="indicator_end" symbol="gtk_scintilla_indicator_end">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
					<parameter name="position" type="gint"/>
				</parameters>
			</method>
			<method name="indicator_fill_range" symbol="gtk_scintilla_indicator_fill_range">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="position" type="gint"/>
					<parameter name="fillLength" type="gint"/>
				</parameters>
			</method>
			<method name="indicator_start" symbol="gtk_scintilla_indicator_start">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
					<parameter name="position" type="gint"/>
				</parameters>
			</method>
			<method name="indicator_style_get_type" symbol="gtk_scintilla_indicator_style_get_type">
				<return-type type="GType"/>
			</method>
			<method name="indicator_value_at" symbol="gtk_scintilla_indicator_value_at">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
					<parameter name="position" type="gint"/>
				</parameters>
			</method>
			<method name="insert_text" symbol="gtk_scintilla_insert_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="key_mod_get_type" symbol="gtk_scintilla_key_mod_get_type">
				<return-type type="GType"/>
			</method>
			<method name="keys_get_type" symbol="gtk_scintilla_keys_get_type">
				<return-type type="GType"/>
			</method>
			<method name="lexers_get_type" symbol="gtk_scintilla_lexers_get_type">
				<return-type type="GType"/>
			</method>
			<method name="line_cache_get_type" symbol="gtk_scintilla_line_cache_get_type">
				<return-type type="GType"/>
			</method>
			<method name="line_copy" symbol="gtk_scintilla_line_copy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_cut" symbol="gtk_scintilla_line_cut">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_delete" symbol="gtk_scintilla_line_delete">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_down" symbol="gtk_scintilla_line_down">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_down_extend" symbol="gtk_scintilla_line_down_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_down_rect_extend" symbol="gtk_scintilla_line_down_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_duplicate" symbol="gtk_scintilla_line_duplicate">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end" symbol="gtk_scintilla_line_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_display" symbol="gtk_scintilla_line_end_display">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_display_extend" symbol="gtk_scintilla_line_end_display_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_extend" symbol="gtk_scintilla_line_end_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_rect_extend" symbol="gtk_scintilla_line_end_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_wrap" symbol="gtk_scintilla_line_end_wrap">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_end_wrap_extend" symbol="gtk_scintilla_line_end_wrap_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_from_position" symbol="gtk_scintilla_line_from_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="line_length" symbol="gtk_scintilla_line_length">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="line_scroll" symbol="gtk_scintilla_line_scroll">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="columns" type="gint"/>
					<parameter name="lines" type="gint"/>
				</parameters>
			</method>
			<method name="line_scroll_down" symbol="gtk_scintilla_line_scroll_down">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_scroll_up" symbol="gtk_scintilla_line_scroll_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_transpose" symbol="gtk_scintilla_line_transpose">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_up" symbol="gtk_scintilla_line_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_up_extend" symbol="gtk_scintilla_line_up_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="line_up_rect_extend" symbol="gtk_scintilla_line_up_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="lines_join" symbol="gtk_scintilla_lines_join">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="lines_on_screen" symbol="gtk_scintilla_lines_on_screen">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="lines_split" symbol="gtk_scintilla_lines_split">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="load_lexer_library" symbol="gtk_scintilla_load_lexer_library">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="path" type="gchar*"/>
				</parameters>
			</method>
			<method name="lower_case" symbol="gtk_scintilla_lower_case">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="margin_get_style" symbol="gtk_scintilla_margin_get_style">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="margin_get_style_offset" symbol="gtk_scintilla_margin_get_style_offset">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="margin_get_styles" symbol="gtk_scintilla_margin_get_styles">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="styles" type="gchar*"/>
				</parameters>
			</method>
			<method name="margin_get_text" symbol="gtk_scintilla_margin_get_text">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="margin_set_style" symbol="gtk_scintilla_margin_set_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="margin_set_style_offset" symbol="gtk_scintilla_margin_set_style_offset">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="margin_set_styles" symbol="gtk_scintilla_margin_set_styles">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="styles" type="gchar*"/>
				</parameters>
			</method>
			<method name="margin_set_text" symbol="gtk_scintilla_margin_set_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="margin_text_clear_all" symbol="gtk_scintilla_margin_text_clear_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="margin_type_get_type" symbol="gtk_scintilla_margin_type_get_type">
				<return-type type="GType"/>
			</method>
			<method name="marker_add" symbol="gtk_scintilla_marker_add">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="markerNumber" type="gint"/>
				</parameters>
			</method>
			<method name="marker_add_set" symbol="gtk_scintilla_marker_add_set">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="set" type="gint"/>
				</parameters>
			</method>
			<method name="marker_define" symbol="gtk_scintilla_marker_define">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
					<parameter name="markerSymbol" type="gint"/>
				</parameters>
			</method>
			<method name="marker_define_pixmap" symbol="gtk_scintilla_marker_define_pixmap">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
					<parameter name="pixmap" type="gchar*"/>
				</parameters>
			</method>
			<method name="marker_delete" symbol="gtk_scintilla_marker_delete">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="markerNumber" type="gint"/>
				</parameters>
			</method>
			<method name="marker_delete_all" symbol="gtk_scintilla_marker_delete_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
				</parameters>
			</method>
			<method name="marker_delete_handle" symbol="gtk_scintilla_marker_delete_handle">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="handle" type="gint"/>
				</parameters>
			</method>
			<method name="marker_get" symbol="gtk_scintilla_marker_get">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="marker_line_from_handle" symbol="gtk_scintilla_marker_line_from_handle">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="handle" type="gint"/>
				</parameters>
			</method>
			<method name="marker_next" symbol="gtk_scintilla_marker_next">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineStart" type="gint"/>
					<parameter name="markerMask" type="gint"/>
				</parameters>
			</method>
			<method name="marker_outline_get_type" symbol="gtk_scintilla_marker_outline_get_type">
				<return-type type="GType"/>
			</method>
			<method name="marker_previous" symbol="gtk_scintilla_marker_previous">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineStart" type="gint"/>
					<parameter name="markerMask" type="gint"/>
				</parameters>
			</method>
			<method name="marker_set_alpha" symbol="gtk_scintilla_marker_set_alpha">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
					<parameter name="alpha" type="gint"/>
				</parameters>
			</method>
			<method name="marker_set_back" symbol="gtk_scintilla_marker_set_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="marker_set_fore" symbol="gtk_scintilla_marker_set_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="marker_symbol_defined" symbol="gtk_scintilla_marker_symbol_defined">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="markerNumber" type="gint"/>
				</parameters>
			</method>
			<method name="marker_symbol_get_type" symbol="gtk_scintilla_marker_symbol_get_type">
				<return-type type="GType"/>
			</method>
			<method name="messages_get_type" symbol="gtk_scintilla_messages_get_type">
				<return-type type="GType"/>
			</method>
			<method name="modification_flags_get_type" symbol="gtk_scintilla_modification_flags_get_type">
				<return-type type="GType"/>
			</method>
			<method name="move_caret_inside_view" symbol="gtk_scintilla_move_caret_inside_view">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="multi_paste_get_type" symbol="gtk_scintilla_multi_paste_get_type">
				<return-type type="GType"/>
			</method>
			<method name="new" symbol="gtk_scintilla_new">
				<return-type type="GtkWidget*"/>
			</method>
			<method name="new_line" symbol="gtk_scintilla_new_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="null" symbol="gtk_scintilla_null">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_down" symbol="gtk_scintilla_page_down">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_down_extend" symbol="gtk_scintilla_page_down_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_down_rect_extend" symbol="gtk_scintilla_page_down_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_up" symbol="gtk_scintilla_page_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_up_extend" symbol="gtk_scintilla_page_up_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="page_up_rect_extend" symbol="gtk_scintilla_page_up_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="para_down" symbol="gtk_scintilla_para_down">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="para_down_extend" symbol="gtk_scintilla_para_down_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="para_up" symbol="gtk_scintilla_para_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="para_up_extend" symbol="gtk_scintilla_para_up_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="paste" symbol="gtk_scintilla_paste">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="point_x_from_position" symbol="gtk_scintilla_point_x_from_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="point_y_from_position" symbol="gtk_scintilla_point_y_from_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="position_after" symbol="gtk_scintilla_position_after">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="position_before" symbol="gtk_scintilla_position_before">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="position_from_line" symbol="gtk_scintilla_position_from_line">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="position_from_point" symbol="gtk_scintilla_position_from_point">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
				</parameters>
			</method>
			<method name="position_from_point_close" symbol="gtk_scintilla_position_from_point_close">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
				</parameters>
			</method>
			<method name="print_option_get_type" symbol="gtk_scintilla_print_option_get_type">
				<return-type type="GType"/>
			</method>
			<method name="redo" symbol="gtk_scintilla_redo">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="register_image" symbol="gtk_scintilla_register_image">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="type" type="gint"/>
					<parameter name="xpmData" type="gchar*"/>
				</parameters>
			</method>
			<method name="release_document" symbol="gtk_scintilla_release_document">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="doc" type="gint"/>
				</parameters>
			</method>
			<method name="replace_selection" symbol="gtk_scintilla_replace_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="replace_target" symbol="gtk_scintilla_replace_target">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
					<parameter name="length" type="gint"/>
				</parameters>
			</method>
			<method name="replace_target_regex" symbol="gtk_scintilla_replace_target_regex">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
					<parameter name="length" type="gint"/>
				</parameters>
			</method>
			<method name="rotate_selection" symbol="gtk_scintilla_rotate_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="scroll_caret" symbol="gtk_scintilla_scroll_caret">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="search_anchor" symbol="gtk_scintilla_search_anchor">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="search_flag_get_type" symbol="gtk_scintilla_search_flag_get_type">
				<return-type type="GType"/>
			</method>
			<method name="search_in_target" symbol="gtk_scintilla_search_in_target">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="search_next" symbol="gtk_scintilla_search_next">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="search_previous" symbol="gtk_scintilla_search_previous">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="select_all" symbol="gtk_scintilla_select_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="selection_duplicate" symbol="gtk_scintilla_selection_duplicate">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="selection_is_rectangle" symbol="gtk_scintilla_selection_is_rectangle">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="selection_mode_get_type" symbol="gtk_scintilla_selection_mode_get_type">
				<return-type type="GType"/>
			</method>
			<method name="send_message" symbol="gtk_scintilla_send_message">
				<return-type type="glong"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="iMessage" type="guint"/>
					<parameter name="wParam" type="gulong"/>
					<parameter name="lParam" type="glong"/>
				</parameters>
			</method>
			<method name="set_additional_caret_fore" symbol="gtk_scintilla_set_additional_caret_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_additional_carets_blink" symbol="gtk_scintilla_set_additional_carets_blink">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="additionalCaretsBlink" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_additional_carets_visible" symbol="gtk_scintilla_set_additional_carets_visible">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="additionalCaretsBlink" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_additional_sel_alpha" symbol="gtk_scintilla_set_additional_sel_alpha">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="alpha" type="gint"/>
				</parameters>
			</method>
			<method name="set_additional_sel_back" symbol="gtk_scintilla_set_additional_sel_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_additional_sel_fore" symbol="gtk_scintilla_set_additional_sel_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_additional_selection_typing" symbol="gtk_scintilla_set_additional_selection_typing">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="additionalSelectionTyping" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_anchor" symbol="gtk_scintilla_set_anchor">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="posAnchor" type="gint"/>
				</parameters>
			</method>
			<method name="set_background_color" symbol="gtk_scintilla_set_background_color">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
					<parameter name="color_spec" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_backspace_unindents" symbol="gtk_scintilla_set_backspace_unindents">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="bsUnIndents" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_buffered_draw" symbol="gtk_scintilla_set_buffered_draw">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="buffered" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_caret_fore" symbol="gtk_scintilla_set_caret_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_line_back" symbol="gtk_scintilla_set_caret_line_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_line_back_alpha" symbol="gtk_scintilla_set_caret_line_back_alpha">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="alpha" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_line_visible" symbol="gtk_scintilla_set_caret_line_visible">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="show" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_caret_period" symbol="gtk_scintilla_set_caret_period">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="periodMilliseconds" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_sticky" symbol="gtk_scintilla_set_caret_sticky">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useCaretStickyBehaviour" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_style" symbol="gtk_scintilla_set_caret_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="caretStyle" type="gint"/>
				</parameters>
			</method>
			<method name="set_caret_width" symbol="gtk_scintilla_set_caret_width">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_chars_default" symbol="gtk_scintilla_set_chars_default">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="set_code_page" symbol="gtk_scintilla_set_code_page">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="codePage" type="gint"/>
				</parameters>
			</method>
			<method name="set_control_char_symbol" symbol="gtk_scintilla_set_control_char_symbol">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="symbol" type="gint"/>
				</parameters>
			</method>
			<method name="set_current_pos" symbol="gtk_scintilla_set_current_pos">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_cursor" symbol="gtk_scintilla_set_cursor">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="cursorType" type="gint"/>
				</parameters>
			</method>
			<method name="set_doc_pointer" symbol="gtk_scintilla_set_doc_pointer">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pointer" type="gint"/>
				</parameters>
			</method>
			<method name="set_edge_colour" symbol="gtk_scintilla_set_edge_colour">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="edgeColour" type="gint"/>
				</parameters>
			</method>
			<method name="set_edge_column" symbol="gtk_scintilla_set_edge_column">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="column" type="gint"/>
				</parameters>
			</method>
			<method name="set_edge_mode" symbol="gtk_scintilla_set_edge_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_end_at_last_line" symbol="gtk_scintilla_set_end_at_last_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="endAtLastLine" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_eol_mode" symbol="gtk_scintilla_set_eol_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="eolMode" type="gint"/>
				</parameters>
			</method>
			<method name="set_extra_ascent" symbol="gtk_scintilla_set_extra_ascent">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="extraAscent" type="gint"/>
				</parameters>
			</method>
			<method name="set_extra_descent" symbol="gtk_scintilla_set_extra_descent">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="extraDescent" type="gint"/>
				</parameters>
			</method>
			<method name="set_first_visible_line" symbol="gtk_scintilla_set_first_visible_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineDisplay" type="gint"/>
				</parameters>
			</method>
			<method name="set_focus" symbol="gtk_scintilla_set_focus">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="focus" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_fold_expanded" symbol="gtk_scintilla_set_fold_expanded">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="expanded" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_fold_flags" symbol="gtk_scintilla_set_fold_flags">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="set_fold_level" symbol="gtk_scintilla_set_fold_level">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="level" type="gint"/>
				</parameters>
			</method>
			<method name="set_fold_margin_colour" symbol="gtk_scintilla_set_fold_margin_colour">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_fold_margin_hi_colour" symbol="gtk_scintilla_set_fold_margin_hi_colour">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_fold_style" symbol="gtk_scintilla_set_fold_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="fold_style" type="GtkScintillaFoldStyle"/>
				</parameters>
			</method>
			<method name="set_folding_enabled" symbol="gtk_scintilla_set_folding_enabled">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="enabled" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_font" symbol="gtk_scintilla_set_font">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="font_desc" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_font_quality" symbol="gtk_scintilla_set_font_quality">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="fontQuality" type="gint"/>
				</parameters>
			</method>
			<method name="set_foreground_color" symbol="gtk_scintilla_set_foreground_color">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
					<parameter name="color_spec" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_h_scroll_bar" symbol="gtk_scintilla_set_h_scroll_bar">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="show" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_highlight_guide" symbol="gtk_scintilla_set_highlight_guide">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="column" type="gint"/>
				</parameters>
			</method>
			<method name="set_hotspot_active_back" symbol="gtk_scintilla_set_hotspot_active_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_hotspot_active_fore" symbol="gtk_scintilla_set_hotspot_active_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_hotspot_active_underline" symbol="gtk_scintilla_set_hotspot_active_underline">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="underline" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_hotspot_single_line" symbol="gtk_scintilla_set_hotspot_single_line">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="singleLine" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_indent" symbol="gtk_scintilla_set_indent">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indentSize" type="gint"/>
				</parameters>
			</method>
			<method name="set_indentation_guides" symbol="gtk_scintilla_set_indentation_guides">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indentView" type="gint"/>
				</parameters>
			</method>
			<method name="set_indicator_current" symbol="gtk_scintilla_set_indicator_current">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indicator" type="gint"/>
				</parameters>
			</method>
			<method name="set_indicator_value" symbol="gtk_scintilla_set_indicator_value">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="value" type="gint"/>
				</parameters>
			</method>
			<method name="set_keys_unicode" symbol="gtk_scintilla_set_keys_unicode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="keysUnicode" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_keywords" symbol="gtk_scintilla_set_keywords">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="keywordSet" type="gint"/>
					<parameter name="keyWords" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_layout_cache" symbol="gtk_scintilla_set_layout_cache">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_lexer" symbol="gtk_scintilla_set_lexer">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lexer" type="GtkScintillaLexers"/>
				</parameters>
			</method>
			<method name="set_lexer_language" symbol="gtk_scintilla_set_lexer_language">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="language" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_lexer_property" symbol="gtk_scintilla_set_lexer_property">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="key" type="gchar*"/>
					<parameter name="value" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_line_indentation" symbol="gtk_scintilla_set_line_indentation">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="indentSize" type="gint"/>
				</parameters>
			</method>
			<method name="set_line_numbers_visible" symbol="gtk_scintilla_set_line_numbers_visible">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="visible" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_line_state" symbol="gtk_scintilla_set_line_state">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
					<parameter name="state" type="gint"/>
				</parameters>
			</method>
			<method name="set_main_selection" symbol="gtk_scintilla_set_main_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
				</parameters>
			</method>
			<method name="set_margin_left" symbol="gtk_scintilla_set_margin_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_margin_mask_n" symbol="gtk_scintilla_set_margin_mask_n">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
					<parameter name="mask" type="gint"/>
				</parameters>
			</method>
			<method name="set_margin_right" symbol="gtk_scintilla_set_margin_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_margin_sensitive_n" symbol="gtk_scintilla_set_margin_sensitive_n">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
					<parameter name="sensitive" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_margin_type_n" symbol="gtk_scintilla_set_margin_type_n">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
					<parameter name="marginType" type="gint"/>
				</parameters>
			</method>
			<method name="set_margin_width_n" symbol="gtk_scintilla_set_margin_width_n">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="margin" type="gint"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_mod_event_mask" symbol="gtk_scintilla_set_mod_event_mask">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mask" type="gint"/>
				</parameters>
			</method>
			<method name="set_mouse_down_captures" symbol="gtk_scintilla_set_mouse_down_captures">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="captures" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_mouse_dwell_time" symbol="gtk_scintilla_set_mouse_dwell_time">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="periodMilliseconds" type="gint"/>
				</parameters>
			</method>
			<method name="set_multi_paste" symbol="gtk_scintilla_set_multi_paste">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="multiPaste" type="gint"/>
				</parameters>
			</method>
			<method name="set_multiple_selection" symbol="gtk_scintilla_set_multiple_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="multipleSelection" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_overtype" symbol="gtk_scintilla_set_overtype">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="overtype" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_paste_convert_endings" symbol="gtk_scintilla_set_paste_convert_endings">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="convert" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_position_cache" symbol="gtk_scintilla_set_position_cache">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</method>
			<method name="set_print_colour_mode" symbol="gtk_scintilla_set_print_colour_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_print_magnification" symbol="gtk_scintilla_set_print_magnification">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="magnification" type="gint"/>
				</parameters>
			</method>
			<method name="set_print_wrap_mode" symbol="gtk_scintilla_set_print_wrap_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_property" symbol="gtk_scintilla_set_property">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="GObject*"/>
					<parameter name="property_id" type="guint"/>
					<parameter name="value" type="GValue*"/>
					<parameter name="pspec" type="GParamSpec*"/>
				</parameters>
			</method>
			<method name="set_read_only" symbol="gtk_scintilla_set_read_only">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="read_only" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_rectangular_selection_anchor" symbol="gtk_scintilla_set_rectangular_selection_anchor">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="posAnchor" type="gint"/>
				</parameters>
			</method>
			<method name="set_rectangular_selection_anchor_virtual_space" symbol="gtk_scintilla_set_rectangular_selection_anchor_virtual_space">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="space" type="gint"/>
				</parameters>
			</method>
			<method name="set_rectangular_selection_caret" symbol="gtk_scintilla_set_rectangular_selection_caret">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_rectangular_selection_caret_virtual_space" symbol="gtk_scintilla_set_rectangular_selection_caret_virtual_space">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="space" type="gint"/>
				</parameters>
			</method>
			<method name="set_rectangular_selection_modifier" symbol="gtk_scintilla_set_rectangular_selection_modifier">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="modifier" type="gint"/>
				</parameters>
			</method>
			<method name="set_save_point" symbol="gtk_scintilla_set_save_point">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="set_scroll_width" symbol="gtk_scintilla_set_scroll_width">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pixelWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_scroll_width_tracking" symbol="gtk_scintilla_set_scroll_width_tracking">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="tracking" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_search_flags" symbol="gtk_scintilla_set_search_flags">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="flags" type="gint"/>
				</parameters>
			</method>
			<method name="set_sel" symbol="gtk_scintilla_set_sel">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="start" type="gint"/>
					<parameter name="end" type="gint"/>
				</parameters>
			</method>
			<method name="set_sel_alpha" symbol="gtk_scintilla_set_sel_alpha">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="alpha" type="gint"/>
				</parameters>
			</method>
			<method name="set_sel_back" symbol="gtk_scintilla_set_sel_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_sel_eol_filled" symbol="gtk_scintilla_set_sel_eol_filled">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="filled" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_sel_fore" symbol="gtk_scintilla_set_sel_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection" symbol="gtk_scintilla_set_selection">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="caret" type="gint"/>
					<parameter name="anchor" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_end" symbol="gtk_scintilla_set_selection_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_mode" symbol="gtk_scintilla_set_selection_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_n_anchor" symbol="gtk_scintilla_set_selection_n_anchor">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
					<parameter name="posAnchor" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_n_anchor_virtual_space" symbol="gtk_scintilla_set_selection_n_anchor_virtual_space">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
					<parameter name="space" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_n_caret" symbol="gtk_scintilla_set_selection_n_caret">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_n_caret_virtual_space" symbol="gtk_scintilla_set_selection_n_caret_virtual_space">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
					<parameter name="space" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_n_start" symbol="gtk_scintilla_set_selection_n_start">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="selection" type="gint"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_selection_start" symbol="gtk_scintilla_set_selection_start">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_status" symbol="gtk_scintilla_set_status">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="statusCode" type="gint"/>
				</parameters>
			</method>
			<method name="set_style" symbol="gtk_scintilla_set_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
					<parameter name="style_number" type="gint"/>
					<parameter name="font_spec" type="gchar*"/>
					<parameter name="fg_color" type="gchar*"/>
					<parameter name="bg_color" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_style_bits" symbol="gtk_scintilla_set_style_bits">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="bits" type="guchar"/>
				</parameters>
			</method>
			<method name="set_styling" symbol="gtk_scintilla_set_styling">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="gint"/>
					<parameter name="style" type="gint"/>
				</parameters>
			</method>
			<method name="set_styling_ex" symbol="gtk_scintilla_set_styling_ex">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="length" type="gint"/>
					<parameter name="styles" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_tab_indents" symbol="gtk_scintilla_set_tab_indents">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="tabIndents" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_tab_width" symbol="gtk_scintilla_set_tab_width">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="tabWidth" type="gint"/>
				</parameters>
			</method>
			<method name="set_target_end" symbol="gtk_scintilla_set_target_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_target_start" symbol="gtk_scintilla_set_target_start">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
				</parameters>
			</method>
			<method name="set_text" symbol="gtk_scintilla_set_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_two_phase_draw" symbol="gtk_scintilla_set_two_phase_draw">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="twoPhase" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_undo_collection" symbol="gtk_scintilla_set_undo_collection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="collectUndo" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_use_palette" symbol="gtk_scintilla_set_use_palette">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="usePalette" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_use_tabs" symbol="gtk_scintilla_set_use_tabs">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useTabs" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_view_eol" symbol="gtk_scintilla_set_view_eol">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="visible" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_view_white_space" symbol="gtk_scintilla_set_view_white_space">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="viewWS" type="gint"/>
				</parameters>
			</method>
			<method name="set_virtual_space_options" symbol="gtk_scintilla_set_virtual_space_options">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="virtualSpaceOptions" type="gint"/>
				</parameters>
			</method>
			<method name="set_visible_policy" symbol="gtk_scintilla_set_visible_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="visiblePolicy" type="gint"/>
					<parameter name="visibleSlop" type="gint"/>
				</parameters>
			</method>
			<method name="set_vscrollbar" symbol="gtk_scintilla_set_vscrollbar">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="show" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_whitespace_back" symbol="gtk_scintilla_set_whitespace_back">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="back" type="gint"/>
				</parameters>
			</method>
			<method name="set_whitespace_chars" symbol="gtk_scintilla_set_whitespace_chars">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="characters" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_whitespace_fore" symbol="gtk_scintilla_set_whitespace_fore">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="useSetting" type="gboolean"/>
					<parameter name="fore" type="gint"/>
				</parameters>
			</method>
			<method name="set_whitespace_size" symbol="gtk_scintilla_set_whitespace_size">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="size" type="gint"/>
				</parameters>
			</method>
			<method name="set_word_chars" symbol="gtk_scintilla_set_word_chars">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="characters" type="gchar*"/>
				</parameters>
			</method>
			<method name="set_wrap_indent_mode" symbol="gtk_scintilla_set_wrap_indent_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_wrap_mode" symbol="gtk_scintilla_set_wrap_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="mode" type="gint"/>
				</parameters>
			</method>
			<method name="set_wrap_start_indent" symbol="gtk_scintilla_set_wrap_start_indent">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="indent" type="gint"/>
				</parameters>
			</method>
			<method name="set_wrap_visual_flags" symbol="gtk_scintilla_set_wrap_visual_flags">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="wrapVisualFlags" type="gint"/>
				</parameters>
			</method>
			<method name="set_wrap_visual_flags_location" symbol="gtk_scintilla_set_wrap_visual_flags_location">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="wrapVisualFlagsLocation" type="gint"/>
				</parameters>
			</method>
			<method name="set_x_caret_policy" symbol="gtk_scintilla_set_x_caret_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="caretPolicy" type="gint"/>
					<parameter name="caretSlop" type="gint"/>
				</parameters>
			</method>
			<method name="set_x_offset" symbol="gtk_scintilla_set_x_offset">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="newOffset" type="gint"/>
				</parameters>
			</method>
			<method name="set_y_caret_policy" symbol="gtk_scintilla_set_y_caret_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="caretPolicy" type="gint"/>
					<parameter name="caretSlop" type="gint"/>
				</parameters>
			</method>
			<method name="set_zoom" symbol="gtk_scintilla_set_zoom">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="zoom" type="gint"/>
				</parameters>
			</method>
			<method name="show_lines" symbol="gtk_scintilla_show_lines">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="lineStart" type="gint"/>
					<parameter name="lineEnd" type="gint"/>
				</parameters>
			</method>
			<method name="start_record" symbol="gtk_scintilla_start_record">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="start_styling" symbol="gtk_scintilla_start_styling">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
					<parameter name="mask" type="gint"/>
				</parameters>
			</method>
			<method name="status_get_type" symbol="gtk_scintilla_status_get_type">
				<return-type type="GType"/>
			</method>
			<method name="stop_record" symbol="gtk_scintilla_stop_record">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="stuttered_page_down" symbol="gtk_scintilla_stuttered_page_down">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="stuttered_page_down_extend" symbol="gtk_scintilla_stuttered_page_down_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="stuttered_page_up" symbol="gtk_scintilla_stuttered_page_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="stuttered_page_up_extend" symbol="gtk_scintilla_stuttered_page_up_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="style_clear_all" symbol="gtk_scintilla_style_clear_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="style_reset_default" symbol="gtk_scintilla_style_reset_default">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="styles_common_get_type" symbol="gtk_scintilla_styles_common_get_type">
				<return-type type="GType"/>
			</method>
			<method name="swap_main_anchor_caret" symbol="gtk_scintilla_swap_main_anchor_caret">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="tab" symbol="gtk_scintilla_tab">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="target_as_utf8" symbol="gtk_scintilla_target_as_utf8">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="target_from_selection" symbol="gtk_scintilla_target_from_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="text_height" symbol="gtk_scintilla_text_height">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="text_width" symbol="gtk_scintilla_text_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="style" type="gint"/>
					<parameter name="text" type="gchar*"/>
				</parameters>
			</method>
			<method name="toggle_caret_sticky" symbol="gtk_scintilla_toggle_caret_sticky">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="toggle_fold" symbol="gtk_scintilla_toggle_fold">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="undo" symbol="gtk_scintilla_undo">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="update_flag_get_type" symbol="gtk_scintilla_update_flag_get_type">
				<return-type type="GType"/>
			</method>
			<method name="update_line_numbers" symbol="gtk_scintilla_update_line_numbers">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="upper_case" symbol="gtk_scintilla_upper_case">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="use_pop_up" symbol="gtk_scintilla_use_pop_up">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="allowPopUp" type="gboolean"/>
				</parameters>
			</method>
			<method name="user_list_show" symbol="gtk_scintilla_user_list_show">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="listType" type="gint"/>
					<parameter name="itemList" type="gchar*"/>
				</parameters>
			</method>
			<method name="virtual_space_get_type" symbol="gtk_scintilla_virtual_space_get_type">
				<return-type type="GType"/>
			</method>
			<method name="visible_char_home" symbol="gtk_scintilla_visible_char_home">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="visible_char_home_extend" symbol="gtk_scintilla_visible_char_home_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="visible_char_home_rect_extend" symbol="gtk_scintilla_visible_char_home_rect_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="visible_char_home_wrap" symbol="gtk_scintilla_visible_char_home_wrap">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="visible_char_home_wrap_extend" symbol="gtk_scintilla_visible_char_home_wrap_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="visible_from_doc_line" symbol="gtk_scintilla_visible_from_doc_line">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="white_space_get_type" symbol="gtk_scintilla_white_space_get_type">
				<return-type type="GType"/>
			</method>
			<method name="word_end_position" symbol="gtk_scintilla_word_end_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
					<parameter name="onlyWordCharacters" type="gboolean"/>
				</parameters>
			</method>
			<method name="word_left" symbol="gtk_scintilla_word_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_left_end" symbol="gtk_scintilla_word_left_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_left_end_extend" symbol="gtk_scintilla_word_left_end_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_left_extend" symbol="gtk_scintilla_word_left_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_part_left" symbol="gtk_scintilla_word_part_left">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_part_left_extend" symbol="gtk_scintilla_word_part_left_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_part_right" symbol="gtk_scintilla_word_part_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_part_right_extend" symbol="gtk_scintilla_word_part_right_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_right" symbol="gtk_scintilla_word_right">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_right_end" symbol="gtk_scintilla_word_right_end">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_right_end_extend" symbol="gtk_scintilla_word_right_end_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_right_extend" symbol="gtk_scintilla_word_right_extend">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="word_start_position" symbol="gtk_scintilla_word_start_position">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="pos" type="gint"/>
					<parameter name="onlyWordCharacters" type="gboolean"/>
				</parameters>
			</method>
			<method name="wrap_count" symbol="gtk_scintilla_wrap_count">
				<return-type type="gint"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
					<parameter name="line" type="gint"/>
				</parameters>
			</method>
			<method name="wrap_get_type" symbol="gtk_scintilla_wrap_get_type">
				<return-type type="GType"/>
			</method>
			<method name="wrap_indent_mode_get_type" symbol="gtk_scintilla_wrap_indent_mode_get_type">
				<return-type type="GType"/>
			</method>
			<method name="wrap_visual_flag_get_type" symbol="gtk_scintilla_wrap_visual_flag_get_type">
				<return-type type="GType"/>
			</method>
			<method name="wrap_visual_location_get_type" symbol="gtk_scintilla_wrap_visual_location_get_type">
				<return-type type="GType"/>
			</method>
			<method name="zoom_in" symbol="gtk_scintilla_zoom_in">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<method name="zoom_out" symbol="gtk_scintilla_zoom_out">
				<return-type type="void"/>
				<parameters>
					<parameter name="sci" type="GtkScintilla*"/>
				</parameters>
			</method>
			<field name="parent" type="ScintillaObject"/>
			<field name="scintilla" type="GtkWidget*"/>
			<field name="accel_group" type="GtkAccelGroup*"/>
			<field name="priv" type="GtkScintillaPrivate*"/>
		</struct>
		<struct name="GtkScintillaClass">
			<field name="parent_class" type="ScintillaClass"/>
			<field name="style_needed" type="GCallback"/>
			<field name="char_added" type="GCallback"/>
			<field name="save_point_reached" type="GCallback"/>
			<field name="save_point_left" type="GCallback"/>
			<field name="modify_attempt_ro" type="GCallback"/>
			<field name="key" type="GCallback"/>
			<field name="double_click" type="GCallback"/>
			<field name="update_ui" type="GCallback"/>
			<field name="modified" type="GCallback"/>
			<field name="macro_record" type="GCallback"/>
			<field name="margin_click" type="GCallback"/>
			<field name="need_shown" type="GCallback"/>
			<field name="painted" type="GCallback"/>
			<field name="user_list_selection" type="GCallback"/>
			<field name="uri_dropped" type="GCallback"/>
			<field name="dwell_start" type="GCallback"/>
			<field name="dwell_end" type="GCallback"/>
			<field name="zoom" type="GCallback"/>
			<field name="hot_spot_click" type="GCallback"/>
			<field name="hot_spot_double_click" type="GCallback"/>
			<field name="call_tip_click" type="GCallback"/>
			<field name="auto_completion_selection" type="GCallback"/>
			<field name="indicator_click" type="GCallback"/>
			<field name="indicator_release" type="GCallback"/>
			<field name="auto_completion_cancelled" type="GCallback"/>
			<field name="auto_completion_char_deleted" type="GCallback"/>
		</struct>
		<struct name="GtkScintillaLexer">
			<method name="new" symbol="gtk_scintilla_lexer_new">
				<return-type type="GObject*"/>
			</method>
			<field name="parent" type="GObject"/>
			<field name="priv" type="GtkScintillaLexerPrivate*"/>
		</struct>
		<struct name="GtkScintillaLexerClass">
			<field name="parent_class" type="GObjectClass"/>
		</struct>
		<enum name="GtkScintillaAnnotationVisible">
			<member name="GTK_SCINTILLA_ANNOTATION_VISIBLE_HIDDEN" value="0"/>
			<member name="GTK_SCINTILLA_ANNOTATION_VISIBLE_STANDARD" value="1"/>
			<member name="GTK_SCINTILLA_ANNOTATION_VISIBLE_BOXED" value="2"/>
		</enum>
		<enum name="GtkScintillaCaretPolicy">
			<member name="GTK_SCINTILLA_CARET_POLICY_SLOP" value="1"/>
			<member name="GTK_SCINTILLA_CARET_POLICY_STRICT" value="4"/>
			<member name="GTK_SCINTILLA_CARET_POLICY_JUMPS" value="16"/>
			<member name="GTK_SCINTILLA_CARET_POLICY_EVEN" value="8"/>
		</enum>
		<enum name="GtkScintillaCaretSticky">
			<member name="GTK_SCINTILLA_CARET_STICKY_OFF" value="0"/>
			<member name="GTK_SCINTILLA_CARET_STICKY_ON" value="1"/>
			<member name="GTK_SCINTILLA_CARET_STICKY_WHITESPACE" value="2"/>
		</enum>
		<enum name="GtkScintillaCaretStyle">
			<member name="GTK_SCINTILLA_CARET_STYLE_INVISIBLE" value="0"/>
			<member name="GTK_SCINTILLA_CARET_STYLE_LINE" value="1"/>
			<member name="GTK_SCINTILLA_CARET_STYLE_BLOCK" value="2"/>
		</enum>
		<enum name="GtkScintillaCase">
			<member name="GTK_SCINTILLA_CASE_MIXED" value="0"/>
			<member name="GTK_SCINTILLA_CASE_UPPER" value="1"/>
			<member name="GTK_SCINTILLA_CASE_LOWER" value="2"/>
		</enum>
		<enum name="GtkScintillaCharacterSet">
			<member name="GTK_SCINTILLA_CHARACTER_SET_ANSI" value="0"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_DEFAULT" value="1"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_BALTIC" value="186"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_CHINESEBIG5" value="136"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_EASTEUROPE" value="238"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_GB2312" value="134"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_GREEK" value="161"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_HANGUL" value="129"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_MAC" value="77"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_OEM" value="255"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_RUSSIAN" value="204"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_CYRILLIC" value="1251"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_SHIFTJIS" value="128"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_SYMBOL" value="2"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_TURKISH" value="162"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_JOHAB" value="130"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_HEBREW" value="177"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_ARABIC" value="178"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_VIETNAMESE" value="163"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_THAI" value="222"/>
			<member name="GTK_SCINTILLA_CHARACTER_SET_8859_15" value="1000"/>
		</enum>
		<enum name="GtkScintillaCursorShape">
			<member name="GTK_SCINTILLA_CURSOR_SHAPE_NORMAL" value="-1"/>
			<member name="GTK_SCINTILLA_CURSOR_SHAPE_WAIT" value="4"/>
		</enum>
		<enum name="GtkScintillaEdgeVisualStyle">
			<member name="GTK_SCINTILLA_EDGE_VISUAL_STYLE_NONE" value="0"/>
			<member name="GTK_SCINTILLA_EDGE_VISUAL_STYLE_LINE" value="1"/>
			<member name="GTK_SCINTILLA_EDGE_VISUAL_STYLE_BACKGROUND" value="2"/>
		</enum>
		<enum name="GtkScintillaEndOfLine">
			<member name="GTK_SCINTILLA_END_OF_LINE_CRLF" value="0"/>
			<member name="GTK_SCINTILLA_END_OF_LINE_CR" value="1"/>
			<member name="GTK_SCINTILLA_END_OF_LINE_LF" value="2"/>
		</enum>
		<enum name="GtkScintillaFindOption">
			<member name="GTK_SCINTILLA_FIND_OPTION_WHOLEWORD" value="2"/>
			<member name="GTK_SCINTILLA_FIND_OPTION_MATCHCASE" value="4"/>
			<member name="GTK_SCINTILLA_FIND_OPTION_WORDSTART" value="1048576"/>
			<member name="GTK_SCINTILLA_FIND_OPTION_REGEXP" value="2097152"/>
			<member name="GTK_SCINTILLA_FIND_OPTION_POSIX" value="4194304"/>
		</enum>
		<enum name="GtkScintillaFoldFlag">
			<member name="GTK_SCINTILLA_FOLD_FLAG_LINEBEFORE_EXPANDED" value="2"/>
			<member name="GTK_SCINTILLA_FOLD_FLAG_LINEBEFORE_CONTRACTED" value="4"/>
			<member name="GTK_SCINTILLA_FOLD_FLAG_LINEAFTER_EXPANDED" value="8"/>
			<member name="GTK_SCINTILLA_FOLD_FLAG_LINEAFTER_CONTRACTED" value="16"/>
			<member name="GTK_SCINTILLA_FOLD_FLAG_LEVELNUMBERS" value="64"/>
		</enum>
		<enum name="GtkScintillaFoldLevel">
			<member name="GTK_SCINTILLA_FOLD_LEVEL_BASE" value="1024"/>
			<member name="GTK_SCINTILLA_FOLD_LEVEL_WHITEFLAG" value="4096"/>
			<member name="GTK_SCINTILLA_FOLD_LEVEL_HEADERFLAG" value="8192"/>
			<member name="GTK_SCINTILLA_FOLD_LEVEL_NUMBERMASK" value="4095"/>
		</enum>
		<enum name="GtkScintillaFoldStyle">
			<member name="GTK_SCINTILLA_FOLD_STYLE_NONE" value="0"/>
			<member name="GTK_SCINTILLA_FOLD_STYLE_ARROW" value="1"/>
			<member name="GTK_SCINTILLA_FOLD_STYLE_BOX" value="2"/>
			<member name="GTK_SCINTILLA_FOLD_STYLE_CIRCLE" value="3"/>
			<member name="GTK_SCINTILLA_FOLD_STYLE_CUSTOM" value="4"/>
			<member name="GTK_SCINTILLA_FOLD_STYLE_PLUS_MINUS" value="5"/>
		</enum>
		<enum name="GtkScintillaFontQuality">
			<member name="GTK_SCINTILLA_FONT_QUALITY_QUALITY_MASK" value="15"/>
			<member name="GTK_SCINTILLA_FONT_QUALITY_QUALITY_DEFAULT" value="0"/>
			<member name="GTK_SCINTILLA_FONT_QUALITY_QUALITY_NON_ANTIALIASED" value="1"/>
			<member name="GTK_SCINTILLA_FONT_QUALITY_QUALITY_ANTIALIASED" value="2"/>
			<member name="GTK_SCINTILLA_FONT_QUALITY_QUALITY_LCD_OPTIMIZED" value="3"/>
		</enum>
		<enum name="GtkScintillaIndentView">
			<member name="GTK_SCINTILLA_INDENT_VIEW_NONE" value="0"/>
			<member name="GTK_SCINTILLA_INDENT_VIEW_REAL" value="1"/>
			<member name="GTK_SCINTILLA_INDENT_VIEW_LOOKFORWARD" value="2"/>
			<member name="GTK_SCINTILLA_INDENT_VIEW_LOOKBOTH" value="3"/>
		</enum>
		<enum name="GtkScintillaIndicatorStyle">
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_PLAIN" value="0"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_SQUIGGLE" value="1"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_TT" value="2"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_DIAGONAL" value="3"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_STRIKE" value="4"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_HIDDEN" value="5"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_BOX" value="6"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_ROUNDBOX" value="7"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_MAX" value="31"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_CONTAINER" value="8"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_0_MASK" value="32"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_1_MASK" value="64"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_2_MASK" value="128"/>
			<member name="GTK_SCINTILLA_INDICATOR_STYLE_S_MASK" value="224"/>
		</enum>
		<enum name="GtkScintillaKeyMod">
			<member name="GTK_SCINTILLA_KEY_MOD_NORM" value="0"/>
			<member name="GTK_SCINTILLA_KEY_MOD_SHIFT" value="1"/>
			<member name="GTK_SCINTILLA_KEY_MOD_CTRL" value="2"/>
			<member name="GTK_SCINTILLA_KEY_MOD_ALT" value="4"/>
			<member name="GTK_SCINTILLA_KEY_MOD_SUPER" value="8"/>
		</enum>
		<enum name="GtkScintillaKeys">
			<member name="GTK_SCINTILLA_KEYS_DOWN" value="300"/>
			<member name="GTK_SCINTILLA_KEYS_UP" value="301"/>
			<member name="GTK_SCINTILLA_KEYS_LEFT" value="302"/>
			<member name="GTK_SCINTILLA_KEYS_RIGHT" value="303"/>
			<member name="GTK_SCINTILLA_KEYS_HOME" value="304"/>
			<member name="GTK_SCINTILLA_KEYS_END" value="305"/>
			<member name="GTK_SCINTILLA_KEYS_PRIOR" value="306"/>
			<member name="GTK_SCINTILLA_KEYS_NEXT" value="307"/>
			<member name="GTK_SCINTILLA_KEYS_DELETE" value="308"/>
			<member name="GTK_SCINTILLA_KEYS_INSERT" value="309"/>
			<member name="GTK_SCINTILLA_KEYS_ESCAPE" value="7"/>
			<member name="GTK_SCINTILLA_KEYS_BACK" value="8"/>
			<member name="GTK_SCINTILLA_KEYS_TAB" value="9"/>
			<member name="GTK_SCINTILLA_KEYS_RETURN" value="13"/>
			<member name="GTK_SCINTILLA_KEYS_ADD" value="310"/>
			<member name="GTK_SCINTILLA_KEYS_SUBTRACT" value="311"/>
			<member name="GTK_SCINTILLA_KEYS_DIVIDE" value="312"/>
			<member name="GTK_SCINTILLA_KEYS_WIN" value="313"/>
			<member name="GTK_SCINTILLA_KEYS_RWIN" value="314"/>
			<member name="GTK_SCINTILLA_KEYS_MENU" value="315"/>
		</enum>
		<enum name="GtkScintillaLexers">
			<member name="GTK_SCINTILLA_LEXER_CONTAINER" value="0"/>
			<member name="GTK_SCINTILLA_LEXER_NULL" value="1"/>
			<member name="GTK_SCINTILLA_LEXER_PYTHON" value="2"/>
			<member name="GTK_SCINTILLA_LEXER_CPP" value="3"/>
			<member name="GTK_SCINTILLA_LEXER_HTML" value="4"/>
			<member name="GTK_SCINTILLA_LEXER_XML" value="5"/>
			<member name="GTK_SCINTILLA_LEXER_PERL" value="6"/>
			<member name="GTK_SCINTILLA_LEXER_SQL" value="7"/>
			<member name="GTK_SCINTILLA_LEXER_VB" value="8"/>
			<member name="GTK_SCINTILLA_LEXER_PROPERTIES" value="9"/>
			<member name="GTK_SCINTILLA_LEXER_ERRORLIST" value="10"/>
			<member name="GTK_SCINTILLA_LEXER_MAKEFILE" value="11"/>
			<member name="GTK_SCINTILLA_LEXER_BATCH" value="12"/>
			<member name="GTK_SCINTILLA_LEXER_XCODE" value="13"/>
			<member name="GTK_SCINTILLA_LEXER_LATEX" value="14"/>
			<member name="GTK_SCINTILLA_LEXER_LUA" value="15"/>
			<member name="GTK_SCINTILLA_LEXER_DIFF" value="16"/>
			<member name="GTK_SCINTILLA_LEXER_CONF" value="17"/>
			<member name="GTK_SCINTILLA_LEXER_PASCAL" value="18"/>
			<member name="GTK_SCINTILLA_LEXER_AVE" value="19"/>
			<member name="GTK_SCINTILLA_LEXER_ADA" value="20"/>
			<member name="GTK_SCINTILLA_LEXER_LISP" value="21"/>
			<member name="GTK_SCINTILLA_LEXER_RUBY" value="22"/>
			<member name="GTK_SCINTILLA_LEXER_EIFFEL" value="23"/>
			<member name="GTK_SCINTILLA_LEXER_EIFFELKW" value="24"/>
			<member name="GTK_SCINTILLA_LEXER_TCL" value="25"/>
			<member name="GTK_SCINTILLA_LEXER_NNCRONTAB" value="26"/>
			<member name="GTK_SCINTILLA_LEXER_BULLANT" value="27"/>
			<member name="GTK_SCINTILLA_LEXER_VBSCRIPT" value="28"/>
			<member name="GTK_SCINTILLA_LEXER_BAAN" value="31"/>
			<member name="GTK_SCINTILLA_LEXER_MATLAB" value="32"/>
			<member name="GTK_SCINTILLA_LEXER_SCRIPTOL" value="33"/>
			<member name="GTK_SCINTILLA_LEXER_ASM" value="34"/>
			<member name="GTK_SCINTILLA_LEXER_CPPNOCASE" value="35"/>
			<member name="GTK_SCINTILLA_LEXER_FORTRAN" value="36"/>
			<member name="GTK_SCINTILLA_LEXER_F77" value="37"/>
			<member name="GTK_SCINTILLA_LEXER_CSS" value="38"/>
			<member name="GTK_SCINTILLA_LEXER_POV" value="39"/>
			<member name="GTK_SCINTILLA_LEXER_LOUT" value="40"/>
			<member name="GTK_SCINTILLA_LEXER_ESCRIPT" value="41"/>
			<member name="GTK_SCINTILLA_LEXER_PS" value="42"/>
			<member name="GTK_SCINTILLA_LEXER_NSIS" value="43"/>
			<member name="GTK_SCINTILLA_LEXER_MMIXAL" value="44"/>
			<member name="GTK_SCINTILLA_LEXER_CLW" value="45"/>
			<member name="GTK_SCINTILLA_LEXER_CLWNOCASE" value="46"/>
			<member name="GTK_SCINTILLA_LEXER_LOT" value="47"/>
			<member name="GTK_SCINTILLA_LEXER_YAML" value="48"/>
			<member name="GTK_SCINTILLA_LEXER_TEX" value="49"/>
			<member name="GTK_SCINTILLA_LEXER_METAPOST" value="50"/>
			<member name="GTK_SCINTILLA_LEXER_POWERBASIC" value="51"/>
			<member name="GTK_SCINTILLA_LEXER_FORTH" value="52"/>
			<member name="GTK_SCINTILLA_LEXER_ERLANG" value="53"/>
			<member name="GTK_SCINTILLA_LEXER_OCTAVE" value="54"/>
			<member name="GTK_SCINTILLA_LEXER_MSSQL" value="55"/>
			<member name="GTK_SCINTILLA_LEXER_VERILOG" value="56"/>
			<member name="GTK_SCINTILLA_LEXER_KIX" value="57"/>
			<member name="GTK_SCINTILLA_LEXER_GUI4CLI" value="58"/>
			<member name="GTK_SCINTILLA_LEXER_SPECMAN" value="59"/>
			<member name="GTK_SCINTILLA_LEXER_AU3" value="60"/>
			<member name="GTK_SCINTILLA_LEXER_APDL" value="61"/>
			<member name="GTK_SCINTILLA_LEXER_BASH" value="62"/>
			<member name="GTK_SCINTILLA_LEXER_ASN1" value="63"/>
			<member name="GTK_SCINTILLA_LEXER_VHDL" value="64"/>
			<member name="GTK_SCINTILLA_LEXER_CAML" value="65"/>
			<member name="GTK_SCINTILLA_LEXER_BLITZBASIC" value="66"/>
			<member name="GTK_SCINTILLA_LEXER_PUREBASIC" value="67"/>
			<member name="GTK_SCINTILLA_LEXER_HASKELL" value="68"/>
			<member name="GTK_SCINTILLA_LEXER_PHPSCRIPT" value="69"/>
			<member name="GTK_SCINTILLA_LEXER_TADS3" value="70"/>
			<member name="GTK_SCINTILLA_LEXER_REBOL" value="71"/>
			<member name="GTK_SCINTILLA_LEXER_SMALLTALK" value="72"/>
			<member name="GTK_SCINTILLA_LEXER_FLAGSHIP" value="73"/>
			<member name="GTK_SCINTILLA_LEXER_CSOUND" value="74"/>
			<member name="GTK_SCINTILLA_LEXER_FREEBASIC" value="75"/>
			<member name="GTK_SCINTILLA_LEXER_INNOSETUP" value="76"/>
			<member name="GTK_SCINTILLA_LEXER_OPAL" value="77"/>
			<member name="GTK_SCINTILLA_LEXER_SPICE" value="78"/>
			<member name="GTK_SCINTILLA_LEXER_D" value="79"/>
			<member name="GTK_SCINTILLA_LEXER_CMAKE" value="80"/>
			<member name="GTK_SCINTILLA_LEXER_GAP" value="81"/>
			<member name="GTK_SCINTILLA_LEXER_PLM" value="82"/>
			<member name="GTK_SCINTILLA_LEXER_PROGRESS" value="83"/>
			<member name="GTK_SCINTILLA_LEXER_ABAQUS" value="84"/>
			<member name="GTK_SCINTILLA_LEXER_ASYMPTOTE" value="85"/>
			<member name="GTK_SCINTILLA_LEXER_R" value="86"/>
			<member name="GTK_SCINTILLA_LEXER_MAGIK" value="87"/>
			<member name="GTK_SCINTILLA_LEXER_POWERSHELL" value="88"/>
			<member name="GTK_SCINTILLA_LEXER_MYSQL" value="89"/>
			<member name="GTK_SCINTILLA_LEXER_PO" value="90"/>
			<member name="GTK_SCINTILLA_LEXER_TAL" value="91"/>
			<member name="GTK_SCINTILLA_LEXER_COBOL" value="92"/>
			<member name="GTK_SCINTILLA_LEXER_TACL" value="93"/>
			<member name="GTK_SCINTILLA_LEXER_SORCUS" value="94"/>
			<member name="GTK_SCINTILLA_LEXER_POWERPRO" value="95"/>
			<member name="GTK_SCINTILLA_LEXER_NIMROD" value="96"/>
			<member name="GTK_SCINTILLA_LEXER_SML" value="97"/>
			<member name="GTK_SCINTILLA_LEXER_MARKDOWN" value="98"/>
			<member name="GTK_SCINTILLA_LEXER_AUTOMATIC" value="1000"/>
		</enum>
		<enum name="GtkScintillaLineCache">
			<member name="GTK_SCINTILLA_LINE_CACHE_NONE" value="0"/>
			<member name="GTK_SCINTILLA_LINE_CACHE_CARET" value="1"/>
			<member name="GTK_SCINTILLA_LINE_CACHE_PAGE" value="2"/>
			<member name="GTK_SCINTILLA_LINE_CACHE_DOCUMENT" value="3"/>
		</enum>
		<enum name="GtkScintillaMarginType">
			<member name="GTK_SCINTILLA_MARGIN_TYPE_SYMBOL" value="0"/>
			<member name="GTK_SCINTILLA_MARGIN_TYPE_NUMBER" value="1"/>
			<member name="GTK_SCINTILLA_MARGIN_TYPE_BACK" value="2"/>
			<member name="GTK_SCINTILLA_MARGIN_TYPE_FORE" value="3"/>
			<member name="GTK_SCINTILLA_MARGIN_TYPE_TEXT" value="4"/>
			<member name="GTK_SCINTILLA_MARGIN_TYPE_RTEXT" value="5"/>
		</enum>
		<enum name="GtkScintillaMarkerOutline">
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDEREND" value="25"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDEROPENMID" value="26"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDERMIDTAIL" value="27"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDERTAIL" value="28"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDERSUB" value="29"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDER" value="30"/>
			<member name="GTK_SCINTILLA_MARKER_OUTLINE_FOLDEROPEN" value="31"/>
		</enum>
		<enum name="GtkScintillaMarkerSymbol">
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CIRCLE" value="0"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_ROUNDRECT" value="1"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_ARROW" value="2"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_SMALLRECT" value="3"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_SHORTARROW" value="4"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_EMPTY" value="5"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_ARROWDOWN" value="6"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_MINUS" value="7"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_PLUS" value="8"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_VLINE" value="9"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_LCORNER" value="10"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_TCORNER" value="11"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_BOXPLUS" value="12"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_BOXPLUSCONNECTED" value="13"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_BOXMINUS" value="14"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_BOXMINUSCONNECTED" value="15"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_LCORNERCURVE" value="16"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_TCORNERCURVE" value="17"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CIRCLEPLUS" value="18"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CIRCLEPLUSCONNECTED" value="19"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CIRCLEMINUS" value="20"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CIRCLEMINUSCONNECTED" value="21"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_BACKGROUND" value="22"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_DOTDOTDOT" value="23"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_ARROWS" value="24"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_PIXMAP" value="25"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_FULLRECT" value="26"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_LEFTRECT" value="27"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_AVAILABLE" value="28"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_UNDERLINE" value="29"/>
			<member name="GTK_SCINTILLA_MARKER_SYMBOL_CHARACTER" value="10000"/>
		</enum>
		<enum name="GtkScintillaMessages">
			<member name="GTK_SCINTILLA_MSG_START" value="2000"/>
			<member name="GTK_SCINTILLA_MSG_OPTIONAL_START" value="3000"/>
			<member name="GTK_SCINTILLA_MSG_LEXER_START" value="4000"/>
			<member name="GTK_SCINTILLA_MSG_ADDTEXT" value="2001"/>
			<member name="GTK_SCINTILLA_MSG_ADDSTYLEDTEXT" value="2002"/>
			<member name="GTK_SCINTILLA_MSG_INSERTTEXT" value="2003"/>
			<member name="GTK_SCINTILLA_MSG_CLEARALL" value="2004"/>
			<member name="GTK_SCINTILLA_MSG_CLEARDOCUMENTSTYLE" value="2005"/>
			<member name="GTK_SCINTILLA_MSG_GETLENGTH" value="2006"/>
			<member name="GTK_SCINTILLA_MSG_GETCHARAT" value="2007"/>
			<member name="GTK_SCINTILLA_MSG_GETCURRENTPOS" value="2008"/>
			<member name="GTK_SCINTILLA_MSG_GETANCHOR" value="2009"/>
			<member name="GTK_SCINTILLA_MSG_GETSTYLEAT" value="2010"/>
			<member name="GTK_SCINTILLA_MSG_REDO" value="2011"/>
			<member name="GTK_SCINTILLA_MSG_SETUNDOCOLLECTION" value="2012"/>
			<member name="GTK_SCINTILLA_MSG_SELECTALL" value="2013"/>
			<member name="GTK_SCINTILLA_MSG_SETSAVEPOINT" value="2014"/>
			<member name="GTK_SCINTILLA_MSG_GETSTYLEDTEXT" value="2015"/>
			<member name="GTK_SCINTILLA_MSG_CANREDO" value="2016"/>
			<member name="GTK_SCINTILLA_MSG_MARKERLINEFROMHANDLE" value="2017"/>
			<member name="GTK_SCINTILLA_MSG_MARKERDELETEHANDLE" value="2018"/>
			<member name="GTK_SCINTILLA_MSG_GETUNDOCOLLECTION" value="2019"/>
			<member name="GTK_SCINTILLA_MSG_GETVIEWWS" value="2020"/>
			<member name="GTK_SCINTILLA_MSG_SETVIEWWS" value="2021"/>
			<member name="GTK_SCINTILLA_MSG_POSITIONFROMPOINT" value="2022"/>
			<member name="GTK_SCINTILLA_MSG_POSITIONFROMPOINTCLOSE" value="2023"/>
			<member name="GTK_SCINTILLA_MSG_GOTOLINE" value="2024"/>
			<member name="GTK_SCINTILLA_MSG_GOTOPOS" value="2025"/>
			<member name="GTK_SCINTILLA_MSG_SETANCHOR" value="2026"/>
			<member name="GTK_SCINTILLA_MSG_GETCURLINE" value="2027"/>
			<member name="GTK_SCINTILLA_MSG_GETENDSTYLED" value="2028"/>
			<member name="GTK_SCINTILLA_MSG_CONVERTEOLS" value="2029"/>
			<member name="GTK_SCINTILLA_MSG_GETEOLMODE" value="2030"/>
			<member name="GTK_SCINTILLA_MSG_SETEOLMODE" value="2031"/>
			<member name="GTK_SCINTILLA_MSG_STARTSTYLING" value="2032"/>
			<member name="GTK_SCINTILLA_MSG_SETSTYLING" value="2033"/>
			<member name="GTK_SCINTILLA_MSG_GETBUFFEREDDRAW" value="2034"/>
			<member name="GTK_SCINTILLA_MSG_SETBUFFEREDDRAW" value="2035"/>
			<member name="GTK_SCINTILLA_MSG_SETTABWIDTH" value="2036"/>
			<member name="GTK_SCINTILLA_MSG_GETTABWIDTH" value="2121"/>
			<member name="GTK_SCINTILLA_MSG_SETCODEPAGE" value="2037"/>
			<member name="GTK_SCINTILLA_MSG_SETUSEPALETTE" value="2039"/>
			<member name="GTK_SCINTILLA_MSG_MARKERDEFINE" value="2040"/>
			<member name="GTK_SCINTILLA_MSG_MARKERSETFORE" value="2041"/>
			<member name="GTK_SCINTILLA_MSG_MARKERSETBACK" value="2042"/>
			<member name="GTK_SCINTILLA_MSG_MARKERADD" value="2043"/>
			<member name="GTK_SCINTILLA_MSG_MARKERDELETE" value="2044"/>
			<member name="GTK_SCINTILLA_MSG_MARKERDELETEALL" value="2045"/>
			<member name="GTK_SCINTILLA_MSG_MARKERGET" value="2046"/>
			<member name="GTK_SCINTILLA_MSG_MARKERNEXT" value="2047"/>
			<member name="GTK_SCINTILLA_MSG_MARKERPREVIOUS" value="2048"/>
			<member name="GTK_SCINTILLA_MSG_MARKERDEFINEPIXMAP" value="2049"/>
			<member name="GTK_SCINTILLA_MSG_MARKERADDSET" value="2466"/>
			<member name="GTK_SCINTILLA_MSG_MARKERSETALPHA" value="2476"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINTYPEN" value="2240"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINTYPEN" value="2241"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINWIDTHN" value="2242"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINWIDTHN" value="2243"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINMASKN" value="2244"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINMASKN" value="2245"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINSENSITIVEN" value="2246"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINSENSITIVEN" value="2247"/>
			<member name="GTK_SCINTILLA_MSG_STYLECLEARALL" value="2050"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETFORE" value="2051"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETBACK" value="2052"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETBOLD" value="2053"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETITALIC" value="2054"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETSIZE" value="2055"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETFONT" value="2056"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETEOLFILLED" value="2057"/>
			<member name="GTK_SCINTILLA_MSG_STYLERESETDEFAULT" value="2058"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETUNDERLINE" value="2059"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETFORE" value="2481"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETBACK" value="2482"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETBOLD" value="2483"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETITALIC" value="2484"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETSIZE" value="2485"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETFONT" value="2486"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETEOLFILLED" value="2487"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETUNDERLINE" value="2488"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETCASE" value="2489"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETCHARACTERSET" value="2490"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETVISIBLE" value="2491"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETCHANGEABLE" value="2492"/>
			<member name="GTK_SCINTILLA_MSG_STYLEGETHOTSPOT" value="2493"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETCASE" value="2060"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETCHARACTERSET" value="2066"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETHOTSPOT" value="2409"/>
			<member name="GTK_SCINTILLA_MSG_SETSELFORE" value="2067"/>
			<member name="GTK_SCINTILLA_MSG_SETSELBACK" value="2068"/>
			<member name="GTK_SCINTILLA_MSG_GETSELALPHA" value="2477"/>
			<member name="GTK_SCINTILLA_MSG_SETSELALPHA" value="2478"/>
			<member name="GTK_SCINTILLA_MSG_GETSELEOLFILLED" value="2479"/>
			<member name="GTK_SCINTILLA_MSG_SETSELEOLFILLED" value="2480"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETFORE" value="2069"/>
			<member name="GTK_SCINTILLA_MSG_ASSIGNCMDKEY" value="2070"/>
			<member name="GTK_SCINTILLA_MSG_CLEARCMDKEY" value="2071"/>
			<member name="GTK_SCINTILLA_MSG_CLEARALLCMDKEYS" value="2072"/>
			<member name="GTK_SCINTILLA_MSG_SETSTYLINGEX" value="2073"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETVISIBLE" value="2074"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETPERIOD" value="2075"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETPERIOD" value="2076"/>
			<member name="GTK_SCINTILLA_MSG_SETWORDCHARS" value="2077"/>
			<member name="GTK_SCINTILLA_MSG_BEGINUNDOACTION" value="2078"/>
			<member name="GTK_SCINTILLA_MSG_ENDUNDOACTION" value="2079"/>
			<member name="GTK_SCINTILLA_MSG_INDICSETSTYLE" value="2080"/>
			<member name="GTK_SCINTILLA_MSG_INDICGETSTYLE" value="2081"/>
			<member name="GTK_SCINTILLA_MSG_INDICSETFORE" value="2082"/>
			<member name="GTK_SCINTILLA_MSG_INDICGETFORE" value="2083"/>
			<member name="GTK_SCINTILLA_MSG_INDICSETUNDER" value="2510"/>
			<member name="GTK_SCINTILLA_MSG_INDICGETUNDER" value="2511"/>
			<member name="GTK_SCINTILLA_MSG_SETWHITESPACEFORE" value="2084"/>
			<member name="GTK_SCINTILLA_MSG_SETWHITESPACEBACK" value="2085"/>
			<member name="GTK_SCINTILLA_MSG_SETWHITESPACESIZE" value="2086"/>
			<member name="GTK_SCINTILLA_MSG_GETWHITESPACESIZE" value="2087"/>
			<member name="GTK_SCINTILLA_MSG_SETSTYLEBITS" value="2090"/>
			<member name="GTK_SCINTILLA_MSG_GETSTYLEBITS" value="2091"/>
			<member name="GTK_SCINTILLA_MSG_SETLINESTATE" value="2092"/>
			<member name="GTK_SCINTILLA_MSG_GETLINESTATE" value="2093"/>
			<member name="GTK_SCINTILLA_MSG_GETMAXLINESTATE" value="2094"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETLINEVISIBLE" value="2095"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETLINEVISIBLE" value="2096"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETLINEBACK" value="2097"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETLINEBACK" value="2098"/>
			<member name="GTK_SCINTILLA_MSG_STYLESETCHANGEABLE" value="2099"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSHOW" value="2100"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCCANCEL" value="2101"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCACTIVE" value="2102"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCPOSSTART" value="2103"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCCOMPLETE" value="2104"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSTOPS" value="2105"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETSEPARATOR" value="2106"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETSEPARATOR" value="2107"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSELECT" value="2108"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETCANCELATSTART" value="2110"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETCANCELATSTART" value="2111"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETFILLUPS" value="2112"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETCHOOSESINGLE" value="2113"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETCHOOSESINGLE" value="2114"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETIGNORECASE" value="2115"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETIGNORECASE" value="2116"/>
			<member name="GTK_SCINTILLA_MSG_USERLISTSHOW" value="2117"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETAUTOHIDE" value="2118"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETAUTOHIDE" value="2119"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETDROPRESTOFWORD" value="2270"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETDROPRESTOFWORD" value="2271"/>
			<member name="GTK_SCINTILLA_MSG_REGISTERIMAGE" value="2405"/>
			<member name="GTK_SCINTILLA_MSG_CLEARREGISTEREDIMAGES" value="2408"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETTYPESEPARATOR" value="2285"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETTYPESEPARATOR" value="2286"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETMAXWIDTH" value="2208"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETMAXWIDTH" value="2209"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCSETMAXHEIGHT" value="2210"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETMAXHEIGHT" value="2211"/>
			<member name="GTK_SCINTILLA_MSG_SETINDENT" value="2122"/>
			<member name="GTK_SCINTILLA_MSG_GETINDENT" value="2123"/>
			<member name="GTK_SCINTILLA_MSG_SETUSETABS" value="2124"/>
			<member name="GTK_SCINTILLA_MSG_GETUSETABS" value="2125"/>
			<member name="GTK_SCINTILLA_MSG_SETLINEINDENTATION" value="2126"/>
			<member name="GTK_SCINTILLA_MSG_GETLINEINDENTATION" value="2127"/>
			<member name="GTK_SCINTILLA_MSG_GETLINEINDENTPOSITION" value="2128"/>
			<member name="GTK_SCINTILLA_MSG_GETCOLUMN" value="2129"/>
			<member name="GTK_SCINTILLA_MSG_SETHSCROLLBAR" value="2130"/>
			<member name="GTK_SCINTILLA_MSG_GETHSCROLLBAR" value="2131"/>
			<member name="GTK_SCINTILLA_MSG_SETINDENTATIONGUIDES" value="2132"/>
			<member name="GTK_SCINTILLA_MSG_GETINDENTATIONGUIDES" value="2133"/>
			<member name="GTK_SCINTILLA_MSG_SETHIGHLIGHTGUIDE" value="2134"/>
			<member name="GTK_SCINTILLA_MSG_GETHIGHLIGHTGUIDE" value="2135"/>
			<member name="GTK_SCINTILLA_MSG_GETLINEENDPOSITION" value="2136"/>
			<member name="GTK_SCINTILLA_MSG_GETCODEPAGE" value="2137"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETFORE" value="2138"/>
			<member name="GTK_SCINTILLA_MSG_GETUSEPALETTE" value="2139"/>
			<member name="GTK_SCINTILLA_MSG_GETREADONLY" value="2140"/>
			<member name="GTK_SCINTILLA_MSG_SETCURRENTPOS" value="2141"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONSTART" value="2142"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONSTART" value="2143"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONEND" value="2144"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONEND" value="2145"/>
			<member name="GTK_SCINTILLA_MSG_SETPRINTMAGNIFICATION" value="2146"/>
			<member name="GTK_SCINTILLA_MSG_GETPRINTMAGNIFICATION" value="2147"/>
			<member name="GTK_SCINTILLA_MSG_SETPRINTCOLOURMODE" value="2148"/>
			<member name="GTK_SCINTILLA_MSG_GETPRINTCOLOURMODE" value="2149"/>
			<member name="GTK_SCINTILLA_MSG_FINDTEXT" value="2150"/>
			<member name="GTK_SCINTILLA_MSG_FORMATRANGE" value="2151"/>
			<member name="GTK_SCINTILLA_MSG_GETFIRSTVISIBLELINE" value="2152"/>
			<member name="GTK_SCINTILLA_MSG_GETLINE" value="2153"/>
			<member name="GTK_SCINTILLA_MSG_GETLINECOUNT" value="2154"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINLEFT" value="2155"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINLEFT" value="2156"/>
			<member name="GTK_SCINTILLA_MSG_SETMARGINRIGHT" value="2157"/>
			<member name="GTK_SCINTILLA_MSG_GETMARGINRIGHT" value="2158"/>
			<member name="GTK_SCINTILLA_MSG_GETMODIFY" value="2159"/>
			<member name="GTK_SCINTILLA_MSG_SETSEL" value="2160"/>
			<member name="GTK_SCINTILLA_MSG_GETSELTEXT" value="2161"/>
			<member name="GTK_SCINTILLA_MSG_GETTEXTRANGE" value="2162"/>
			<member name="GTK_SCINTILLA_MSG_HIDESELECTION" value="2163"/>
			<member name="GTK_SCINTILLA_MSG_POINTXFROMPOSITION" value="2164"/>
			<member name="GTK_SCINTILLA_MSG_POINTYFROMPOSITION" value="2165"/>
			<member name="GTK_SCINTILLA_MSG_LINEFROMPOSITION" value="2166"/>
			<member name="GTK_SCINTILLA_MSG_POSITIONFROMLINE" value="2167"/>
			<member name="GTK_SCINTILLA_MSG_LINESCROLL" value="2168"/>
			<member name="GTK_SCINTILLA_MSG_SCROLLCARET" value="2169"/>
			<member name="GTK_SCINTILLA_MSG_REPLACESEL" value="2170"/>
			<member name="GTK_SCINTILLA_MSG_SETREADONLY" value="2171"/>
			<member name="GTK_SCINTILLA_MSG_NULL" value="2172"/>
			<member name="GTK_SCINTILLA_MSG_CANPASTE" value="2173"/>
			<member name="GTK_SCINTILLA_MSG_CANUNDO" value="2174"/>
			<member name="GTK_SCINTILLA_MSG_EMPTYUNDOBUFFER" value="2175"/>
			<member name="GTK_SCINTILLA_MSG_UNDO" value="2176"/>
			<member name="GTK_SCINTILLA_MSG_CUT" value="2177"/>
			<member name="GTK_SCINTILLA_MSG_COPY" value="2178"/>
			<member name="GTK_SCINTILLA_MSG_PASTE" value="2179"/>
			<member name="GTK_SCINTILLA_MSG_CLEAR" value="2180"/>
			<member name="GTK_SCINTILLA_MSG_SETTEXT" value="2181"/>
			<member name="GTK_SCINTILLA_MSG_GETTEXT" value="2182"/>
			<member name="GTK_SCINTILLA_MSG_GETTEXTLENGTH" value="2183"/>
			<member name="GTK_SCINTILLA_MSG_GETDIRECTFUNCTION" value="2184"/>
			<member name="GTK_SCINTILLA_MSG_GETDIRECTPOINTER" value="2185"/>
			<member name="GTK_SCINTILLA_MSG_SETOVERTYPE" value="2186"/>
			<member name="GTK_SCINTILLA_MSG_GETOVERTYPE" value="2187"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETWIDTH" value="2188"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETWIDTH" value="2189"/>
			<member name="GTK_SCINTILLA_MSG_SETTARGETSTART" value="2190"/>
			<member name="GTK_SCINTILLA_MSG_GETTARGETSTART" value="2191"/>
			<member name="GTK_SCINTILLA_MSG_SETTARGETEND" value="2192"/>
			<member name="GTK_SCINTILLA_MSG_GETTARGETEND" value="2193"/>
			<member name="GTK_SCINTILLA_MSG_REPLACETARGET" value="2194"/>
			<member name="GTK_SCINTILLA_MSG_REPLACETARGETRE" value="2195"/>
			<member name="GTK_SCINTILLA_MSG_SEARCHINTARGET" value="2197"/>
			<member name="GTK_SCINTILLA_MSG_SETSEARCHFLAGS" value="2198"/>
			<member name="GTK_SCINTILLA_MSG_GETSEARCHFLAGS" value="2199"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPSHOW" value="2200"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPCANCEL" value="2201"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPACTIVE" value="2202"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPPOSSTART" value="2203"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPSETHLT" value="2204"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPSETBACK" value="2205"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPSETFORE" value="2206"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPSETFOREHLT" value="2207"/>
			<member name="GTK_SCINTILLA_MSG_CALLTIPUSESTYLE" value="2212"/>
			<member name="GTK_SCINTILLA_MSG_VISIBLEFROMDOCLINE" value="2220"/>
			<member name="GTK_SCINTILLA_MSG_DOCLINEFROMVISIBLE" value="2221"/>
			<member name="GTK_SCINTILLA_MSG_WRAPCOUNT" value="2235"/>
			<member name="GTK_SCINTILLA_MSG_SETFOLDLEVEL" value="2222"/>
			<member name="GTK_SCINTILLA_MSG_GETFOLDLEVEL" value="2223"/>
			<member name="GTK_SCINTILLA_MSG_GETLASTCHILD" value="2224"/>
			<member name="GTK_SCINTILLA_MSG_GETFOLDPARENT" value="2225"/>
			<member name="GTK_SCINTILLA_MSG_SHOWLINES" value="2226"/>
			<member name="GTK_SCINTILLA_MSG_HIDELINES" value="2227"/>
			<member name="GTK_SCINTILLA_MSG_GETLINEVISIBLE" value="2228"/>
			<member name="GTK_SCINTILLA_MSG_SETFOLDEXPANDED" value="2229"/>
			<member name="GTK_SCINTILLA_MSG_GETFOLDEXPANDED" value="2230"/>
			<member name="GTK_SCINTILLA_MSG_TOGGLEFOLD" value="2231"/>
			<member name="GTK_SCINTILLA_MSG_ENSUREVISIBLE" value="2232"/>
			<member name="GTK_SCINTILLA_MSG_SETFOLDFLAGS" value="2233"/>
			<member name="GTK_SCINTILLA_MSG_ENSUREVISIBLEENFORCEPOLICY" value="2234"/>
			<member name="GTK_SCINTILLA_MSG_SETTABINDENTS" value="2260"/>
			<member name="GTK_SCINTILLA_MSG_GETTABINDENTS" value="2261"/>
			<member name="GTK_SCINTILLA_MSG_SETBACKSPACEUNINDENTS" value="2262"/>
			<member name="GTK_SCINTILLA_MSG_GETBACKSPACEUNINDENTS" value="2263"/>
			<member name="GTK_SCINTILLA_MSG_SETMOUSEDWELLTIME" value="2264"/>
			<member name="GTK_SCINTILLA_MSG_GETMOUSEDWELLTIME" value="2265"/>
			<member name="GTK_SCINTILLA_MSG_WORDSTARTPOSITION" value="2266"/>
			<member name="GTK_SCINTILLA_MSG_WORDENDPOSITION" value="2267"/>
			<member name="GTK_SCINTILLA_MSG_SETWRAPMODE" value="2268"/>
			<member name="GTK_SCINTILLA_MSG_GETWRAPMODE" value="2269"/>
			<member name="GTK_SCINTILLA_MSG_SETWRAPVISUALFLAGS" value="2460"/>
			<member name="GTK_SCINTILLA_MSG_GETWRAPVISUALFLAGS" value="2461"/>
			<member name="GTK_SCINTILLA_MSG_SETWRAPVISUALFLAGSLOCATION" value="2462"/>
			<member name="GTK_SCINTILLA_MSG_GETWRAPVISUALFLAGSLOCATION" value="2463"/>
			<member name="GTK_SCINTILLA_MSG_SETWRAPSTARTINDENT" value="2464"/>
			<member name="GTK_SCINTILLA_MSG_GETWRAPSTARTINDENT" value="2465"/>
			<member name="GTK_SCINTILLA_MSG_SETWRAPINDENTMODE" value="2472"/>
			<member name="GTK_SCINTILLA_MSG_GETWRAPINDENTMODE" value="2473"/>
			<member name="GTK_SCINTILLA_MSG_SETLAYOUTCACHE" value="2272"/>
			<member name="GTK_SCINTILLA_MSG_GETLAYOUTCACHE" value="2273"/>
			<member name="GTK_SCINTILLA_MSG_SETSCROLLWIDTH" value="2274"/>
			<member name="GTK_SCINTILLA_MSG_GETSCROLLWIDTH" value="2275"/>
			<member name="GTK_SCINTILLA_MSG_SETSCROLLWIDTHTRACKING" value="2516"/>
			<member name="GTK_SCINTILLA_MSG_GETSCROLLWIDTHTRACKING" value="2517"/>
			<member name="GTK_SCINTILLA_MSG_TEXTWIDTH" value="2276"/>
			<member name="GTK_SCINTILLA_MSG_SETENDATLASTLINE" value="2277"/>
			<member name="GTK_SCINTILLA_MSG_GETENDATLASTLINE" value="2278"/>
			<member name="GTK_SCINTILLA_MSG_TEXTHEIGHT" value="2279"/>
			<member name="GTK_SCINTILLA_MSG_SETVSCROLLBAR" value="2280"/>
			<member name="GTK_SCINTILLA_MSG_GETVSCROLLBAR" value="2281"/>
			<member name="GTK_SCINTILLA_MSG_APPENDTEXT" value="2282"/>
			<member name="GTK_SCINTILLA_MSG_GETTWOPHASEDRAW" value="2283"/>
			<member name="GTK_SCINTILLA_MSG_SETTWOPHASEDRAW" value="2284"/>
			<member name="GTK_SCINTILLA_MSG_SETFONTQUALITY" value="2611"/>
			<member name="GTK_SCINTILLA_MSG_GETFONTQUALITY" value="2612"/>
			<member name="GTK_SCINTILLA_MSG_SETFIRSTVISIBLELINE" value="2613"/>
			<member name="GTK_SCINTILLA_MSG_SETMULTIPASTE" value="2614"/>
			<member name="GTK_SCINTILLA_MSG_GETMULTIPASTE" value="2615"/>
			<member name="GTK_SCINTILLA_MSG_GETTAG" value="2616"/>
			<member name="GTK_SCINTILLA_MSG_TARGETFROMSELECTION" value="2287"/>
			<member name="GTK_SCINTILLA_MSG_LINESJOIN" value="2288"/>
			<member name="GTK_SCINTILLA_MSG_LINESSPLIT" value="2289"/>
			<member name="GTK_SCINTILLA_MSG_SETFOLDMARGINCOLOUR" value="2290"/>
			<member name="GTK_SCINTILLA_MSG_SETFOLDMARGINHICOLOUR" value="2291"/>
			<member name="GTK_SCINTILLA_MSG_LINEDOWN" value="2300"/>
			<member name="GTK_SCINTILLA_MSG_LINEDOWNEXTEND" value="2301"/>
			<member name="GTK_SCINTILLA_MSG_LINEUP" value="2302"/>
			<member name="GTK_SCINTILLA_MSG_LINEUPEXTEND" value="2303"/>
			<member name="GTK_SCINTILLA_MSG_CHARLEFT" value="2304"/>
			<member name="GTK_SCINTILLA_MSG_CHARLEFTEXTEND" value="2305"/>
			<member name="GTK_SCINTILLA_MSG_CHARRIGHT" value="2306"/>
			<member name="GTK_SCINTILLA_MSG_CHARRIGHTEXTEND" value="2307"/>
			<member name="GTK_SCINTILLA_MSG_WORDLEFT" value="2308"/>
			<member name="GTK_SCINTILLA_MSG_WORDLEFTEXTEND" value="2309"/>
			<member name="GTK_SCINTILLA_MSG_WORDRIGHT" value="2310"/>
			<member name="GTK_SCINTILLA_MSG_WORDRIGHTEXTEND" value="2311"/>
			<member name="GTK_SCINTILLA_MSG_HOME" value="2312"/>
			<member name="GTK_SCINTILLA_MSG_HOMEEXTEND" value="2313"/>
			<member name="GTK_SCINTILLA_MSG_LINEEND" value="2314"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDEXTEND" value="2315"/>
			<member name="GTK_SCINTILLA_MSG_DOCUMENTSTART" value="2316"/>
			<member name="GTK_SCINTILLA_MSG_DOCUMENTSTARTEXTEND" value="2317"/>
			<member name="GTK_SCINTILLA_MSG_DOCUMENTEND" value="2318"/>
			<member name="GTK_SCINTILLA_MSG_DOCUMENTENDEXTEND" value="2319"/>
			<member name="GTK_SCINTILLA_MSG_PAGEUP" value="2320"/>
			<member name="GTK_SCINTILLA_MSG_PAGEUPEXTEND" value="2321"/>
			<member name="GTK_SCINTILLA_MSG_PAGEDOWN" value="2322"/>
			<member name="GTK_SCINTILLA_MSG_PAGEDOWNEXTEND" value="2323"/>
			<member name="GTK_SCINTILLA_MSG_EDITTOGGLEOVERTYPE" value="2324"/>
			<member name="GTK_SCINTILLA_MSG_CANCEL" value="2325"/>
			<member name="GTK_SCINTILLA_MSG_DELETEBACK" value="2326"/>
			<member name="GTK_SCINTILLA_MSG_TAB" value="2327"/>
			<member name="GTK_SCINTILLA_MSG_BACKTAB" value="2328"/>
			<member name="GTK_SCINTILLA_MSG_NEWLINE" value="2329"/>
			<member name="GTK_SCINTILLA_MSG_FORMFEED" value="2330"/>
			<member name="GTK_SCINTILLA_MSG_VCHOME" value="2331"/>
			<member name="GTK_SCINTILLA_MSG_VCHOMEEXTEND" value="2332"/>
			<member name="GTK_SCINTILLA_MSG_ZOOMIN" value="2333"/>
			<member name="GTK_SCINTILLA_MSG_ZOOMOUT" value="2334"/>
			<member name="GTK_SCINTILLA_MSG_DELWORDLEFT" value="2335"/>
			<member name="GTK_SCINTILLA_MSG_DELWORDRIGHT" value="2336"/>
			<member name="GTK_SCINTILLA_MSG_DELWORDRIGHTEND" value="2518"/>
			<member name="GTK_SCINTILLA_MSG_LINECUT" value="2337"/>
			<member name="GTK_SCINTILLA_MSG_LINEDELETE" value="2338"/>
			<member name="GTK_SCINTILLA_MSG_LINETRANSPOSE" value="2339"/>
			<member name="GTK_SCINTILLA_MSG_LINEDUPLICATE" value="2404"/>
			<member name="GTK_SCINTILLA_MSG_LOWERCASE" value="2340"/>
			<member name="GTK_SCINTILLA_MSG_UPPERCASE" value="2341"/>
			<member name="GTK_SCINTILLA_MSG_LINESCROLLDOWN" value="2342"/>
			<member name="GTK_SCINTILLA_MSG_LINESCROLLUP" value="2343"/>
			<member name="GTK_SCINTILLA_MSG_DELETEBACKNOTLINE" value="2344"/>
			<member name="GTK_SCINTILLA_MSG_HOMEDISPLAY" value="2345"/>
			<member name="GTK_SCINTILLA_MSG_HOMEDISPLAYEXTEND" value="2346"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDDISPLAY" value="2347"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDDISPLAYEXTEND" value="2348"/>
			<member name="GTK_SCINTILLA_MSG_HOMEWRAP" value="2349"/>
			<member name="GTK_SCINTILLA_MSG_HOMEWRAPEXTEND" value="2450"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDWRAP" value="2451"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDWRAPEXTEND" value="2452"/>
			<member name="GTK_SCINTILLA_MSG_VCHOMEWRAP" value="2453"/>
			<member name="GTK_SCINTILLA_MSG_VCHOMEWRAPEXTEND" value="2454"/>
			<member name="GTK_SCINTILLA_MSG_LINECOPY" value="2455"/>
			<member name="GTK_SCINTILLA_MSG_MOVECARETINSIDEVIEW" value="2401"/>
			<member name="GTK_SCINTILLA_MSG_LINELENGTH" value="2350"/>
			<member name="GTK_SCINTILLA_MSG_BRACEHIGHLIGHT" value="2351"/>
			<member name="GTK_SCINTILLA_MSG_BRACEBADLIGHT" value="2352"/>
			<member name="GTK_SCINTILLA_MSG_BRACEMATCH" value="2353"/>
			<member name="GTK_SCINTILLA_MSG_GETVIEWEOL" value="2355"/>
			<member name="GTK_SCINTILLA_MSG_SETVIEWEOL" value="2356"/>
			<member name="GTK_SCINTILLA_MSG_GETDOCPOINTER" value="2357"/>
			<member name="GTK_SCINTILLA_MSG_SETDOCPOINTER" value="2358"/>
			<member name="GTK_SCINTILLA_MSG_SETMODEVENTMASK" value="2359"/>
			<member name="GTK_SCINTILLA_MSG_GETEDGECOLUMN" value="2360"/>
			<member name="GTK_SCINTILLA_MSG_SETEDGECOLUMN" value="2361"/>
			<member name="GTK_SCINTILLA_MSG_GETEDGEMODE" value="2362"/>
			<member name="GTK_SCINTILLA_MSG_SETEDGEMODE" value="2363"/>
			<member name="GTK_SCINTILLA_MSG_GETEDGECOLOUR" value="2364"/>
			<member name="GTK_SCINTILLA_MSG_SETEDGECOLOUR" value="2365"/>
			<member name="GTK_SCINTILLA_MSG_SEARCHANCHOR" value="2366"/>
			<member name="GTK_SCINTILLA_MSG_SEARCHNEXT" value="2367"/>
			<member name="GTK_SCINTILLA_MSG_SEARCHPREV" value="2368"/>
			<member name="GTK_SCINTILLA_MSG_LINESONSCREEN" value="2370"/>
			<member name="GTK_SCINTILLA_MSG_USEPOPUP" value="2371"/>
			<member name="GTK_SCINTILLA_MSG_SELECTIONISRECTANGLE" value="2372"/>
			<member name="GTK_SCINTILLA_MSG_SETZOOM" value="2373"/>
			<member name="GTK_SCINTILLA_MSG_GETZOOM" value="2374"/>
			<member name="GTK_SCINTILLA_MSG_CREATEDOCUMENT" value="2375"/>
			<member name="GTK_SCINTILLA_MSG_ADDREFDOCUMENT" value="2376"/>
			<member name="GTK_SCINTILLA_MSG_RELEASEDOCUMENT" value="2377"/>
			<member name="GTK_SCINTILLA_MSG_GETMODEVENTMASK" value="2378"/>
			<member name="GTK_SCINTILLA_MSG_SETFOCUS" value="2380"/>
			<member name="GTK_SCINTILLA_MSG_GETFOCUS" value="2381"/>
			<member name="GTK_SCINTILLA_MSG_SETSTATUS" value="2382"/>
			<member name="GTK_SCINTILLA_MSG_GETSTATUS" value="2383"/>
			<member name="GTK_SCINTILLA_MSG_SETMOUSEDOWNCAPTURES" value="2384"/>
			<member name="GTK_SCINTILLA_MSG_GETMOUSEDOWNCAPTURES" value="2385"/>
			<member name="GTK_SCINTILLA_MSG_SETCURSOR" value="2386"/>
			<member name="GTK_SCINTILLA_MSG_GETCURSOR" value="2387"/>
			<member name="GTK_SCINTILLA_MSG_SETCONTROLCHARSYMBOL" value="2388"/>
			<member name="GTK_SCINTILLA_MSG_GETCONTROLCHARSYMBOL" value="2389"/>
			<member name="GTK_SCINTILLA_MSG_WORDPARTLEFT" value="2390"/>
			<member name="GTK_SCINTILLA_MSG_WORDPARTLEFTEXTEND" value="2391"/>
			<member name="GTK_SCINTILLA_MSG_WORDPARTRIGHT" value="2392"/>
			<member name="GTK_SCINTILLA_MSG_WORDPARTRIGHTEXTEND" value="2393"/>
			<member name="GTK_SCINTILLA_MSG_SETVISIBLEPOLICY" value="2394"/>
			<member name="GTK_SCINTILLA_MSG_DELLINELEFT" value="2395"/>
			<member name="GTK_SCINTILLA_MSG_DELLINERIGHT" value="2396"/>
			<member name="GTK_SCINTILLA_MSG_SETXOFFSET" value="2397"/>
			<member name="GTK_SCINTILLA_MSG_GETXOFFSET" value="2398"/>
			<member name="GTK_SCINTILLA_MSG_CHOOSECARETX" value="2399"/>
			<member name="GTK_SCINTILLA_MSG_GRABFOCUS" value="2400"/>
			<member name="GTK_SCINTILLA_MSG_SETXCARETPOLICY" value="2402"/>
			<member name="GTK_SCINTILLA_MSG_SETYCARETPOLICY" value="2403"/>
			<member name="GTK_SCINTILLA_MSG_SETPRINTWRAPMODE" value="2406"/>
			<member name="GTK_SCINTILLA_MSG_GETPRINTWRAPMODE" value="2407"/>
			<member name="GTK_SCINTILLA_MSG_SETHOTSPOTACTIVEFORE" value="2410"/>
			<member name="GTK_SCINTILLA_MSG_GETHOTSPOTACTIVEFORE" value="2494"/>
			<member name="GTK_SCINTILLA_MSG_SETHOTSPOTACTIVEBACK" value="2411"/>
			<member name="GTK_SCINTILLA_MSG_GETHOTSPOTACTIVEBACK" value="2495"/>
			<member name="GTK_SCINTILLA_MSG_SETHOTSPOTACTIVEUNDERLINE" value="2412"/>
			<member name="GTK_SCINTILLA_MSG_GETHOTSPOTACTIVEUNDERLINE" value="2496"/>
			<member name="GTK_SCINTILLA_MSG_SETHOTSPOTSINGLELINE" value="2421"/>
			<member name="GTK_SCINTILLA_MSG_GETHOTSPOTSINGLELINE" value="2497"/>
			<member name="GTK_SCINTILLA_MSG_PARADOWN" value="2413"/>
			<member name="GTK_SCINTILLA_MSG_PARADOWNEXTEND" value="2414"/>
			<member name="GTK_SCINTILLA_MSG_PARAUP" value="2415"/>
			<member name="GTK_SCINTILLA_MSG_PARAUPEXTEND" value="2416"/>
			<member name="GTK_SCINTILLA_MSG_POSITIONBEFORE" value="2417"/>
			<member name="GTK_SCINTILLA_MSG_POSITIONAFTER" value="2418"/>
			<member name="GTK_SCINTILLA_MSG_COPYRANGE" value="2419"/>
			<member name="GTK_SCINTILLA_MSG_COPYTEXT" value="2420"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONMODE" value="2422"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONMODE" value="2423"/>
			<member name="GTK_SCINTILLA_MSG_GETLINESELSTARTPOSITION" value="2424"/>
			<member name="GTK_SCINTILLA_MSG_GETLINESELENDPOSITION" value="2425"/>
			<member name="GTK_SCINTILLA_MSG_LINEDOWNRECTEXTEND" value="2426"/>
			<member name="GTK_SCINTILLA_MSG_LINEUPRECTEXTEND" value="2427"/>
			<member name="GTK_SCINTILLA_MSG_CHARLEFTRECTEXTEND" value="2428"/>
			<member name="GTK_SCINTILLA_MSG_CHARRIGHTRECTEXTEND" value="2429"/>
			<member name="GTK_SCINTILLA_MSG_HOMERECTEXTEND" value="2430"/>
			<member name="GTK_SCINTILLA_MSG_VCHOMERECTEXTEND" value="2431"/>
			<member name="GTK_SCINTILLA_MSG_LINEENDRECTEXTEND" value="2432"/>
			<member name="GTK_SCINTILLA_MSG_PAGEUPRECTEXTEND" value="2433"/>
			<member name="GTK_SCINTILLA_MSG_PAGEDOWNRECTEXTEND" value="2434"/>
			<member name="GTK_SCINTILLA_MSG_STUTTEREDPAGEUP" value="2435"/>
			<member name="GTK_SCINTILLA_MSG_STUTTEREDPAGEUPEXTEND" value="2436"/>
			<member name="GTK_SCINTILLA_MSG_STUTTEREDPAGEDOWN" value="2437"/>
			<member name="GTK_SCINTILLA_MSG_STUTTEREDPAGEDOWNEXTEND" value="2438"/>
			<member name="GTK_SCINTILLA_MSG_WORDLEFTEND" value="2439"/>
			<member name="GTK_SCINTILLA_MSG_WORDLEFTENDEXTEND" value="2440"/>
			<member name="GTK_SCINTILLA_MSG_WORDRIGHTEND" value="2441"/>
			<member name="GTK_SCINTILLA_MSG_WORDRIGHTENDEXTEND" value="2442"/>
			<member name="GTK_SCINTILLA_MSG_SETWHITESPACECHARS" value="2443"/>
			<member name="GTK_SCINTILLA_MSG_SETCHARSDEFAULT" value="2444"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETCURRENT" value="2445"/>
			<member name="GTK_SCINTILLA_MSG_AUTOCGETCURRENTTEXT" value="2610"/>
			<member name="GTK_SCINTILLA_MSG_ALLOCATE" value="2446"/>
			<member name="GTK_SCINTILLA_MSG_TARGETASUTF8" value="2447"/>
			<member name="GTK_SCINTILLA_MSG_SETLENGTHFORENCODE" value="2448"/>
			<member name="GTK_SCINTILLA_MSG_ENCODEDFROMUTF8" value="2449"/>
			<member name="GTK_SCINTILLA_MSG_FINDCOLUMN" value="2456"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETSTICKY" value="2457"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETSTICKY" value="2458"/>
			<member name="GTK_SCINTILLA_MSG_TOGGLECARETSTICKY" value="2459"/>
			<member name="GTK_SCINTILLA_MSG_SETPASTECONVERTENDINGS" value="2467"/>
			<member name="GTK_SCINTILLA_MSG_GETPASTECONVERTENDINGS" value="2468"/>
			<member name="GTK_SCINTILLA_MSG_SELECTIONDUPLICATE" value="2469"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETLINEBACKALPHA" value="2470"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETLINEBACKALPHA" value="2471"/>
			<member name="GTK_SCINTILLA_MSG_SETCARETSTYLE" value="2512"/>
			<member name="GTK_SCINTILLA_MSG_GETCARETSTYLE" value="2513"/>
			<member name="GTK_SCINTILLA_MSG_SETINDICATORCURRENT" value="2500"/>
			<member name="GTK_SCINTILLA_MSG_GETINDICATORCURRENT" value="2501"/>
			<member name="GTK_SCINTILLA_MSG_SETINDICATORVALUE" value="2502"/>
			<member name="GTK_SCINTILLA_MSG_GETINDICATORVALUE" value="2503"/>
			<member name="GTK_SCINTILLA_MSG_INDICATORFILLRANGE" value="2504"/>
			<member name="GTK_SCINTILLA_MSG_INDICATORCLEARRANGE" value="2505"/>
			<member name="GTK_SCINTILLA_MSG_INDICATORALLONFOR" value="2506"/>
			<member name="GTK_SCINTILLA_MSG_INDICATORVALUEAT" value="2507"/>
			<member name="GTK_SCINTILLA_MSG_INDICATORSTART" value="2508"/>
			<member name="GTK_SCINTILLA_MSG_INDICATOREND" value="2509"/>
			<member name="GTK_SCINTILLA_MSG_SETPOSITIONCACHE" value="2514"/>
			<member name="GTK_SCINTILLA_MSG_GETPOSITIONCACHE" value="2515"/>
			<member name="GTK_SCINTILLA_MSG_COPYALLOWLINE" value="2519"/>
			<member name="GTK_SCINTILLA_MSG_GETCHARACTERPOINTER" value="2520"/>
			<member name="GTK_SCINTILLA_MSG_SETKEYSUNICODE" value="2521"/>
			<member name="GTK_SCINTILLA_MSG_GETKEYSUNICODE" value="2522"/>
			<member name="GTK_SCINTILLA_MSG_INDICSETALPHA" value="2523"/>
			<member name="GTK_SCINTILLA_MSG_INDICGETALPHA" value="2524"/>
			<member name="GTK_SCINTILLA_MSG_SETEXTRAASCENT" value="2525"/>
			<member name="GTK_SCINTILLA_MSG_GETEXTRAASCENT" value="2526"/>
			<member name="GTK_SCINTILLA_MSG_SETEXTRADESCENT" value="2527"/>
			<member name="GTK_SCINTILLA_MSG_GETEXTRADESCENT" value="2528"/>
			<member name="GTK_SCINTILLA_MSG_MARKERSYMBOLDEFINED" value="2529"/>
			<member name="GTK_SCINTILLA_MSG_MARGINSETTEXT" value="2530"/>
			<member name="GTK_SCINTILLA_MSG_MARGINGETTEXT" value="2531"/>
			<member name="GTK_SCINTILLA_MSG_MARGINSETSTYLE" value="2532"/>
			<member name="GTK_SCINTILLA_MSG_MARGINGETSTYLE" value="2533"/>
			<member name="GTK_SCINTILLA_MSG_MARGINSETSTYLES" value="2534"/>
			<member name="GTK_SCINTILLA_MSG_MARGINGETSTYLES" value="2535"/>
			<member name="GTK_SCINTILLA_MSG_MARGINTEXTCLEARALL" value="2536"/>
			<member name="GTK_SCINTILLA_MSG_MARGINSETSTYLEOFFSET" value="2537"/>
			<member name="GTK_SCINTILLA_MSG_MARGINGETSTYLEOFFSET" value="2538"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONSETTEXT" value="2540"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETTEXT" value="2541"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONSETSTYLE" value="2542"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETSTYLE" value="2543"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONSETSTYLES" value="2544"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETSTYLES" value="2545"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETLINES" value="2546"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONCLEARALL" value="2547"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONSETVISIBLE" value="2548"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETVISIBLE" value="2549"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONSETSTYLEOFFSET" value="2550"/>
			<member name="GTK_SCINTILLA_MSG_ANNOTATIONGETSTYLEOFFSET" value="2551"/>
			<member name="GTK_SCINTILLA_MSG_ADDUNDOACTION" value="2560"/>
			<member name="GTK_SCINTILLA_MSG_CHARPOSITIONFROMPOINT" value="2561"/>
			<member name="GTK_SCINTILLA_MSG_CHARPOSITIONFROMPOINTCLOSE" value="2562"/>
			<member name="GTK_SCINTILLA_MSG_SETMULTIPLESELECTION" value="2563"/>
			<member name="GTK_SCINTILLA_MSG_GETMULTIPLESELECTION" value="2564"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALSELECTIONTYPING" value="2565"/>
			<member name="GTK_SCINTILLA_MSG_GETADDITIONALSELECTIONTYPING" value="2566"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALCARETSBLINK" value="2567"/>
			<member name="GTK_SCINTILLA_MSG_GETADDITIONALCARETSBLINK" value="2568"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALCARETSVISIBLE" value="2608"/>
			<member name="GTK_SCINTILLA_MSG_GETADDITIONALCARETSVISIBLE" value="2609"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONS" value="2570"/>
			<member name="GTK_SCINTILLA_MSG_CLEARSELECTIONS" value="2571"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTION" value="2572"/>
			<member name="GTK_SCINTILLA_MSG_ADDSELECTION" value="2573"/>
			<member name="GTK_SCINTILLA_MSG_SETMAINSELECTION" value="2574"/>
			<member name="GTK_SCINTILLA_MSG_GETMAINSELECTION" value="2575"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNCARET" value="2576"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNCARET" value="2577"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNANCHOR" value="2578"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNANCHOR" value="2579"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNCARETVIRTUALSPACE" value="2580"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNCARETVIRTUALSPACE" value="2581"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNANCHORVIRTUALSPACE" value="2582"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNANCHORVIRTUALSPACE" value="2583"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNSTART" value="2584"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNSTART" value="2585"/>
			<member name="GTK_SCINTILLA_MSG_SETSELECTIONNEND" value="2586"/>
			<member name="GTK_SCINTILLA_MSG_GETSELECTIONNEND" value="2587"/>
			<member name="GTK_SCINTILLA_MSG_SETRECTANGULARSELECTIONCARET" value="2588"/>
			<member name="GTK_SCINTILLA_MSG_GETRECTANGULARSELECTIONCARET" value="2589"/>
			<member name="GTK_SCINTILLA_MSG_SETRECTANGULARSELECTIONANCHOR" value="2590"/>
			<member name="GTK_SCINTILLA_MSG_GETRECTANGULARSELECTIONANCHOR" value="2591"/>
			<member name="GTK_SCINTILLA_MSG_SETRECTANGULARSELECTIONCARETVIRTUALSPACE" value="2592"/>
			<member name="GTK_SCINTILLA_MSG_GETRECTANGULARSELECTIONCARETVIRTUALSPACE" value="2593"/>
			<member name="GTK_SCINTILLA_MSG_SETRECTANGULARSELECTIONANCHORVIRTUALSPACE" value="2594"/>
			<member name="GTK_SCINTILLA_MSG_GETRECTANGULARSELECTIONANCHORVIRTUALSPACE" value="2595"/>
			<member name="GTK_SCINTILLA_MSG_SETVIRTUALSPACEOPTIONS" value="2596"/>
			<member name="GTK_SCINTILLA_MSG_GETVIRTUALSPACEOPTIONS" value="2597"/>
			<member name="GTK_SCINTILLA_MSG_SETRECTANGULARSELECTIONMODIFIER" value="2598"/>
			<member name="GTK_SCINTILLA_MSG_GETRECTANGULARSELECTIONMODIFIER" value="2599"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALSELFORE" value="2600"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALSELBACK" value="2601"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALSELALPHA" value="2602"/>
			<member name="GTK_SCINTILLA_MSG_GETADDITIONALSELALPHA" value="2603"/>
			<member name="GTK_SCINTILLA_MSG_SETADDITIONALCARETFORE" value="2604"/>
			<member name="GTK_SCINTILLA_MSG_GETADDITIONALCARETFORE" value="2605"/>
			<member name="GTK_SCINTILLA_MSG_ROTATESELECTION" value="2606"/>
			<member name="GTK_SCINTILLA_MSG_SWAPMAINANCHORCARET" value="2607"/>
			<member name="GTK_SCINTILLA_MSG_STARTRECORD" value="3001"/>
			<member name="GTK_SCINTILLA_MSG_STOPRECORD" value="3002"/>
			<member name="GTK_SCINTILLA_MSG_SETLEXER" value="4001"/>
			<member name="GTK_SCINTILLA_MSG_GETLEXER" value="4002"/>
			<member name="GTK_SCINTILLA_MSG_COLOURISE" value="4003"/>
			<member name="GTK_SCINTILLA_MSG_SETPROPERTY" value="4004"/>
			<member name="GTK_SCINTILLA_MSG_SETKEYWORDS" value="4005"/>
			<member name="GTK_SCINTILLA_MSG_SETLEXERLANGUAGE" value="4006"/>
			<member name="GTK_SCINTILLA_MSG_LOADLEXERLIBRARY" value="4007"/>
			<member name="GTK_SCINTILLA_MSG_GETPROPERTY" value="4008"/>
			<member name="GTK_SCINTILLA_MSG_GETPROPERTYEXPANDED" value="4009"/>
			<member name="GTK_SCINTILLA_MSG_GETPROPERTYINT" value="4010"/>
			<member name="GTK_SCINTILLA_MSG_GETSTYLEBITSNEEDED" value="4011"/>
			<member name="GTK_SCINTILLA_MSG_GETLEXERLANGUAGE" value="4012"/>
		</enum>
		<enum name="GtkScintillaModificationFlags">
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_INSERT_TEXT" value="1"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_DELETE_TEXT" value="2"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_STYLE" value="4"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_FOLD" value="8"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_USER" value="16"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_UNDO" value="32"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_REDO" value="64"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_MULTI_STEP_UNDO_REDO" value="128"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_MULTI_STEP_IN_UNDO_REDO" value="256"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_MARKER" value="512"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_BEFORE_INSERT" value="1024"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_BEFORE_DELETE" value="2048"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_MULTI_LINE_UNDO_REDO" value="4096"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_START_ACTION" value="8192"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_INDICATOR" value="16384"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_LINE_STATE" value="32768"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_MARGIN" value="65536"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CHANGE_ANNOTATION" value="131072"/>
			<member name="GTK_SCINTILLA_MODIFICATION_FLAGS_CONTAINER" value="262144"/>
		</enum>
		<enum name="GtkScintillaMultiPaste">
			<member name="GTK_SCINTILLA_MULTI_PASTE_ONCE" value="0"/>
			<member name="GTK_SCINTILLA_MULTI_PASTE_EACH" value="1"/>
		</enum>
		<enum name="GtkScintillaPrintOption">
			<member name="GTK_SCINTILLA_PRINT_OPTION_NORMAL" value="0"/>
			<member name="GTK_SCINTILLA_PRINT_OPTION_INVERTLIGHT" value="1"/>
			<member name="GTK_SCINTILLA_PRINT_OPTION_BLACKONWHITE" value="2"/>
			<member name="GTK_SCINTILLA_PRINT_OPTION_COLOURONWHITE" value="3"/>
			<member name="GTK_SCINTILLA_PRINT_OPTION_COLOURONWHITEDEFAULTBG" value="4"/>
		</enum>
		<enum name="GtkScintillaSearchFlag">
			<member name="GTK_SCINTILLA_SEARCH_FLAG_WHOLE_WORD" value="2"/>
			<member name="GTK_SCINTILLA_SEARCH_FLAG_MATCH_CASE" value="4"/>
			<member name="GTK_SCINTILLA_SEARCH_FLAG_WORD_START" value="1048576"/>
			<member name="GTK_SCINTILLA_SEARCH_FLAG_REGEXP" value="2097152"/>
			<member name="GTK_SCINTILLA_SEARCH_FLAG_POSIX" value="4194304"/>
		</enum>
		<enum name="GtkScintillaSelectionMode">
			<member name="GTK_SCINTILLA_SELECTION_MODE_STREAM" value="0"/>
			<member name="GTK_SCINTILLA_SELECTION_MODE_RECTANGLE" value="1"/>
			<member name="GTK_SCINTILLA_SELECTION_MODE_LINES" value="2"/>
			<member name="GTK_SCINTILLA_SELECTION_MODE_THIN" value="3"/>
		</enum>
		<enum name="GtkScintillaStatus">
			<member name="GTK_SCINTILLA_STATUS_OK" value="0"/>
			<member name="GTK_SCINTILLA_STATUS_FAILURE" value="1"/>
			<member name="GTK_SCINTILLA_STATUS_BADALLOC" value="2"/>
		</enum>
		<enum name="GtkScintillaStylesCommon">
			<member name="GTK_SCINTILLA_STYLES_COMMON_DEFAULT" value="32"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_LINENUMBER" value="33"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_BRACELIGHT" value="34"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_BRACEBAD" value="35"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_CONTROLCHAR" value="36"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_INDENTGUIDE" value="37"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_CALLTIP" value="38"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_LASTPREDEFINED" value="39"/>
			<member name="GTK_SCINTILLA_STYLES_COMMON_MAX" value="255"/>
		</enum>
		<enum name="GtkScintillaUpdateFlag">
			<member name="GTK_SCINTILLA_UPDATE_CONTENT" value="1"/>
			<member name="GTK_SCINTILLA_UPDATE_SELECTION" value="2"/>
			<member name="GTK_SCINTILLA_UPDATE_V_SCROLL" value="4"/>
			<member name="GTK_SCINTILLA_UPDATE_H_SCROLL" value="8"/>
		</enum>
		<enum name="GtkScintillaVirtualSpace">
			<member name="GTK_SCINTILLA_VIRTUAL_SPACE_NONE" value="0"/>
			<member name="GTK_SCINTILLA_VIRTUAL_SPACE_RECTANGULARSELECTION" value="1"/>
			<member name="GTK_SCINTILLA_VIRTUAL_SPACE_USERACCESSIBLE" value="2"/>
		</enum>
		<enum name="GtkScintillaWhiteSpace">
			<member name="GTK_SCINTILLA_WHITE_SPACE_INVISIBLE" value="0"/>
			<member name="GTK_SCINTILLA_WHITE_SPACE_VISIBLEALWAYS" value="1"/>
			<member name="GTK_SCINTILLA_WHITE_SPACE_VISIBLEAFTERINDENT" value="2"/>
		</enum>
		<enum name="GtkScintillaWrap">
			<member name="GTK_SCINTILLA_WRAP_NONE" value="0"/>
			<member name="GTK_SCINTILLA_WRAP_WORD" value="1"/>
			<member name="GTK_SCINTILLA_WRAP_CHAR" value="2"/>
		</enum>
		<enum name="GtkScintillaWrapIndentMode">
			<member name="GTK_SCINTILLA_WRAP_INDENT_MODE_FIXED" value="0"/>
			<member name="GTK_SCINTILLA_WRAP_INDENT_MODE_SAME" value="1"/>
			<member name="GTK_SCINTILLA_WRAP_INDENT_MODE_INDENT" value="2"/>
		</enum>
		<enum name="GtkScintillaWrapVisualFlag">
			<member name="GTK_SCINTILLA_WRAP_VISUAL_FLAG_NONE" value="0"/>
			<member name="GTK_SCINTILLA_WRAP_VISUAL_FLAG_END" value="1"/>
			<member name="GTK_SCINTILLA_WRAP_VISUAL_FLAG_START" value="2"/>
		</enum>
		<enum name="GtkScintillaWrapVisualLocation">
			<member name="GTK_SCINTILLA_WRAP_VISUAL_LOCATION_DEFAULT" value="0"/>
			<member name="GTK_SCINTILLA_WRAP_VISUAL_LOCATION_END_BY_TEXT" value="1"/>
			<member name="GTK_SCINTILLA_WRAP_VISUAL_LOCATION_START_BY_TEXT" value="2"/>
		</enum>
		<constant name="ANNOTATION_BOXED" type="int" value="2"/>
		<constant name="ANNOTATION_HIDDEN" type="int" value="0"/>
		<constant name="ANNOTATION_STANDARD" type="int" value="1"/>
		<constant name="CARETSTYLE_BLOCK" type="int" value="2"/>
		<constant name="CARETSTYLE_INVISIBLE" type="int" value="0"/>
		<constant name="CARETSTYLE_LINE" type="int" value="1"/>
		<constant name="CARET_EVEN" type="int" value="8"/>
		<constant name="CARET_JUMPS" type="int" value="16"/>
		<constant name="CARET_SLOP" type="int" value="1"/>
		<constant name="CARET_STRICT" type="int" value="4"/>
		<constant name="EDGE_BACKGROUND" type="int" value="2"/>
		<constant name="EDGE_LINE" type="int" value="1"/>
		<constant name="EDGE_NONE" type="int" value="0"/>
		<constant name="GTK_SCINTILLA_ALPHA_NOALPHA" type="int" value="256"/>
		<constant name="GTK_SCINTILLA_ALPHA_OPAQUE" type="int" value="255"/>
		<constant name="GTK_SCINTILLA_ALPHA_TRANSPARENT" type="int" value="0"/>
		<constant name="GTK_SCINTILLA_CP_DBCS" type="int" value="1"/>
		<constant name="GTK_SCINTILLA_CP_UTF8" type="int" value="65001"/>
		<constant name="GTK_SCINTILLA_DATADIR" type="char*" value="/usr/local/share/gtkscintilla-1.0/"/>
		<constant name="GTK_SCINTILLA_FOLD_MARGIN_INDEX_DEFAULT" type="int" value="2"/>
		<constant name="GTK_SCINTILLA_FOLD_MARGIN_WIDTH_DEFAULT" type="int" value="12"/>
		<constant name="GTK_SCINTILLA_LEXER_START" type="int" value="4000"/>
		<constant name="GTK_SCINTILLA_MASK_FOLDERS" type="int" value="-33554432"/>
		<constant name="GTK_SCINTILLA_MODEVENTMASKALL" type="int" value="524287"/>
		<constant name="GTK_SCINTILLA_OPTIONAL_START" type="int" value="3000"/>
		<constant name="GTK_SCINTILLA_START" type="int" value="2000"/>
		<constant name="GTK_SCINTILLA_TIME_FOREVER" type="int" value="10000000"/>
		<constant name="INDIC0_MASK" type="int" value="32"/>
		<constant name="INDIC1_MASK" type="int" value="64"/>
		<constant name="INDIC2_MASK" type="int" value="128"/>
		<constant name="INDICS_MASK" type="int" value="224"/>
		<constant name="INDIC_BOX" type="int" value="6"/>
		<constant name="INDIC_CONTAINER" type="int" value="8"/>
		<constant name="INDIC_DIAGONAL" type="int" value="3"/>
		<constant name="INDIC_HIDDEN" type="int" value="5"/>
		<constant name="INDIC_MAX" type="int" value="31"/>
		<constant name="INDIC_PLAIN" type="int" value="0"/>
		<constant name="INDIC_ROUNDBOX" type="int" value="7"/>
		<constant name="INDIC_SQUIGGLE" type="int" value="1"/>
		<constant name="INDIC_STRIKE" type="int" value="4"/>
		<constant name="INDIC_TT" type="int" value="2"/>
		<constant name="INVALID_POSITION" type="int" value="-1"/>
		<constant name="KEYWORDSET_MAX" type="int" value="8"/>
		<constant name="MARKER_MAX" type="int" value="31"/>
		<constant name="PLAT_GTK" type="int" value="2"/>
		<constant name="SCEN_CHANGE" type="int" value="768"/>
		<constant name="SCEN_KILLFOCUS" type="int" value="256"/>
		<constant name="SCEN_SETFOCUS" type="int" value="512"/>
		<constant name="SCE_4GL_BLOCK" type="int" value="8"/>
		<constant name="SCE_4GL_BLOCK_" type="int" value="24"/>
		<constant name="SCE_4GL_CHARACTER" type="int" value="4"/>
		<constant name="SCE_4GL_CHARACTER_" type="int" value="20"/>
		<constant name="SCE_4GL_COMMENT1" type="int" value="10"/>
		<constant name="SCE_4GL_COMMENT1_" type="int" value="26"/>
		<constant name="SCE_4GL_COMMENT2" type="int" value="11"/>
		<constant name="SCE_4GL_COMMENT2_" type="int" value="27"/>
		<constant name="SCE_4GL_COMMENT3" type="int" value="12"/>
		<constant name="SCE_4GL_COMMENT3_" type="int" value="28"/>
		<constant name="SCE_4GL_COMMENT4" type="int" value="13"/>
		<constant name="SCE_4GL_COMMENT4_" type="int" value="29"/>
		<constant name="SCE_4GL_COMMENT5" type="int" value="14"/>
		<constant name="SCE_4GL_COMMENT5_" type="int" value="30"/>
		<constant name="SCE_4GL_COMMENT6" type="int" value="15"/>
		<constant name="SCE_4GL_COMMENT6_" type="int" value="31"/>
		<constant name="SCE_4GL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_4GL_DEFAULT_" type="int" value="16"/>
		<constant name="SCE_4GL_END" type="int" value="9"/>
		<constant name="SCE_4GL_END_" type="int" value="25"/>
		<constant name="SCE_4GL_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_4GL_IDENTIFIER_" type="int" value="23"/>
		<constant name="SCE_4GL_NUMBER" type="int" value="1"/>
		<constant name="SCE_4GL_NUMBER_" type="int" value="17"/>
		<constant name="SCE_4GL_OPERATOR" type="int" value="6"/>
		<constant name="SCE_4GL_OPERATOR_" type="int" value="22"/>
		<constant name="SCE_4GL_PREPROCESSOR" type="int" value="5"/>
		<constant name="SCE_4GL_PREPROCESSOR_" type="int" value="21"/>
		<constant name="SCE_4GL_STRING" type="int" value="3"/>
		<constant name="SCE_4GL_STRING_" type="int" value="19"/>
		<constant name="SCE_4GL_WORD" type="int" value="2"/>
		<constant name="SCE_4GL_WORD_" type="int" value="18"/>
		<constant name="SCE_A68K_COMMENT" type="int" value="1"/>
		<constant name="SCE_A68K_COMMENT_DOXYGEN" type="int" value="18"/>
		<constant name="SCE_A68K_COMMENT_SPECIAL" type="int" value="17"/>
		<constant name="SCE_A68K_COMMENT_WORD" type="int" value="16"/>
		<constant name="SCE_A68K_CPUINSTRUCTION" type="int" value="7"/>
		<constant name="SCE_A68K_DEFAULT" type="int" value="0"/>
		<constant name="SCE_A68K_DIRECTIVE" type="int" value="10"/>
		<constant name="SCE_A68K_EXTINSTRUCTION" type="int" value="8"/>
		<constant name="SCE_A68K_IDENTIFIER" type="int" value="14"/>
		<constant name="SCE_A68K_LABEL" type="int" value="12"/>
		<constant name="SCE_A68K_MACRO_ARG" type="int" value="11"/>
		<constant name="SCE_A68K_MACRO_DECLARATION" type="int" value="15"/>
		<constant name="SCE_A68K_NUMBER_BIN" type="int" value="3"/>
		<constant name="SCE_A68K_NUMBER_DEC" type="int" value="2"/>
		<constant name="SCE_A68K_NUMBER_HEX" type="int" value="4"/>
		<constant name="SCE_A68K_OPERATOR" type="int" value="6"/>
		<constant name="SCE_A68K_REGISTER" type="int" value="9"/>
		<constant name="SCE_A68K_STRING1" type="int" value="5"/>
		<constant name="SCE_A68K_STRING2" type="int" value="13"/>
		<constant name="SCE_ABAQUS_ARGUMENT" type="int" value="11"/>
		<constant name="SCE_ABAQUS_COMMAND" type="int" value="8"/>
		<constant name="SCE_ABAQUS_COMMENT" type="int" value="1"/>
		<constant name="SCE_ABAQUS_COMMENTBLOCK" type="int" value="2"/>
		<constant name="SCE_ABAQUS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ABAQUS_FUNCTION" type="int" value="12"/>
		<constant name="SCE_ABAQUS_NUMBER" type="int" value="3"/>
		<constant name="SCE_ABAQUS_OPERATOR" type="int" value="5"/>
		<constant name="SCE_ABAQUS_PROCESSOR" type="int" value="7"/>
		<constant name="SCE_ABAQUS_SLASHCOMMAND" type="int" value="9"/>
		<constant name="SCE_ABAQUS_STARCOMMAND" type="int" value="10"/>
		<constant name="SCE_ABAQUS_STRING" type="int" value="4"/>
		<constant name="SCE_ABAQUS_WORD" type="int" value="6"/>
		<constant name="SCE_ADA_CHARACTER" type="int" value="5"/>
		<constant name="SCE_ADA_CHARACTEREOL" type="int" value="6"/>
		<constant name="SCE_ADA_COMMENTLINE" type="int" value="10"/>
		<constant name="SCE_ADA_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ADA_DELIMITER" type="int" value="4"/>
		<constant name="SCE_ADA_IDENTIFIER" type="int" value="2"/>
		<constant name="SCE_ADA_ILLEGAL" type="int" value="11"/>
		<constant name="SCE_ADA_LABEL" type="int" value="9"/>
		<constant name="SCE_ADA_NUMBER" type="int" value="3"/>
		<constant name="SCE_ADA_STRING" type="int" value="7"/>
		<constant name="SCE_ADA_STRINGEOL" type="int" value="8"/>
		<constant name="SCE_ADA_WORD" type="int" value="1"/>
		<constant name="SCE_APDL_ARGUMENT" type="int" value="11"/>
		<constant name="SCE_APDL_COMMAND" type="int" value="8"/>
		<constant name="SCE_APDL_COMMENT" type="int" value="1"/>
		<constant name="SCE_APDL_COMMENTBLOCK" type="int" value="2"/>
		<constant name="SCE_APDL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_APDL_FUNCTION" type="int" value="12"/>
		<constant name="SCE_APDL_NUMBER" type="int" value="3"/>
		<constant name="SCE_APDL_OPERATOR" type="int" value="5"/>
		<constant name="SCE_APDL_PROCESSOR" type="int" value="7"/>
		<constant name="SCE_APDL_SLASHCOMMAND" type="int" value="9"/>
		<constant name="SCE_APDL_STARCOMMAND" type="int" value="10"/>
		<constant name="SCE_APDL_STRING" type="int" value="4"/>
		<constant name="SCE_APDL_WORD" type="int" value="6"/>
		<constant name="SCE_ASM_CHARACTER" type="int" value="12"/>
		<constant name="SCE_ASM_COMMENT" type="int" value="1"/>
		<constant name="SCE_ASM_COMMENTBLOCK" type="int" value="11"/>
		<constant name="SCE_ASM_COMMENTDIRECTIVE" type="int" value="15"/>
		<constant name="SCE_ASM_CPUINSTRUCTION" type="int" value="6"/>
		<constant name="SCE_ASM_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ASM_DIRECTIVE" type="int" value="9"/>
		<constant name="SCE_ASM_DIRECTIVEOPERAND" type="int" value="10"/>
		<constant name="SCE_ASM_EXTINSTRUCTION" type="int" value="14"/>
		<constant name="SCE_ASM_IDENTIFIER" type="int" value="5"/>
		<constant name="SCE_ASM_MATHINSTRUCTION" type="int" value="7"/>
		<constant name="SCE_ASM_NUMBER" type="int" value="2"/>
		<constant name="SCE_ASM_OPERATOR" type="int" value="4"/>
		<constant name="SCE_ASM_REGISTER" type="int" value="8"/>
		<constant name="SCE_ASM_STRING" type="int" value="3"/>
		<constant name="SCE_ASM_STRINGEOL" type="int" value="13"/>
		<constant name="SCE_ASN1_ATTRIBUTE" type="int" value="7"/>
		<constant name="SCE_ASN1_COMMENT" type="int" value="1"/>
		<constant name="SCE_ASN1_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ASN1_DESCRIPTOR" type="int" value="8"/>
		<constant name="SCE_ASN1_IDENTIFIER" type="int" value="2"/>
		<constant name="SCE_ASN1_KEYWORD" type="int" value="6"/>
		<constant name="SCE_ASN1_OID" type="int" value="4"/>
		<constant name="SCE_ASN1_OPERATOR" type="int" value="10"/>
		<constant name="SCE_ASN1_SCALAR" type="int" value="5"/>
		<constant name="SCE_ASN1_STRING" type="int" value="3"/>
		<constant name="SCE_ASN1_TYPE" type="int" value="9"/>
		<constant name="SCE_ASY_CHARACTER" type="int" value="6"/>
		<constant name="SCE_ASY_COMMENT" type="int" value="1"/>
		<constant name="SCE_ASY_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_ASY_COMMENTLINEDOC" type="int" value="10"/>
		<constant name="SCE_ASY_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ASY_IDENTIFIER" type="int" value="8"/>
		<constant name="SCE_ASY_NUMBER" type="int" value="3"/>
		<constant name="SCE_ASY_OPERATOR" type="int" value="7"/>
		<constant name="SCE_ASY_STRING" type="int" value="5"/>
		<constant name="SCE_ASY_STRINGEOL" type="int" value="9"/>
		<constant name="SCE_ASY_WORD" type="int" value="4"/>
		<constant name="SCE_ASY_WORD2" type="int" value="11"/>
		<constant name="SCE_AU3_COMMENT" type="int" value="1"/>
		<constant name="SCE_AU3_COMMENTBLOCK" type="int" value="2"/>
		<constant name="SCE_AU3_COMOBJ" type="int" value="14"/>
		<constant name="SCE_AU3_DEFAULT" type="int" value="0"/>
		<constant name="SCE_AU3_EXPAND" type="int" value="13"/>
		<constant name="SCE_AU3_FUNCTION" type="int" value="4"/>
		<constant name="SCE_AU3_KEYWORD" type="int" value="5"/>
		<constant name="SCE_AU3_MACRO" type="int" value="6"/>
		<constant name="SCE_AU3_NUMBER" type="int" value="3"/>
		<constant name="SCE_AU3_OPERATOR" type="int" value="8"/>
		<constant name="SCE_AU3_PREPROCESSOR" type="int" value="11"/>
		<constant name="SCE_AU3_SENT" type="int" value="10"/>
		<constant name="SCE_AU3_SPECIAL" type="int" value="12"/>
		<constant name="SCE_AU3_STRING" type="int" value="7"/>
		<constant name="SCE_AU3_UDF" type="int" value="15"/>
		<constant name="SCE_AU3_VARIABLE" type="int" value="9"/>
		<constant name="SCE_AVE_COMMENT" type="int" value="1"/>
		<constant name="SCE_AVE_DEFAULT" type="int" value="0"/>
		<constant name="SCE_AVE_ENUM" type="int" value="7"/>
		<constant name="SCE_AVE_IDENTIFIER" type="int" value="9"/>
		<constant name="SCE_AVE_NUMBER" type="int" value="2"/>
		<constant name="SCE_AVE_OPERATOR" type="int" value="10"/>
		<constant name="SCE_AVE_STRING" type="int" value="6"/>
		<constant name="SCE_AVE_STRINGEOL" type="int" value="8"/>
		<constant name="SCE_AVE_WORD" type="int" value="3"/>
		<constant name="SCE_AVE_WORD1" type="int" value="11"/>
		<constant name="SCE_AVE_WORD2" type="int" value="12"/>
		<constant name="SCE_AVE_WORD3" type="int" value="13"/>
		<constant name="SCE_AVE_WORD4" type="int" value="14"/>
		<constant name="SCE_AVE_WORD5" type="int" value="15"/>
		<constant name="SCE_AVE_WORD6" type="int" value="16"/>
		<constant name="SCE_BAAN_COMMENT" type="int" value="1"/>
		<constant name="SCE_BAAN_COMMENTDOC" type="int" value="2"/>
		<constant name="SCE_BAAN_DEFAULT" type="int" value="0"/>
		<constant name="SCE_BAAN_IDENTIFIER" type="int" value="8"/>
		<constant name="SCE_BAAN_NUMBER" type="int" value="3"/>
		<constant name="SCE_BAAN_OPERATOR" type="int" value="7"/>
		<constant name="SCE_BAAN_PREPROCESSOR" type="int" value="6"/>
		<constant name="SCE_BAAN_STRING" type="int" value="5"/>
		<constant name="SCE_BAAN_STRINGEOL" type="int" value="9"/>
		<constant name="SCE_BAAN_WORD" type="int" value="4"/>
		<constant name="SCE_BAAN_WORD2" type="int" value="10"/>
		<constant name="SCE_BAT_COMMAND" type="int" value="5"/>
		<constant name="SCE_BAT_COMMENT" type="int" value="1"/>
		<constant name="SCE_BAT_DEFAULT" type="int" value="0"/>
		<constant name="SCE_BAT_HIDE" type="int" value="4"/>
		<constant name="SCE_BAT_IDENTIFIER" type="int" value="6"/>
		<constant name="SCE_BAT_LABEL" type="int" value="3"/>
		<constant name="SCE_BAT_OPERATOR" type="int" value="7"/>
		<constant name="SCE_BAT_WORD" type="int" value="2"/>
		<constant name="SCE_B_ASM" type="int" value="14"/>
		<constant name="SCE_B_BINNUMBER" type="int" value="18"/>
		<constant name="SCE_B_COMMENT" type="int" value="1"/>
		<constant name="SCE_B_CONSTANT" type="int" value="13"/>
		<constant name="SCE_B_DATE" type="int" value="8"/>
		<constant name="SCE_B_DEFAULT" type="int" value="0"/>
		<constant name="SCE_B_ERROR" type="int" value="16"/>
		<constant name="SCE_B_HEXNUMBER" type="int" value="17"/>
		<constant name="SCE_B_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_B_KEYWORD" type="int" value="3"/>
		<constant name="SCE_B_KEYWORD2" type="int" value="10"/>
		<constant name="SCE_B_KEYWORD3" type="int" value="11"/>
		<constant name="SCE_B_KEYWORD4" type="int" value="12"/>
		<constant name="SCE_B_LABEL" type="int" value="15"/>
		<constant name="SCE_B_NUMBER" type="int" value="2"/>
		<constant name="SCE_B_OPERATOR" type="int" value="6"/>
		<constant name="SCE_B_PREPROCESSOR" type="int" value="5"/>
		<constant name="SCE_B_STRING" type="int" value="4"/>
		<constant name="SCE_B_STRINGEOL" type="int" value="9"/>
		<constant name="SCE_CAML_CHAR" type="int" value="9"/>
		<constant name="SCE_CAML_COMMENT" type="int" value="12"/>
		<constant name="SCE_CAML_COMMENT1" type="int" value="13"/>
		<constant name="SCE_CAML_COMMENT2" type="int" value="14"/>
		<constant name="SCE_CAML_COMMENT3" type="int" value="15"/>
		<constant name="SCE_CAML_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CAML_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_CAML_KEYWORD" type="int" value="3"/>
		<constant name="SCE_CAML_KEYWORD2" type="int" value="4"/>
		<constant name="SCE_CAML_KEYWORD3" type="int" value="5"/>
		<constant name="SCE_CAML_LINENUM" type="int" value="6"/>
		<constant name="SCE_CAML_NUMBER" type="int" value="8"/>
		<constant name="SCE_CAML_OPERATOR" type="int" value="7"/>
		<constant name="SCE_CAML_STRING" type="int" value="11"/>
		<constant name="SCE_CAML_TAGNAME" type="int" value="2"/>
		<constant name="SCE_CAML_WHITE" type="int" value="10"/>
		<constant name="SCE_CLW_ATTRIBUTE" type="int" value="13"/>
		<constant name="SCE_CLW_BUILTIN_PROCEDURES_FUNCTION" type="int" value="11"/>
		<constant name="SCE_CLW_COMMENT" type="int" value="2"/>
		<constant name="SCE_CLW_COMPILER_DIRECTIVE" type="int" value="9"/>
		<constant name="SCE_CLW_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CLW_DEPRECATED" type="int" value="16"/>
		<constant name="SCE_CLW_ERROR" type="int" value="15"/>
		<constant name="SCE_CLW_INTEGER_CONSTANT" type="int" value="5"/>
		<constant name="SCE_CLW_KEYWORD" type="int" value="8"/>
		<constant name="SCE_CLW_LABEL" type="int" value="1"/>
		<constant name="SCE_CLW_PICTURE_STRING" type="int" value="7"/>
		<constant name="SCE_CLW_REAL_CONSTANT" type="int" value="6"/>
		<constant name="SCE_CLW_RUNTIME_EXPRESSIONS" type="int" value="10"/>
		<constant name="SCE_CLW_STANDARD_EQUATE" type="int" value="14"/>
		<constant name="SCE_CLW_STRING" type="int" value="3"/>
		<constant name="SCE_CLW_STRUCTURE_DATA_TYPE" type="int" value="12"/>
		<constant name="SCE_CLW_USER_IDENTIFIER" type="int" value="4"/>
		<constant name="SCE_CMAKE_COMMANDS" type="int" value="5"/>
		<constant name="SCE_CMAKE_COMMENT" type="int" value="1"/>
		<constant name="SCE_CMAKE_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CMAKE_FOREACHDEF" type="int" value="10"/>
		<constant name="SCE_CMAKE_IFDEFINEDEF" type="int" value="11"/>
		<constant name="SCE_CMAKE_MACRODEF" type="int" value="12"/>
		<constant name="SCE_CMAKE_NUMBER" type="int" value="14"/>
		<constant name="SCE_CMAKE_PARAMETERS" type="int" value="6"/>
		<constant name="SCE_CMAKE_STRINGDQ" type="int" value="2"/>
		<constant name="SCE_CMAKE_STRINGLQ" type="int" value="3"/>
		<constant name="SCE_CMAKE_STRINGRQ" type="int" value="4"/>
		<constant name="SCE_CMAKE_STRINGVAR" type="int" value="13"/>
		<constant name="SCE_CMAKE_USERDEFINED" type="int" value="8"/>
		<constant name="SCE_CMAKE_VARIABLE" type="int" value="7"/>
		<constant name="SCE_CMAKE_WHILEDEF" type="int" value="9"/>
		<constant name="SCE_CONF_COMMENT" type="int" value="1"/>
		<constant name="SCE_CONF_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CONF_DIRECTIVE" type="int" value="9"/>
		<constant name="SCE_CONF_EXTENSION" type="int" value="4"/>
		<constant name="SCE_CONF_IDENTIFIER" type="int" value="3"/>
		<constant name="SCE_CONF_IP" type="int" value="8"/>
		<constant name="SCE_CONF_NUMBER" type="int" value="2"/>
		<constant name="SCE_CONF_OPERATOR" type="int" value="7"/>
		<constant name="SCE_CONF_PARAMETER" type="int" value="5"/>
		<constant name="SCE_CONF_STRING" type="int" value="6"/>
		<constant name="SCE_CSOUND_ARATE_VAR" type="int" value="11"/>
		<constant name="SCE_CSOUND_COMMENT" type="int" value="1"/>
		<constant name="SCE_CSOUND_COMMENTBLOCK" type="int" value="9"/>
		<constant name="SCE_CSOUND_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CSOUND_GLOBAL_VAR" type="int" value="14"/>
		<constant name="SCE_CSOUND_HEADERSTMT" type="int" value="7"/>
		<constant name="SCE_CSOUND_IDENTIFIER" type="int" value="5"/>
		<constant name="SCE_CSOUND_INSTR" type="int" value="4"/>
		<constant name="SCE_CSOUND_IRATE_VAR" type="int" value="13"/>
		<constant name="SCE_CSOUND_KRATE_VAR" type="int" value="12"/>
		<constant name="SCE_CSOUND_NUMBER" type="int" value="2"/>
		<constant name="SCE_CSOUND_OPCODE" type="int" value="6"/>
		<constant name="SCE_CSOUND_OPERATOR" type="int" value="3"/>
		<constant name="SCE_CSOUND_PARAM" type="int" value="10"/>
		<constant name="SCE_CSOUND_STRINGEOL" type="int" value="15"/>
		<constant name="SCE_CSOUND_USERKEYWORD" type="int" value="8"/>
		<constant name="SCE_CSS_ATTRIBUTE" type="int" value="16"/>
		<constant name="SCE_CSS_CLASS" type="int" value="2"/>
		<constant name="SCE_CSS_COMMENT" type="int" value="9"/>
		<constant name="SCE_CSS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_CSS_DIRECTIVE" type="int" value="12"/>
		<constant name="SCE_CSS_DOUBLESTRING" type="int" value="13"/>
		<constant name="SCE_CSS_EXTENDED_IDENTIFIER" type="int" value="19"/>
		<constant name="SCE_CSS_EXTENDED_PSEUDOCLASS" type="int" value="20"/>
		<constant name="SCE_CSS_EXTENDED_PSEUDOELEMENT" type="int" value="21"/>
		<constant name="SCE_CSS_ID" type="int" value="10"/>
		<constant name="SCE_CSS_IDENTIFIER" type="int" value="6"/>
		<constant name="SCE_CSS_IDENTIFIER2" type="int" value="15"/>
		<constant name="SCE_CSS_IDENTIFIER3" type="int" value="17"/>
		<constant name="SCE_CSS_IMPORTANT" type="int" value="11"/>
		<constant name="SCE_CSS_MEDIA" type="int" value="22"/>
		<constant name="SCE_CSS_OPERATOR" type="int" value="5"/>
		<constant name="SCE_CSS_PSEUDOCLASS" type="int" value="3"/>
		<constant name="SCE_CSS_PSEUDOELEMENT" type="int" value="18"/>
		<constant name="SCE_CSS_SINGLESTRING" type="int" value="14"/>
		<constant name="SCE_CSS_TAG" type="int" value="1"/>
		<constant name="SCE_CSS_UNKNOWN_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_CSS_UNKNOWN_PSEUDOCLASS" type="int" value="4"/>
		<constant name="SCE_CSS_VALUE" type="int" value="8"/>
		<constant name="SCE_C_CHARACTER" type="int" value="7"/>
		<constant name="SCE_C_COMMENT" type="int" value="1"/>
		<constant name="SCE_C_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_C_COMMENTDOCKEYWORD" type="int" value="17"/>
		<constant name="SCE_C_COMMENTDOCKEYWORDERROR" type="int" value="18"/>
		<constant name="SCE_C_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_C_COMMENTLINEDOC" type="int" value="15"/>
		<constant name="SCE_C_DEFAULT" type="int" value="0"/>
		<constant name="SCE_C_GLOBALCLASS" type="int" value="19"/>
		<constant name="SCE_C_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_C_NUMBER" type="int" value="4"/>
		<constant name="SCE_C_OPERATOR" type="int" value="10"/>
		<constant name="SCE_C_PREPROCESSOR" type="int" value="9"/>
		<constant name="SCE_C_REGEX" type="int" value="14"/>
		<constant name="SCE_C_STRING" type="int" value="6"/>
		<constant name="SCE_C_STRINGEOL" type="int" value="12"/>
		<constant name="SCE_C_STRINGRAW" type="int" value="20"/>
		<constant name="SCE_C_TRIPLEVERBATIM" type="int" value="21"/>
		<constant name="SCE_C_UUID" type="int" value="8"/>
		<constant name="SCE_C_VERBATIM" type="int" value="13"/>
		<constant name="SCE_C_WORD" type="int" value="5"/>
		<constant name="SCE_C_WORD2" type="int" value="16"/>
		<constant name="SCE_DIFF_ADDED" type="int" value="6"/>
		<constant name="SCE_DIFF_CHANGED" type="int" value="7"/>
		<constant name="SCE_DIFF_COMMAND" type="int" value="2"/>
		<constant name="SCE_DIFF_COMMENT" type="int" value="1"/>
		<constant name="SCE_DIFF_DEFAULT" type="int" value="0"/>
		<constant name="SCE_DIFF_DELETED" type="int" value="5"/>
		<constant name="SCE_DIFF_HEADER" type="int" value="3"/>
		<constant name="SCE_DIFF_POSITION" type="int" value="4"/>
		<constant name="SCE_D_CHARACTER" type="int" value="12"/>
		<constant name="SCE_D_COMMENT" type="int" value="1"/>
		<constant name="SCE_D_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_D_COMMENTDOCKEYWORD" type="int" value="16"/>
		<constant name="SCE_D_COMMENTDOCKEYWORDERROR" type="int" value="17"/>
		<constant name="SCE_D_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_D_COMMENTLINEDOC" type="int" value="15"/>
		<constant name="SCE_D_COMMENTNESTED" type="int" value="4"/>
		<constant name="SCE_D_DEFAULT" type="int" value="0"/>
		<constant name="SCE_D_IDENTIFIER" type="int" value="14"/>
		<constant name="SCE_D_NUMBER" type="int" value="5"/>
		<constant name="SCE_D_OPERATOR" type="int" value="13"/>
		<constant name="SCE_D_STRING" type="int" value="10"/>
		<constant name="SCE_D_STRINGB" type="int" value="18"/>
		<constant name="SCE_D_STRINGEOL" type="int" value="11"/>
		<constant name="SCE_D_STRINGR" type="int" value="19"/>
		<constant name="SCE_D_TYPEDEF" type="int" value="9"/>
		<constant name="SCE_D_WORD" type="int" value="6"/>
		<constant name="SCE_D_WORD2" type="int" value="7"/>
		<constant name="SCE_D_WORD3" type="int" value="8"/>
		<constant name="SCE_D_WORD5" type="int" value="20"/>
		<constant name="SCE_D_WORD6" type="int" value="21"/>
		<constant name="SCE_D_WORD7" type="int" value="22"/>
		<constant name="SCE_EIFFEL_CHARACTER" type="int" value="5"/>
		<constant name="SCE_EIFFEL_COMMENTLINE" type="int" value="1"/>
		<constant name="SCE_EIFFEL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_EIFFEL_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_EIFFEL_NUMBER" type="int" value="2"/>
		<constant name="SCE_EIFFEL_OPERATOR" type="int" value="6"/>
		<constant name="SCE_EIFFEL_STRING" type="int" value="4"/>
		<constant name="SCE_EIFFEL_STRINGEOL" type="int" value="8"/>
		<constant name="SCE_EIFFEL_WORD" type="int" value="3"/>
		<constant name="SCE_ERLANG_ATOM" type="int" value="7"/>
		<constant name="SCE_ERLANG_ATOM_QUOTED" type="int" value="18"/>
		<constant name="SCE_ERLANG_BIFS" type="int" value="22"/>
		<constant name="SCE_ERLANG_CHARACTER" type="int" value="9"/>
		<constant name="SCE_ERLANG_COMMENT" type="int" value="1"/>
		<constant name="SCE_ERLANG_COMMENT_DOC" type="int" value="16"/>
		<constant name="SCE_ERLANG_COMMENT_DOC_MACRO" type="int" value="17"/>
		<constant name="SCE_ERLANG_COMMENT_FUNCTION" type="int" value="14"/>
		<constant name="SCE_ERLANG_COMMENT_MODULE" type="int" value="15"/>
		<constant name="SCE_ERLANG_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ERLANG_FUNCTION_NAME" type="int" value="8"/>
		<constant name="SCE_ERLANG_KEYWORD" type="int" value="4"/>
		<constant name="SCE_ERLANG_MACRO" type="int" value="10"/>
		<constant name="SCE_ERLANG_MACRO_QUOTED" type="int" value="19"/>
		<constant name="SCE_ERLANG_MODULES" type="int" value="23"/>
		<constant name="SCE_ERLANG_MODULES_ATT" type="int" value="24"/>
		<constant name="SCE_ERLANG_NODE_NAME" type="int" value="13"/>
		<constant name="SCE_ERLANG_NODE_NAME_QUOTED" type="int" value="21"/>
		<constant name="SCE_ERLANG_NUMBER" type="int" value="3"/>
		<constant name="SCE_ERLANG_OPERATOR" type="int" value="6"/>
		<constant name="SCE_ERLANG_PREPROC" type="int" value="12"/>
		<constant name="SCE_ERLANG_RECORD" type="int" value="11"/>
		<constant name="SCE_ERLANG_RECORD_QUOTED" type="int" value="20"/>
		<constant name="SCE_ERLANG_STRING" type="int" value="5"/>
		<constant name="SCE_ERLANG_UNKNOWN" type="int" value="31"/>
		<constant name="SCE_ERLANG_VARIABLE" type="int" value="2"/>
		<constant name="SCE_ERR_ABSF" type="int" value="18"/>
		<constant name="SCE_ERR_BORLAND" type="int" value="5"/>
		<constant name="SCE_ERR_CMD" type="int" value="4"/>
		<constant name="SCE_ERR_CTAG" type="int" value="9"/>
		<constant name="SCE_ERR_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ERR_DIFF_ADDITION" type="int" value="11"/>
		<constant name="SCE_ERR_DIFF_CHANGED" type="int" value="10"/>
		<constant name="SCE_ERR_DIFF_DELETION" type="int" value="12"/>
		<constant name="SCE_ERR_DIFF_MESSAGE" type="int" value="13"/>
		<constant name="SCE_ERR_ELF" type="int" value="15"/>
		<constant name="SCE_ERR_GCC" type="int" value="2"/>
		<constant name="SCE_ERR_IFC" type="int" value="16"/>
		<constant name="SCE_ERR_IFORT" type="int" value="17"/>
		<constant name="SCE_ERR_JAVA_STACK" type="int" value="20"/>
		<constant name="SCE_ERR_LUA" type="int" value="8"/>
		<constant name="SCE_ERR_MS" type="int" value="3"/>
		<constant name="SCE_ERR_NET" type="int" value="7"/>
		<constant name="SCE_ERR_PERL" type="int" value="6"/>
		<constant name="SCE_ERR_PHP" type="int" value="14"/>
		<constant name="SCE_ERR_PYTHON" type="int" value="1"/>
		<constant name="SCE_ERR_TIDY" type="int" value="19"/>
		<constant name="SCE_ERR_VALUE" type="int" value="21"/>
		<constant name="SCE_ESCRIPT_BRACE" type="int" value="9"/>
		<constant name="SCE_ESCRIPT_COMMENT" type="int" value="1"/>
		<constant name="SCE_ESCRIPT_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_ESCRIPT_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_ESCRIPT_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ESCRIPT_IDENTIFIER" type="int" value="8"/>
		<constant name="SCE_ESCRIPT_NUMBER" type="int" value="4"/>
		<constant name="SCE_ESCRIPT_OPERATOR" type="int" value="7"/>
		<constant name="SCE_ESCRIPT_STRING" type="int" value="6"/>
		<constant name="SCE_ESCRIPT_WORD" type="int" value="5"/>
		<constant name="SCE_ESCRIPT_WORD2" type="int" value="10"/>
		<constant name="SCE_ESCRIPT_WORD3" type="int" value="11"/>
		<constant name="SCE_FORTH_COMMENT" type="int" value="1"/>
		<constant name="SCE_FORTH_COMMENT_ML" type="int" value="2"/>
		<constant name="SCE_FORTH_CONTROL" type="int" value="4"/>
		<constant name="SCE_FORTH_DEFAULT" type="int" value="0"/>
		<constant name="SCE_FORTH_DEFWORD" type="int" value="6"/>
		<constant name="SCE_FORTH_IDENTIFIER" type="int" value="3"/>
		<constant name="SCE_FORTH_KEYWORD" type="int" value="5"/>
		<constant name="SCE_FORTH_LOCALE" type="int" value="11"/>
		<constant name="SCE_FORTH_NUMBER" type="int" value="9"/>
		<constant name="SCE_FORTH_PREWORD1" type="int" value="7"/>
		<constant name="SCE_FORTH_PREWORD2" type="int" value="8"/>
		<constant name="SCE_FORTH_STRING" type="int" value="10"/>
		<constant name="SCE_FS_COMMENT" type="int" value="1"/>
		<constant name="SCE_FS_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_FS_COMMENTDOCKEYWORD" type="int" value="5"/>
		<constant name="SCE_FS_COMMENTDOCKEYWORDERROR" type="int" value="6"/>
		<constant name="SCE_FS_COMMENTDOC_C" type="int" value="22"/>
		<constant name="SCE_FS_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_FS_COMMENTLINEDOC" type="int" value="4"/>
		<constant name="SCE_FS_COMMENTLINEDOC_C" type="int" value="23"/>
		<constant name="SCE_FS_CONSTANT" type="int" value="18"/>
		<constant name="SCE_FS_DATE" type="int" value="16"/>
		<constant name="SCE_FS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_FS_DEFAULT_C" type="int" value="21"/>
		<constant name="SCE_FS_DISABLEDCODE" type="int" value="20"/>
		<constant name="SCE_FS_IDENTIFIER" type="int" value="15"/>
		<constant name="SCE_FS_IDENTIFIER_C" type="int" value="30"/>
		<constant name="SCE_FS_KEYWORD" type="int" value="7"/>
		<constant name="SCE_FS_KEYWORD2" type="int" value="8"/>
		<constant name="SCE_FS_KEYWORD2_C" type="int" value="25"/>
		<constant name="SCE_FS_KEYWORD3" type="int" value="9"/>
		<constant name="SCE_FS_KEYWORD4" type="int" value="10"/>
		<constant name="SCE_FS_KEYWORD_C" type="int" value="24"/>
		<constant name="SCE_FS_NUMBER" type="int" value="11"/>
		<constant name="SCE_FS_NUMBER_C" type="int" value="26"/>
		<constant name="SCE_FS_OPERATOR" type="int" value="14"/>
		<constant name="SCE_FS_OPERATOR_C" type="int" value="29"/>
		<constant name="SCE_FS_PREPROCESSOR" type="int" value="13"/>
		<constant name="SCE_FS_PREPROCESSOR_C" type="int" value="28"/>
		<constant name="SCE_FS_STRING" type="int" value="12"/>
		<constant name="SCE_FS_STRINGEOL" type="int" value="17"/>
		<constant name="SCE_FS_STRINGEOL_C" type="int" value="31"/>
		<constant name="SCE_FS_STRING_C" type="int" value="27"/>
		<constant name="SCE_FS_WORDOPERATOR" type="int" value="19"/>
		<constant name="SCE_F_COMMENT" type="int" value="1"/>
		<constant name="SCE_F_CONTINUATION" type="int" value="14"/>
		<constant name="SCE_F_DEFAULT" type="int" value="0"/>
		<constant name="SCE_F_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_F_LABEL" type="int" value="13"/>
		<constant name="SCE_F_NUMBER" type="int" value="2"/>
		<constant name="SCE_F_OPERATOR" type="int" value="6"/>
		<constant name="SCE_F_OPERATOR2" type="int" value="12"/>
		<constant name="SCE_F_PREPROCESSOR" type="int" value="11"/>
		<constant name="SCE_F_STRING1" type="int" value="3"/>
		<constant name="SCE_F_STRING2" type="int" value="4"/>
		<constant name="SCE_F_STRINGEOL" type="int" value="5"/>
		<constant name="SCE_F_WORD" type="int" value="8"/>
		<constant name="SCE_F_WORD2" type="int" value="9"/>
		<constant name="SCE_F_WORD3" type="int" value="10"/>
		<constant name="SCE_GAP_CHAR" type="int" value="7"/>
		<constant name="SCE_GAP_COMMENT" type="int" value="9"/>
		<constant name="SCE_GAP_DEFAULT" type="int" value="0"/>
		<constant name="SCE_GAP_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_GAP_KEYWORD" type="int" value="2"/>
		<constant name="SCE_GAP_KEYWORD2" type="int" value="3"/>
		<constant name="SCE_GAP_KEYWORD3" type="int" value="4"/>
		<constant name="SCE_GAP_KEYWORD4" type="int" value="5"/>
		<constant name="SCE_GAP_NUMBER" type="int" value="10"/>
		<constant name="SCE_GAP_OPERATOR" type="int" value="8"/>
		<constant name="SCE_GAP_STRING" type="int" value="6"/>
		<constant name="SCE_GAP_STRINGEOL" type="int" value="11"/>
		<constant name="SCE_GC_ATTRIBUTE" type="int" value="5"/>
		<constant name="SCE_GC_COMMAND" type="int" value="7"/>
		<constant name="SCE_GC_COMMENTBLOCK" type="int" value="2"/>
		<constant name="SCE_GC_COMMENTLINE" type="int" value="1"/>
		<constant name="SCE_GC_CONTROL" type="int" value="6"/>
		<constant name="SCE_GC_DEFAULT" type="int" value="0"/>
		<constant name="SCE_GC_EVENT" type="int" value="4"/>
		<constant name="SCE_GC_GLOBAL" type="int" value="3"/>
		<constant name="SCE_GC_OPERATOR" type="int" value="9"/>
		<constant name="SCE_GC_STRING" type="int" value="8"/>
		<constant name="SCE_HA_CAPITAL" type="int" value="8"/>
		<constant name="SCE_HA_CHARACTER" type="int" value="5"/>
		<constant name="SCE_HA_CLASS" type="int" value="6"/>
		<constant name="SCE_HA_COMMENTBLOCK" type="int" value="14"/>
		<constant name="SCE_HA_COMMENTBLOCK2" type="int" value="15"/>
		<constant name="SCE_HA_COMMENTBLOCK3" type="int" value="16"/>
		<constant name="SCE_HA_COMMENTLINE" type="int" value="13"/>
		<constant name="SCE_HA_DATA" type="int" value="9"/>
		<constant name="SCE_HA_DEFAULT" type="int" value="0"/>
		<constant name="SCE_HA_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_HA_IMPORT" type="int" value="10"/>
		<constant name="SCE_HA_INSTANCE" type="int" value="12"/>
		<constant name="SCE_HA_KEYWORD" type="int" value="2"/>
		<constant name="SCE_HA_MODULE" type="int" value="7"/>
		<constant name="SCE_HA_NUMBER" type="int" value="3"/>
		<constant name="SCE_HA_OPERATOR" type="int" value="11"/>
		<constant name="SCE_HA_STRING" type="int" value="4"/>
		<constant name="SCE_HBA_COMMENTLINE" type="int" value="82"/>
		<constant name="SCE_HBA_DEFAULT" type="int" value="81"/>
		<constant name="SCE_HBA_IDENTIFIER" type="int" value="86"/>
		<constant name="SCE_HBA_NUMBER" type="int" value="83"/>
		<constant name="SCE_HBA_START" type="int" value="80"/>
		<constant name="SCE_HBA_STRING" type="int" value="85"/>
		<constant name="SCE_HBA_STRINGEOL" type="int" value="87"/>
		<constant name="SCE_HBA_WORD" type="int" value="84"/>
		<constant name="SCE_HB_COMMENTLINE" type="int" value="72"/>
		<constant name="SCE_HB_DEFAULT" type="int" value="71"/>
		<constant name="SCE_HB_IDENTIFIER" type="int" value="76"/>
		<constant name="SCE_HB_NUMBER" type="int" value="73"/>
		<constant name="SCE_HB_START" type="int" value="70"/>
		<constant name="SCE_HB_STRING" type="int" value="75"/>
		<constant name="SCE_HB_STRINGEOL" type="int" value="77"/>
		<constant name="SCE_HB_WORD" type="int" value="74"/>
		<constant name="SCE_HJA_COMMENT" type="int" value="57"/>
		<constant name="SCE_HJA_COMMENTDOC" type="int" value="59"/>
		<constant name="SCE_HJA_COMMENTLINE" type="int" value="58"/>
		<constant name="SCE_HJA_DEFAULT" type="int" value="56"/>
		<constant name="SCE_HJA_DOUBLESTRING" type="int" value="63"/>
		<constant name="SCE_HJA_KEYWORD" type="int" value="62"/>
		<constant name="SCE_HJA_NUMBER" type="int" value="60"/>
		<constant name="SCE_HJA_REGEX" type="int" value="67"/>
		<constant name="SCE_HJA_SINGLESTRING" type="int" value="64"/>
		<constant name="SCE_HJA_START" type="int" value="55"/>
		<constant name="SCE_HJA_STRINGEOL" type="int" value="66"/>
		<constant name="SCE_HJA_SYMBOLS" type="int" value="65"/>
		<constant name="SCE_HJA_WORD" type="int" value="61"/>
		<constant name="SCE_HJ_COMMENT" type="int" value="42"/>
		<constant name="SCE_HJ_COMMENTDOC" type="int" value="44"/>
		<constant name="SCE_HJ_COMMENTLINE" type="int" value="43"/>
		<constant name="SCE_HJ_DEFAULT" type="int" value="41"/>
		<constant name="SCE_HJ_DOUBLESTRING" type="int" value="48"/>
		<constant name="SCE_HJ_KEYWORD" type="int" value="47"/>
		<constant name="SCE_HJ_NUMBER" type="int" value="45"/>
		<constant name="SCE_HJ_REGEX" type="int" value="52"/>
		<constant name="SCE_HJ_SINGLESTRING" type="int" value="49"/>
		<constant name="SCE_HJ_START" type="int" value="40"/>
		<constant name="SCE_HJ_STRINGEOL" type="int" value="51"/>
		<constant name="SCE_HJ_SYMBOLS" type="int" value="50"/>
		<constant name="SCE_HJ_WORD" type="int" value="46"/>
		<constant name="SCE_HPA_CHARACTER" type="int" value="110"/>
		<constant name="SCE_HPA_CLASSNAME" type="int" value="114"/>
		<constant name="SCE_HPA_COMMENTLINE" type="int" value="107"/>
		<constant name="SCE_HPA_DEFAULT" type="int" value="106"/>
		<constant name="SCE_HPA_DEFNAME" type="int" value="115"/>
		<constant name="SCE_HPA_IDENTIFIER" type="int" value="117"/>
		<constant name="SCE_HPA_NUMBER" type="int" value="108"/>
		<constant name="SCE_HPA_OPERATOR" type="int" value="116"/>
		<constant name="SCE_HPA_START" type="int" value="105"/>
		<constant name="SCE_HPA_STRING" type="int" value="109"/>
		<constant name="SCE_HPA_TRIPLE" type="int" value="112"/>
		<constant name="SCE_HPA_TRIPLEDOUBLE" type="int" value="113"/>
		<constant name="SCE_HPA_WORD" type="int" value="111"/>
		<constant name="SCE_HPHP_COMMENT" type="int" value="124"/>
		<constant name="SCE_HPHP_COMMENTLINE" type="int" value="125"/>
		<constant name="SCE_HPHP_COMPLEX_VARIABLE" type="int" value="104"/>
		<constant name="SCE_HPHP_DEFAULT" type="int" value="118"/>
		<constant name="SCE_HPHP_HSTRING" type="int" value="119"/>
		<constant name="SCE_HPHP_HSTRING_VARIABLE" type="int" value="126"/>
		<constant name="SCE_HPHP_NUMBER" type="int" value="122"/>
		<constant name="SCE_HPHP_OPERATOR" type="int" value="127"/>
		<constant name="SCE_HPHP_SIMPLESTRING" type="int" value="120"/>
		<constant name="SCE_HPHP_VARIABLE" type="int" value="123"/>
		<constant name="SCE_HPHP_WORD" type="int" value="121"/>
		<constant name="SCE_HP_CHARACTER" type="int" value="95"/>
		<constant name="SCE_HP_CLASSNAME" type="int" value="99"/>
		<constant name="SCE_HP_COMMENTLINE" type="int" value="92"/>
		<constant name="SCE_HP_DEFAULT" type="int" value="91"/>
		<constant name="SCE_HP_DEFNAME" type="int" value="100"/>
		<constant name="SCE_HP_IDENTIFIER" type="int" value="102"/>
		<constant name="SCE_HP_NUMBER" type="int" value="93"/>
		<constant name="SCE_HP_OPERATOR" type="int" value="101"/>
		<constant name="SCE_HP_START" type="int" value="90"/>
		<constant name="SCE_HP_STRING" type="int" value="94"/>
		<constant name="SCE_HP_TRIPLE" type="int" value="97"/>
		<constant name="SCE_HP_TRIPLEDOUBLE" type="int" value="98"/>
		<constant name="SCE_HP_WORD" type="int" value="96"/>
		<constant name="SCE_H_ASP" type="int" value="15"/>
		<constant name="SCE_H_ASPAT" type="int" value="16"/>
		<constant name="SCE_H_ATTRIBUTE" type="int" value="3"/>
		<constant name="SCE_H_ATTRIBUTEUNKNOWN" type="int" value="4"/>
		<constant name="SCE_H_CDATA" type="int" value="17"/>
		<constant name="SCE_H_COMMENT" type="int" value="9"/>
		<constant name="SCE_H_DEFAULT" type="int" value="0"/>
		<constant name="SCE_H_DOUBLESTRING" type="int" value="6"/>
		<constant name="SCE_H_ENTITY" type="int" value="10"/>
		<constant name="SCE_H_NUMBER" type="int" value="5"/>
		<constant name="SCE_H_OTHER" type="int" value="8"/>
		<constant name="SCE_H_QUESTION" type="int" value="18"/>
		<constant name="SCE_H_SCRIPT" type="int" value="14"/>
		<constant name="SCE_H_SGML_1ST_PARAM" type="int" value="23"/>
		<constant name="SCE_H_SGML_1ST_PARAM_COMMENT" type="int" value="30"/>
		<constant name="SCE_H_SGML_BLOCK_DEFAULT" type="int" value="31"/>
		<constant name="SCE_H_SGML_COMMAND" type="int" value="22"/>
		<constant name="SCE_H_SGML_COMMENT" type="int" value="29"/>
		<constant name="SCE_H_SGML_DEFAULT" type="int" value="21"/>
		<constant name="SCE_H_SGML_DOUBLESTRING" type="int" value="24"/>
		<constant name="SCE_H_SGML_ENTITY" type="int" value="28"/>
		<constant name="SCE_H_SGML_ERROR" type="int" value="26"/>
		<constant name="SCE_H_SGML_SIMPLESTRING" type="int" value="25"/>
		<constant name="SCE_H_SGML_SPECIAL" type="int" value="27"/>
		<constant name="SCE_H_SINGLESTRING" type="int" value="7"/>
		<constant name="SCE_H_TAG" type="int" value="1"/>
		<constant name="SCE_H_TAGEND" type="int" value="11"/>
		<constant name="SCE_H_TAGUNKNOWN" type="int" value="2"/>
		<constant name="SCE_H_VALUE" type="int" value="19"/>
		<constant name="SCE_H_XCCOMMENT" type="int" value="20"/>
		<constant name="SCE_H_XMLEND" type="int" value="13"/>
		<constant name="SCE_H_XMLSTART" type="int" value="12"/>
		<constant name="SCE_INNO_COMMENT" type="int" value="1"/>
		<constant name="SCE_INNO_COMMENT_PASCAL" type="int" value="7"/>
		<constant name="SCE_INNO_DEFAULT" type="int" value="0"/>
		<constant name="SCE_INNO_IDENTIFIER" type="int" value="12"/>
		<constant name="SCE_INNO_INLINE_EXPANSION" type="int" value="6"/>
		<constant name="SCE_INNO_KEYWORD" type="int" value="2"/>
		<constant name="SCE_INNO_KEYWORD_PASCAL" type="int" value="8"/>
		<constant name="SCE_INNO_KEYWORD_USER" type="int" value="9"/>
		<constant name="SCE_INNO_PARAMETER" type="int" value="3"/>
		<constant name="SCE_INNO_PREPROC" type="int" value="5"/>
		<constant name="SCE_INNO_SECTION" type="int" value="4"/>
		<constant name="SCE_INNO_STRING_DOUBLE" type="int" value="10"/>
		<constant name="SCE_INNO_STRING_SINGLE" type="int" value="11"/>
		<constant name="SCE_KIX_COMMENT" type="int" value="1"/>
		<constant name="SCE_KIX_DEFAULT" type="int" value="0"/>
		<constant name="SCE_KIX_FUNCTIONS" type="int" value="8"/>
		<constant name="SCE_KIX_IDENTIFIER" type="int" value="31"/>
		<constant name="SCE_KIX_KEYWORD" type="int" value="7"/>
		<constant name="SCE_KIX_MACRO" type="int" value="6"/>
		<constant name="SCE_KIX_NUMBER" type="int" value="4"/>
		<constant name="SCE_KIX_OPERATOR" type="int" value="9"/>
		<constant name="SCE_KIX_STRING1" type="int" value="2"/>
		<constant name="SCE_KIX_STRING2" type="int" value="3"/>
		<constant name="SCE_KIX_VAR" type="int" value="5"/>
		<constant name="SCE_LISP_COMMENT" type="int" value="1"/>
		<constant name="SCE_LISP_DEFAULT" type="int" value="0"/>
		<constant name="SCE_LISP_IDENTIFIER" type="int" value="9"/>
		<constant name="SCE_LISP_KEYWORD" type="int" value="3"/>
		<constant name="SCE_LISP_KEYWORD_KW" type="int" value="4"/>
		<constant name="SCE_LISP_MULTI_COMMENT" type="int" value="12"/>
		<constant name="SCE_LISP_NUMBER" type="int" value="2"/>
		<constant name="SCE_LISP_OPERATOR" type="int" value="10"/>
		<constant name="SCE_LISP_SPECIAL" type="int" value="11"/>
		<constant name="SCE_LISP_STRING" type="int" value="6"/>
		<constant name="SCE_LISP_STRINGEOL" type="int" value="8"/>
		<constant name="SCE_LISP_SYMBOL" type="int" value="5"/>
		<constant name="SCE_LOT_ABORT" type="int" value="6"/>
		<constant name="SCE_LOT_BREAK" type="int" value="2"/>
		<constant name="SCE_LOT_DEFAULT" type="int" value="0"/>
		<constant name="SCE_LOT_FAIL" type="int" value="5"/>
		<constant name="SCE_LOT_HEADER" type="int" value="1"/>
		<constant name="SCE_LOT_PASS" type="int" value="4"/>
		<constant name="SCE_LOT_SET" type="int" value="3"/>
		<constant name="SCE_LOUT_COMMENT" type="int" value="1"/>
		<constant name="SCE_LOUT_DEFAULT" type="int" value="0"/>
		<constant name="SCE_LOUT_IDENTIFIER" type="int" value="9"/>
		<constant name="SCE_LOUT_NUMBER" type="int" value="2"/>
		<constant name="SCE_LOUT_OPERATOR" type="int" value="8"/>
		<constant name="SCE_LOUT_STRING" type="int" value="7"/>
		<constant name="SCE_LOUT_STRINGEOL" type="int" value="10"/>
		<constant name="SCE_LOUT_WORD" type="int" value="3"/>
		<constant name="SCE_LOUT_WORD2" type="int" value="4"/>
		<constant name="SCE_LOUT_WORD3" type="int" value="5"/>
		<constant name="SCE_LOUT_WORD4" type="int" value="6"/>
		<constant name="SCE_LUA_CHARACTER" type="int" value="7"/>
		<constant name="SCE_LUA_COMMENT" type="int" value="1"/>
		<constant name="SCE_LUA_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_LUA_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_LUA_DEFAULT" type="int" value="0"/>
		<constant name="SCE_LUA_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_LUA_LITERALSTRING" type="int" value="8"/>
		<constant name="SCE_LUA_NUMBER" type="int" value="4"/>
		<constant name="SCE_LUA_OPERATOR" type="int" value="10"/>
		<constant name="SCE_LUA_PREPROCESSOR" type="int" value="9"/>
		<constant name="SCE_LUA_STRING" type="int" value="6"/>
		<constant name="SCE_LUA_STRINGEOL" type="int" value="12"/>
		<constant name="SCE_LUA_WORD" type="int" value="5"/>
		<constant name="SCE_LUA_WORD2" type="int" value="13"/>
		<constant name="SCE_LUA_WORD3" type="int" value="14"/>
		<constant name="SCE_LUA_WORD4" type="int" value="15"/>
		<constant name="SCE_LUA_WORD5" type="int" value="16"/>
		<constant name="SCE_LUA_WORD6" type="int" value="17"/>
		<constant name="SCE_LUA_WORD7" type="int" value="18"/>
		<constant name="SCE_LUA_WORD8" type="int" value="19"/>
		<constant name="SCE_L_COMMAND" type="int" value="1"/>
		<constant name="SCE_L_COMMENT" type="int" value="4"/>
		<constant name="SCE_L_DEFAULT" type="int" value="0"/>
		<constant name="SCE_L_MATH" type="int" value="3"/>
		<constant name="SCE_L_TAG" type="int" value="2"/>
		<constant name="SCE_MAGIK_BRACE_BLOCK" type="int" value="10"/>
		<constant name="SCE_MAGIK_BRACKET_BLOCK" type="int" value="9"/>
		<constant name="SCE_MAGIK_CHARACTER" type="int" value="3"/>
		<constant name="SCE_MAGIK_COMMENT" type="int" value="1"/>
		<constant name="SCE_MAGIK_CONTAINER" type="int" value="8"/>
		<constant name="SCE_MAGIK_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MAGIK_FLOW" type="int" value="7"/>
		<constant name="SCE_MAGIK_HYPER_COMMENT" type="int" value="16"/>
		<constant name="SCE_MAGIK_IDENTIFIER" type="int" value="5"/>
		<constant name="SCE_MAGIK_KEYWORD" type="int" value="13"/>
		<constant name="SCE_MAGIK_NUMBER" type="int" value="4"/>
		<constant name="SCE_MAGIK_OPERATOR" type="int" value="6"/>
		<constant name="SCE_MAGIK_PRAGMA" type="int" value="14"/>
		<constant name="SCE_MAGIK_SQBRACKET_BLOCK" type="int" value="11"/>
		<constant name="SCE_MAGIK_STRING" type="int" value="2"/>
		<constant name="SCE_MAGIK_SYMBOL" type="int" value="15"/>
		<constant name="SCE_MAGIK_UNKNOWN_KEYWORD" type="int" value="12"/>
		<constant name="SCE_MAKE_COMMENT" type="int" value="1"/>
		<constant name="SCE_MAKE_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MAKE_IDENTIFIER" type="int" value="3"/>
		<constant name="SCE_MAKE_IDEOL" type="int" value="9"/>
		<constant name="SCE_MAKE_OPERATOR" type="int" value="4"/>
		<constant name="SCE_MAKE_PREPROCESSOR" type="int" value="2"/>
		<constant name="SCE_MAKE_TARGET" type="int" value="5"/>
		<constant name="SCE_MARKDOWN_BLOCKQUOTE" type="int" value="15"/>
		<constant name="SCE_MARKDOWN_CODE" type="int" value="19"/>
		<constant name="SCE_MARKDOWN_CODE2" type="int" value="20"/>
		<constant name="SCE_MARKDOWN_CODEBK" type="int" value="21"/>
		<constant name="SCE_MARKDOWN_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MARKDOWN_EM1" type="int" value="4"/>
		<constant name="SCE_MARKDOWN_EM2" type="int" value="5"/>
		<constant name="SCE_MARKDOWN_HEADER1" type="int" value="6"/>
		<constant name="SCE_MARKDOWN_HEADER2" type="int" value="7"/>
		<constant name="SCE_MARKDOWN_HEADER3" type="int" value="8"/>
		<constant name="SCE_MARKDOWN_HEADER4" type="int" value="9"/>
		<constant name="SCE_MARKDOWN_HEADER5" type="int" value="10"/>
		<constant name="SCE_MARKDOWN_HEADER6" type="int" value="11"/>
		<constant name="SCE_MARKDOWN_HRULE" type="int" value="17"/>
		<constant name="SCE_MARKDOWN_LINE_BEGIN" type="int" value="1"/>
		<constant name="SCE_MARKDOWN_LINK" type="int" value="18"/>
		<constant name="SCE_MARKDOWN_OLIST_ITEM" type="int" value="14"/>
		<constant name="SCE_MARKDOWN_PRECHAR" type="int" value="12"/>
		<constant name="SCE_MARKDOWN_STRIKEOUT" type="int" value="16"/>
		<constant name="SCE_MARKDOWN_STRONG1" type="int" value="2"/>
		<constant name="SCE_MARKDOWN_STRONG2" type="int" value="3"/>
		<constant name="SCE_MARKDOWN_ULIST_ITEM" type="int" value="13"/>
		<constant name="SCE_MATLAB_COMMAND" type="int" value="2"/>
		<constant name="SCE_MATLAB_COMMENT" type="int" value="1"/>
		<constant name="SCE_MATLAB_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MATLAB_DOUBLEQUOTESTRING" type="int" value="8"/>
		<constant name="SCE_MATLAB_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_MATLAB_KEYWORD" type="int" value="4"/>
		<constant name="SCE_MATLAB_NUMBER" type="int" value="3"/>
		<constant name="SCE_MATLAB_OPERATOR" type="int" value="6"/>
		<constant name="SCE_MATLAB_STRING" type="int" value="5"/>
		<constant name="SCE_METAPOST_COMMAND" type="int" value="4"/>
		<constant name="SCE_METAPOST_DEFAULT" type="int" value="0"/>
		<constant name="SCE_METAPOST_EXTRA" type="int" value="6"/>
		<constant name="SCE_METAPOST_GROUP" type="int" value="2"/>
		<constant name="SCE_METAPOST_SPECIAL" type="int" value="1"/>
		<constant name="SCE_METAPOST_SYMBOL" type="int" value="3"/>
		<constant name="SCE_METAPOST_TEXT" type="int" value="5"/>
		<constant name="SCE_MMIXAL_CHAR" type="int" value="11"/>
		<constant name="SCE_MMIXAL_COMMENT" type="int" value="1"/>
		<constant name="SCE_MMIXAL_HEX" type="int" value="14"/>
		<constant name="SCE_MMIXAL_INCLUDE" type="int" value="17"/>
		<constant name="SCE_MMIXAL_LABEL" type="int" value="2"/>
		<constant name="SCE_MMIXAL_LEADWS" type="int" value="0"/>
		<constant name="SCE_MMIXAL_NUMBER" type="int" value="9"/>
		<constant name="SCE_MMIXAL_OPCODE" type="int" value="3"/>
		<constant name="SCE_MMIXAL_OPCODE_POST" type="int" value="7"/>
		<constant name="SCE_MMIXAL_OPCODE_PRE" type="int" value="4"/>
		<constant name="SCE_MMIXAL_OPCODE_UNKNOWN" type="int" value="6"/>
		<constant name="SCE_MMIXAL_OPCODE_VALID" type="int" value="5"/>
		<constant name="SCE_MMIXAL_OPERANDS" type="int" value="8"/>
		<constant name="SCE_MMIXAL_OPERATOR" type="int" value="15"/>
		<constant name="SCE_MMIXAL_REF" type="int" value="10"/>
		<constant name="SCE_MMIXAL_REGISTER" type="int" value="13"/>
		<constant name="SCE_MMIXAL_STRING" type="int" value="12"/>
		<constant name="SCE_MMIXAL_SYMBOL" type="int" value="16"/>
		<constant name="SCE_MODULA_BADSTR" type="int" value="17"/>
		<constant name="SCE_MODULA_BASENUM" type="int" value="7"/>
		<constant name="SCE_MODULA_CHAR" type="int" value="11"/>
		<constant name="SCE_MODULA_CHARSPEC" type="int" value="12"/>
		<constant name="SCE_MODULA_COMMENT" type="int" value="1"/>
		<constant name="SCE_MODULA_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MODULA_DOXYCOMM" type="int" value="2"/>
		<constant name="SCE_MODULA_DOXYKEY" type="int" value="3"/>
		<constant name="SCE_MODULA_FLOAT" type="int" value="8"/>
		<constant name="SCE_MODULA_KEYWORD" type="int" value="4"/>
		<constant name="SCE_MODULA_NUMBER" type="int" value="6"/>
		<constant name="SCE_MODULA_OPERATOR" type="int" value="16"/>
		<constant name="SCE_MODULA_PRAGMA" type="int" value="14"/>
		<constant name="SCE_MODULA_PRGKEY" type="int" value="15"/>
		<constant name="SCE_MODULA_PROC" type="int" value="13"/>
		<constant name="SCE_MODULA_RESERVED" type="int" value="5"/>
		<constant name="SCE_MODULA_STRING" type="int" value="9"/>
		<constant name="SCE_MODULA_STRSPEC" type="int" value="10"/>
		<constant name="SCE_MSSQL_COLUMN_NAME" type="int" value="8"/>
		<constant name="SCE_MSSQL_COLUMN_NAME_2" type="int" value="16"/>
		<constant name="SCE_MSSQL_COMMENT" type="int" value="1"/>
		<constant name="SCE_MSSQL_DATATYPE" type="int" value="10"/>
		<constant name="SCE_MSSQL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MSSQL_DEFAULT_PREF_DATATYPE" type="int" value="15"/>
		<constant name="SCE_MSSQL_FUNCTION" type="int" value="13"/>
		<constant name="SCE_MSSQL_GLOBAL_VARIABLE" type="int" value="12"/>
		<constant name="SCE_MSSQL_IDENTIFIER" type="int" value="6"/>
		<constant name="SCE_MSSQL_LINE_COMMENT" type="int" value="2"/>
		<constant name="SCE_MSSQL_NUMBER" type="int" value="3"/>
		<constant name="SCE_MSSQL_OPERATOR" type="int" value="5"/>
		<constant name="SCE_MSSQL_STATEMENT" type="int" value="9"/>
		<constant name="SCE_MSSQL_STORED_PROCEDURE" type="int" value="14"/>
		<constant name="SCE_MSSQL_STRING" type="int" value="4"/>
		<constant name="SCE_MSSQL_SYSTABLE" type="int" value="11"/>
		<constant name="SCE_MSSQL_VARIABLE" type="int" value="7"/>
		<constant name="SCE_MYSQL_COMMENT" type="int" value="1"/>
		<constant name="SCE_MYSQL_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_MYSQL_DATABASEOBJECT" type="int" value="9"/>
		<constant name="SCE_MYSQL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_MYSQL_DQSTRING" type="int" value="13"/>
		<constant name="SCE_MYSQL_FUNCTION" type="int" value="15"/>
		<constant name="SCE_MYSQL_HIDDENCOMMAND" type="int" value="21"/>
		<constant name="SCE_MYSQL_IDENTIFIER" type="int" value="16"/>
		<constant name="SCE_MYSQL_KEYWORD" type="int" value="8"/>
		<constant name="SCE_MYSQL_KNOWNSYSTEMVARIABLE" type="int" value="5"/>
		<constant name="SCE_MYSQL_MAJORKEYWORD" type="int" value="7"/>
		<constant name="SCE_MYSQL_NUMBER" type="int" value="6"/>
		<constant name="SCE_MYSQL_OPERATOR" type="int" value="14"/>
		<constant name="SCE_MYSQL_PROCEDUREKEYWORD" type="int" value="10"/>
		<constant name="SCE_MYSQL_QUOTEDIDENTIFIER" type="int" value="17"/>
		<constant name="SCE_MYSQL_SQSTRING" type="int" value="12"/>
		<constant name="SCE_MYSQL_STRING" type="int" value="11"/>
		<constant name="SCE_MYSQL_SYSTEMVARIABLE" type="int" value="4"/>
		<constant name="SCE_MYSQL_USER1" type="int" value="18"/>
		<constant name="SCE_MYSQL_USER2" type="int" value="19"/>
		<constant name="SCE_MYSQL_USER3" type="int" value="20"/>
		<constant name="SCE_MYSQL_VARIABLE" type="int" value="3"/>
		<constant name="SCE_NNCRONTAB_ASTERISK" type="int" value="6"/>
		<constant name="SCE_NNCRONTAB_COMMENT" type="int" value="1"/>
		<constant name="SCE_NNCRONTAB_DEFAULT" type="int" value="0"/>
		<constant name="SCE_NNCRONTAB_ENVIRONMENT" type="int" value="9"/>
		<constant name="SCE_NNCRONTAB_IDENTIFIER" type="int" value="10"/>
		<constant name="SCE_NNCRONTAB_KEYWORD" type="int" value="4"/>
		<constant name="SCE_NNCRONTAB_MODIFIER" type="int" value="5"/>
		<constant name="SCE_NNCRONTAB_NUMBER" type="int" value="7"/>
		<constant name="SCE_NNCRONTAB_SECTION" type="int" value="3"/>
		<constant name="SCE_NNCRONTAB_STRING" type="int" value="8"/>
		<constant name="SCE_NNCRONTAB_TASK" type="int" value="2"/>
		<constant name="SCE_NSIS_COMMENT" type="int" value="1"/>
		<constant name="SCE_NSIS_COMMENTBOX" type="int" value="18"/>
		<constant name="SCE_NSIS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_NSIS_FUNCTION" type="int" value="5"/>
		<constant name="SCE_NSIS_FUNCTIONDEF" type="int" value="17"/>
		<constant name="SCE_NSIS_IFDEFINEDEF" type="int" value="11"/>
		<constant name="SCE_NSIS_LABEL" type="int" value="7"/>
		<constant name="SCE_NSIS_MACRODEF" type="int" value="12"/>
		<constant name="SCE_NSIS_NUMBER" type="int" value="14"/>
		<constant name="SCE_NSIS_PAGEEX" type="int" value="16"/>
		<constant name="SCE_NSIS_SECTIONDEF" type="int" value="9"/>
		<constant name="SCE_NSIS_SECTIONGROUP" type="int" value="15"/>
		<constant name="SCE_NSIS_STRINGDQ" type="int" value="2"/>
		<constant name="SCE_NSIS_STRINGLQ" type="int" value="3"/>
		<constant name="SCE_NSIS_STRINGRQ" type="int" value="4"/>
		<constant name="SCE_NSIS_STRINGVAR" type="int" value="13"/>
		<constant name="SCE_NSIS_SUBSECTIONDEF" type="int" value="10"/>
		<constant name="SCE_NSIS_USERDEFINED" type="int" value="8"/>
		<constant name="SCE_NSIS_VARIABLE" type="int" value="6"/>
		<constant name="SCE_OPAL_BOOL_CONST" type="int" value="8"/>
		<constant name="SCE_OPAL_COMMENT_BLOCK" type="int" value="1"/>
		<constant name="SCE_OPAL_COMMENT_LINE" type="int" value="2"/>
		<constant name="SCE_OPAL_DEFAULT" type="int" value="32"/>
		<constant name="SCE_OPAL_INTEGER" type="int" value="3"/>
		<constant name="SCE_OPAL_KEYWORD" type="int" value="4"/>
		<constant name="SCE_OPAL_PAR" type="int" value="7"/>
		<constant name="SCE_OPAL_SORT" type="int" value="5"/>
		<constant name="SCE_OPAL_SPACE" type="int" value="0"/>
		<constant name="SCE_OPAL_STRING" type="int" value="6"/>
		<constant name="SCE_PAS_ASM" type="int" value="14"/>
		<constant name="SCE_PAS_CHARACTER" type="int" value="12"/>
		<constant name="SCE_PAS_COMMENT" type="int" value="2"/>
		<constant name="SCE_PAS_COMMENT2" type="int" value="3"/>
		<constant name="SCE_PAS_COMMENTLINE" type="int" value="4"/>
		<constant name="SCE_PAS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PAS_HEXNUMBER" type="int" value="8"/>
		<constant name="SCE_PAS_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_PAS_NUMBER" type="int" value="7"/>
		<constant name="SCE_PAS_OPERATOR" type="int" value="13"/>
		<constant name="SCE_PAS_PREPROCESSOR" type="int" value="5"/>
		<constant name="SCE_PAS_PREPROCESSOR2" type="int" value="6"/>
		<constant name="SCE_PAS_STRING" type="int" value="10"/>
		<constant name="SCE_PAS_STRINGEOL" type="int" value="11"/>
		<constant name="SCE_PAS_WORD" type="int" value="9"/>
		<constant name="SCE_PLM_COMMENT" type="int" value="1"/>
		<constant name="SCE_PLM_CONTROL" type="int" value="6"/>
		<constant name="SCE_PLM_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PLM_IDENTIFIER" type="int" value="4"/>
		<constant name="SCE_PLM_KEYWORD" type="int" value="7"/>
		<constant name="SCE_PLM_NUMBER" type="int" value="3"/>
		<constant name="SCE_PLM_OPERATOR" type="int" value="5"/>
		<constant name="SCE_PLM_STRING" type="int" value="2"/>
		<constant name="SCE_PL_ARRAY" type="int" value="13"/>
		<constant name="SCE_PL_BACKTICKS" type="int" value="20"/>
		<constant name="SCE_PL_CHARACTER" type="int" value="7"/>
		<constant name="SCE_PL_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_PL_DATASECTION" type="int" value="21"/>
		<constant name="SCE_PL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PL_ERROR" type="int" value="1"/>
		<constant name="SCE_PL_FORMAT" type="int" value="42"/>
		<constant name="SCE_PL_FORMAT_IDENT" type="int" value="41"/>
		<constant name="SCE_PL_HASH" type="int" value="14"/>
		<constant name="SCE_PL_HERE_DELIM" type="int" value="22"/>
		<constant name="SCE_PL_HERE_Q" type="int" value="23"/>
		<constant name="SCE_PL_HERE_QQ" type="int" value="24"/>
		<constant name="SCE_PL_HERE_QX" type="int" value="25"/>
		<constant name="SCE_PL_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_PL_LONGQUOTE" type="int" value="19"/>
		<constant name="SCE_PL_NUMBER" type="int" value="4"/>
		<constant name="SCE_PL_OPERATOR" type="int" value="10"/>
		<constant name="SCE_PL_POD" type="int" value="3"/>
		<constant name="SCE_PL_POD_VERB" type="int" value="31"/>
		<constant name="SCE_PL_PREPROCESSOR" type="int" value="9"/>
		<constant name="SCE_PL_PUNCTUATION" type="int" value="8"/>
		<constant name="SCE_PL_REGEX" type="int" value="17"/>
		<constant name="SCE_PL_REGSUBST" type="int" value="18"/>
		<constant name="SCE_PL_SCALAR" type="int" value="12"/>
		<constant name="SCE_PL_STRING" type="int" value="6"/>
		<constant name="SCE_PL_STRING_Q" type="int" value="26"/>
		<constant name="SCE_PL_STRING_QQ" type="int" value="27"/>
		<constant name="SCE_PL_STRING_QR" type="int" value="29"/>
		<constant name="SCE_PL_STRING_QW" type="int" value="30"/>
		<constant name="SCE_PL_STRING_QX" type="int" value="28"/>
		<constant name="SCE_PL_SUB_PROTOTYPE" type="int" value="40"/>
		<constant name="SCE_PL_SYMBOLTABLE" type="int" value="15"/>
		<constant name="SCE_PL_VARIABLE_INDEXER" type="int" value="16"/>
		<constant name="SCE_PL_WORD" type="int" value="5"/>
		<constant name="SCE_POV_BADDIRECTIVE" type="int" value="9"/>
		<constant name="SCE_POV_COMMENT" type="int" value="1"/>
		<constant name="SCE_POV_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_POV_DEFAULT" type="int" value="0"/>
		<constant name="SCE_POV_DIRECTIVE" type="int" value="8"/>
		<constant name="SCE_POV_IDENTIFIER" type="int" value="5"/>
		<constant name="SCE_POV_NUMBER" type="int" value="3"/>
		<constant name="SCE_POV_OPERATOR" type="int" value="4"/>
		<constant name="SCE_POV_STRING" type="int" value="6"/>
		<constant name="SCE_POV_STRINGEOL" type="int" value="7"/>
		<constant name="SCE_POV_WORD2" type="int" value="10"/>
		<constant name="SCE_POV_WORD3" type="int" value="11"/>
		<constant name="SCE_POV_WORD4" type="int" value="12"/>
		<constant name="SCE_POV_WORD5" type="int" value="13"/>
		<constant name="SCE_POV_WORD6" type="int" value="14"/>
		<constant name="SCE_POV_WORD7" type="int" value="15"/>
		<constant name="SCE_POV_WORD8" type="int" value="16"/>
		<constant name="SCE_POWERPRO_ALTQUOTE" type="int" value="15"/>
		<constant name="SCE_POWERPRO_COMMENTBLOCK" type="int" value="1"/>
		<constant name="SCE_POWERPRO_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_POWERPRO_DEFAULT" type="int" value="0"/>
		<constant name="SCE_POWERPRO_DOUBLEQUOTEDSTRING" type="int" value="8"/>
		<constant name="SCE_POWERPRO_FUNCTION" type="int" value="16"/>
		<constant name="SCE_POWERPRO_IDENTIFIER" type="int" value="12"/>
		<constant name="SCE_POWERPRO_LINECONTINUE" type="int" value="10"/>
		<constant name="SCE_POWERPRO_NUMBER" type="int" value="3"/>
		<constant name="SCE_POWERPRO_OPERATOR" type="int" value="11"/>
		<constant name="SCE_POWERPRO_SINGLEQUOTEDSTRING" type="int" value="9"/>
		<constant name="SCE_POWERPRO_STRINGEOL" type="int" value="13"/>
		<constant name="SCE_POWERPRO_VERBATIM" type="int" value="14"/>
		<constant name="SCE_POWERPRO_WORD" type="int" value="4"/>
		<constant name="SCE_POWERPRO_WORD2" type="int" value="5"/>
		<constant name="SCE_POWERPRO_WORD3" type="int" value="6"/>
		<constant name="SCE_POWERPRO_WORD4" type="int" value="7"/>
		<constant name="SCE_POWERSHELL_ALIAS" type="int" value="10"/>
		<constant name="SCE_POWERSHELL_CHARACTER" type="int" value="3"/>
		<constant name="SCE_POWERSHELL_CMDLET" type="int" value="9"/>
		<constant name="SCE_POWERSHELL_COMMENT" type="int" value="1"/>
		<constant name="SCE_POWERSHELL_COMMENTSTREAM" type="int" value="13"/>
		<constant name="SCE_POWERSHELL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_POWERSHELL_FUNCTION" type="int" value="11"/>
		<constant name="SCE_POWERSHELL_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_POWERSHELL_KEYWORD" type="int" value="8"/>
		<constant name="SCE_POWERSHELL_NUMBER" type="int" value="4"/>
		<constant name="SCE_POWERSHELL_OPERATOR" type="int" value="6"/>
		<constant name="SCE_POWERSHELL_STRING" type="int" value="2"/>
		<constant name="SCE_POWERSHELL_USER1" type="int" value="12"/>
		<constant name="SCE_POWERSHELL_VARIABLE" type="int" value="5"/>
		<constant name="SCE_PO_COMMENT" type="int" value="1"/>
		<constant name="SCE_PO_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PO_FUZZY" type="int" value="8"/>
		<constant name="SCE_PO_MSGCTXT" type="int" value="6"/>
		<constant name="SCE_PO_MSGCTXT_TEXT" type="int" value="7"/>
		<constant name="SCE_PO_MSGID" type="int" value="2"/>
		<constant name="SCE_PO_MSGID_TEXT" type="int" value="3"/>
		<constant name="SCE_PO_MSGSTR" type="int" value="4"/>
		<constant name="SCE_PO_MSGSTR_TEXT" type="int" value="5"/>
		<constant name="SCE_PROPS_ASSIGNMENT" type="int" value="3"/>
		<constant name="SCE_PROPS_COMMENT" type="int" value="1"/>
		<constant name="SCE_PROPS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PROPS_DEFVAL" type="int" value="4"/>
		<constant name="SCE_PROPS_KEY" type="int" value="5"/>
		<constant name="SCE_PROPS_SECTION" type="int" value="2"/>
		<constant name="SCE_PS_BADSTRINGCHAR" type="int" value="15"/>
		<constant name="SCE_PS_BASE85STRING" type="int" value="14"/>
		<constant name="SCE_PS_COMMENT" type="int" value="1"/>
		<constant name="SCE_PS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_PS_DSC_COMMENT" type="int" value="2"/>
		<constant name="SCE_PS_DSC_VALUE" type="int" value="3"/>
		<constant name="SCE_PS_HEXSTRING" type="int" value="13"/>
		<constant name="SCE_PS_IMMEVAL" type="int" value="8"/>
		<constant name="SCE_PS_KEYWORD" type="int" value="6"/>
		<constant name="SCE_PS_LITERAL" type="int" value="7"/>
		<constant name="SCE_PS_NAME" type="int" value="5"/>
		<constant name="SCE_PS_NUMBER" type="int" value="4"/>
		<constant name="SCE_PS_PAREN_ARRAY" type="int" value="9"/>
		<constant name="SCE_PS_PAREN_DICT" type="int" value="10"/>
		<constant name="SCE_PS_PAREN_PROC" type="int" value="11"/>
		<constant name="SCE_PS_TEXT" type="int" value="12"/>
		<constant name="SCE_P_CHARACTER" type="int" value="4"/>
		<constant name="SCE_P_CLASSNAME" type="int" value="8"/>
		<constant name="SCE_P_COMMENTBLOCK" type="int" value="12"/>
		<constant name="SCE_P_COMMENTLINE" type="int" value="1"/>
		<constant name="SCE_P_DECORATOR" type="int" value="15"/>
		<constant name="SCE_P_DEFAULT" type="int" value="0"/>
		<constant name="SCE_P_DEFNAME" type="int" value="9"/>
		<constant name="SCE_P_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_P_NUMBER" type="int" value="2"/>
		<constant name="SCE_P_OPERATOR" type="int" value="10"/>
		<constant name="SCE_P_STRING" type="int" value="3"/>
		<constant name="SCE_P_STRINGEOL" type="int" value="13"/>
		<constant name="SCE_P_TRIPLE" type="int" value="6"/>
		<constant name="SCE_P_TRIPLEDOUBLE" type="int" value="7"/>
		<constant name="SCE_P_WORD" type="int" value="5"/>
		<constant name="SCE_P_WORD2" type="int" value="14"/>
		<constant name="SCE_RB_BACKTICKS" type="int" value="18"/>
		<constant name="SCE_RB_CHARACTER" type="int" value="7"/>
		<constant name="SCE_RB_CLASSNAME" type="int" value="8"/>
		<constant name="SCE_RB_CLASS_VAR" type="int" value="17"/>
		<constant name="SCE_RB_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_RB_DATASECTION" type="int" value="19"/>
		<constant name="SCE_RB_DEFAULT" type="int" value="0"/>
		<constant name="SCE_RB_DEFNAME" type="int" value="9"/>
		<constant name="SCE_RB_ERROR" type="int" value="1"/>
		<constant name="SCE_RB_GLOBAL" type="int" value="13"/>
		<constant name="SCE_RB_HERE_DELIM" type="int" value="20"/>
		<constant name="SCE_RB_HERE_Q" type="int" value="21"/>
		<constant name="SCE_RB_HERE_QQ" type="int" value="22"/>
		<constant name="SCE_RB_HERE_QX" type="int" value="23"/>
		<constant name="SCE_RB_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_RB_INSTANCE_VAR" type="int" value="16"/>
		<constant name="SCE_RB_MODULE_NAME" type="int" value="15"/>
		<constant name="SCE_RB_NUMBER" type="int" value="4"/>
		<constant name="SCE_RB_OPERATOR" type="int" value="10"/>
		<constant name="SCE_RB_POD" type="int" value="3"/>
		<constant name="SCE_RB_REGEX" type="int" value="12"/>
		<constant name="SCE_RB_STDERR" type="int" value="40"/>
		<constant name="SCE_RB_STDIN" type="int" value="30"/>
		<constant name="SCE_RB_STDOUT" type="int" value="31"/>
		<constant name="SCE_RB_STRING" type="int" value="6"/>
		<constant name="SCE_RB_STRING_Q" type="int" value="24"/>
		<constant name="SCE_RB_STRING_QQ" type="int" value="25"/>
		<constant name="SCE_RB_STRING_QR" type="int" value="27"/>
		<constant name="SCE_RB_STRING_QW" type="int" value="28"/>
		<constant name="SCE_RB_STRING_QX" type="int" value="26"/>
		<constant name="SCE_RB_SYMBOL" type="int" value="14"/>
		<constant name="SCE_RB_UPPER_BOUND" type="int" value="41"/>
		<constant name="SCE_RB_WORD" type="int" value="5"/>
		<constant name="SCE_RB_WORD_DEMOTED" type="int" value="29"/>
		<constant name="SCE_REBOL_BINARY" type="int" value="11"/>
		<constant name="SCE_REBOL_BRACEDSTRING" type="int" value="7"/>
		<constant name="SCE_REBOL_CHARACTER" type="int" value="5"/>
		<constant name="SCE_REBOL_COMMENTBLOCK" type="int" value="2"/>
		<constant name="SCE_REBOL_COMMENTLINE" type="int" value="1"/>
		<constant name="SCE_REBOL_DATE" type="int" value="18"/>
		<constant name="SCE_REBOL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_REBOL_EMAIL" type="int" value="16"/>
		<constant name="SCE_REBOL_FILE" type="int" value="15"/>
		<constant name="SCE_REBOL_IDENTIFIER" type="int" value="20"/>
		<constant name="SCE_REBOL_ISSUE" type="int" value="13"/>
		<constant name="SCE_REBOL_MONEY" type="int" value="12"/>
		<constant name="SCE_REBOL_NUMBER" type="int" value="8"/>
		<constant name="SCE_REBOL_OPERATOR" type="int" value="4"/>
		<constant name="SCE_REBOL_PAIR" type="int" value="9"/>
		<constant name="SCE_REBOL_PREFACE" type="int" value="3"/>
		<constant name="SCE_REBOL_QUOTEDSTRING" type="int" value="6"/>
		<constant name="SCE_REBOL_TAG" type="int" value="14"/>
		<constant name="SCE_REBOL_TIME" type="int" value="19"/>
		<constant name="SCE_REBOL_TUPLE" type="int" value="10"/>
		<constant name="SCE_REBOL_URL" type="int" value="17"/>
		<constant name="SCE_REBOL_WORD" type="int" value="21"/>
		<constant name="SCE_REBOL_WORD2" type="int" value="22"/>
		<constant name="SCE_REBOL_WORD3" type="int" value="23"/>
		<constant name="SCE_REBOL_WORD4" type="int" value="24"/>
		<constant name="SCE_REBOL_WORD5" type="int" value="25"/>
		<constant name="SCE_REBOL_WORD6" type="int" value="26"/>
		<constant name="SCE_REBOL_WORD7" type="int" value="27"/>
		<constant name="SCE_REBOL_WORD8" type="int" value="28"/>
		<constant name="SCE_R_BASEKWORD" type="int" value="3"/>
		<constant name="SCE_R_COMMENT" type="int" value="1"/>
		<constant name="SCE_R_DEFAULT" type="int" value="0"/>
		<constant name="SCE_R_IDENTIFIER" type="int" value="9"/>
		<constant name="SCE_R_INFIX" type="int" value="10"/>
		<constant name="SCE_R_INFIXEOL" type="int" value="11"/>
		<constant name="SCE_R_KWORD" type="int" value="2"/>
		<constant name="SCE_R_NUMBER" type="int" value="5"/>
		<constant name="SCE_R_OPERATOR" type="int" value="8"/>
		<constant name="SCE_R_OTHERKWORD" type="int" value="4"/>
		<constant name="SCE_R_STRING" type="int" value="6"/>
		<constant name="SCE_R_STRING2" type="int" value="7"/>
		<constant name="SCE_SCRIPTOL_CHARACTER" type="int" value="8"/>
		<constant name="SCE_SCRIPTOL_CLASSNAME" type="int" value="14"/>
		<constant name="SCE_SCRIPTOL_COMMENTBLOCK" type="int" value="5"/>
		<constant name="SCE_SCRIPTOL_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_SCRIPTOL_CSTYLE" type="int" value="4"/>
		<constant name="SCE_SCRIPTOL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SCRIPTOL_IDENTIFIER" type="int" value="12"/>
		<constant name="SCE_SCRIPTOL_KEYWORD" type="int" value="10"/>
		<constant name="SCE_SCRIPTOL_NUMBER" type="int" value="6"/>
		<constant name="SCE_SCRIPTOL_OPERATOR" type="int" value="11"/>
		<constant name="SCE_SCRIPTOL_PERSISTENT" type="int" value="3"/>
		<constant name="SCE_SCRIPTOL_PREPROCESSOR" type="int" value="15"/>
		<constant name="SCE_SCRIPTOL_STRING" type="int" value="7"/>
		<constant name="SCE_SCRIPTOL_STRINGEOL" type="int" value="9"/>
		<constant name="SCE_SCRIPTOL_TRIPLE" type="int" value="13"/>
		<constant name="SCE_SCRIPTOL_WHITE" type="int" value="1"/>
		<constant name="SCE_SH_BACKTICKS" type="int" value="11"/>
		<constant name="SCE_SH_CHARACTER" type="int" value="6"/>
		<constant name="SCE_SH_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_SH_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SH_ERROR" type="int" value="1"/>
		<constant name="SCE_SH_HERE_DELIM" type="int" value="12"/>
		<constant name="SCE_SH_HERE_Q" type="int" value="13"/>
		<constant name="SCE_SH_IDENTIFIER" type="int" value="8"/>
		<constant name="SCE_SH_NUMBER" type="int" value="3"/>
		<constant name="SCE_SH_OPERATOR" type="int" value="7"/>
		<constant name="SCE_SH_PARAM" type="int" value="10"/>
		<constant name="SCE_SH_SCALAR" type="int" value="9"/>
		<constant name="SCE_SH_STRING" type="int" value="5"/>
		<constant name="SCE_SH_WORD" type="int" value="4"/>
		<constant name="SCE_SML_CHAR" type="int" value="9"/>
		<constant name="SCE_SML_COMMENT" type="int" value="12"/>
		<constant name="SCE_SML_COMMENT1" type="int" value="13"/>
		<constant name="SCE_SML_COMMENT2" type="int" value="14"/>
		<constant name="SCE_SML_COMMENT3" type="int" value="15"/>
		<constant name="SCE_SML_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SML_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_SML_KEYWORD" type="int" value="3"/>
		<constant name="SCE_SML_KEYWORD2" type="int" value="4"/>
		<constant name="SCE_SML_KEYWORD3" type="int" value="5"/>
		<constant name="SCE_SML_LINENUM" type="int" value="6"/>
		<constant name="SCE_SML_NUMBER" type="int" value="8"/>
		<constant name="SCE_SML_OPERATOR" type="int" value="7"/>
		<constant name="SCE_SML_STRING" type="int" value="11"/>
		<constant name="SCE_SML_TAGNAME" type="int" value="2"/>
		<constant name="SCE_SN_CODE" type="int" value="1"/>
		<constant name="SCE_SN_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_SN_COMMENTLINEBANG" type="int" value="3"/>
		<constant name="SCE_SN_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SN_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_SN_NUMBER" type="int" value="4"/>
		<constant name="SCE_SN_OPERATOR" type="int" value="10"/>
		<constant name="SCE_SN_PREPROCESSOR" type="int" value="9"/>
		<constant name="SCE_SN_REGEXTAG" type="int" value="13"/>
		<constant name="SCE_SN_SIGNAL" type="int" value="14"/>
		<constant name="SCE_SN_STRING" type="int" value="6"/>
		<constant name="SCE_SN_STRINGEOL" type="int" value="12"/>
		<constant name="SCE_SN_USER" type="int" value="19"/>
		<constant name="SCE_SN_WORD" type="int" value="5"/>
		<constant name="SCE_SN_WORD2" type="int" value="7"/>
		<constant name="SCE_SN_WORD3" type="int" value="8"/>
		<constant name="SCE_SORCUS_COMMAND" type="int" value="1"/>
		<constant name="SCE_SORCUS_COMMENTLINE" type="int" value="3"/>
		<constant name="SCE_SORCUS_CONSTANT" type="int" value="9"/>
		<constant name="SCE_SORCUS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SORCUS_IDENTIFIER" type="int" value="6"/>
		<constant name="SCE_SORCUS_NUMBER" type="int" value="8"/>
		<constant name="SCE_SORCUS_OPERATOR" type="int" value="7"/>
		<constant name="SCE_SORCUS_PARAMETER" type="int" value="2"/>
		<constant name="SCE_SORCUS_STRING" type="int" value="4"/>
		<constant name="SCE_SORCUS_STRINGEOL" type="int" value="5"/>
		<constant name="SCE_SPICE_COMMENTLINE" type="int" value="8"/>
		<constant name="SCE_SPICE_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SPICE_DELIMITER" type="int" value="6"/>
		<constant name="SCE_SPICE_IDENTIFIER" type="int" value="1"/>
		<constant name="SCE_SPICE_KEYWORD" type="int" value="2"/>
		<constant name="SCE_SPICE_KEYWORD2" type="int" value="3"/>
		<constant name="SCE_SPICE_KEYWORD3" type="int" value="4"/>
		<constant name="SCE_SPICE_NUMBER" type="int" value="5"/>
		<constant name="SCE_SPICE_VALUE" type="int" value="7"/>
		<constant name="SCE_SQL_CHARACTER" type="int" value="7"/>
		<constant name="SCE_SQL_COMMENT" type="int" value="1"/>
		<constant name="SCE_SQL_COMMENTDOC" type="int" value="3"/>
		<constant name="SCE_SQL_COMMENTDOCKEYWORD" type="int" value="17"/>
		<constant name="SCE_SQL_COMMENTDOCKEYWORDERROR" type="int" value="18"/>
		<constant name="SCE_SQL_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_SQL_COMMENTLINEDOC" type="int" value="15"/>
		<constant name="SCE_SQL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_SQL_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_SQL_NUMBER" type="int" value="4"/>
		<constant name="SCE_SQL_OPERATOR" type="int" value="10"/>
		<constant name="SCE_SQL_QUOTEDIDENTIFIER" type="int" value="23"/>
		<constant name="SCE_SQL_SQLPLUS" type="int" value="8"/>
		<constant name="SCE_SQL_SQLPLUS_COMMENT" type="int" value="13"/>
		<constant name="SCE_SQL_SQLPLUS_PROMPT" type="int" value="9"/>
		<constant name="SCE_SQL_STRING" type="int" value="6"/>
		<constant name="SCE_SQL_USER1" type="int" value="19"/>
		<constant name="SCE_SQL_USER2" type="int" value="20"/>
		<constant name="SCE_SQL_USER3" type="int" value="21"/>
		<constant name="SCE_SQL_USER4" type="int" value="22"/>
		<constant name="SCE_SQL_WORD" type="int" value="5"/>
		<constant name="SCE_SQL_WORD2" type="int" value="16"/>
		<constant name="SCE_ST_ASSIGN" type="int" value="14"/>
		<constant name="SCE_ST_BINARY" type="int" value="5"/>
		<constant name="SCE_ST_BOOL" type="int" value="6"/>
		<constant name="SCE_ST_CHARACTER" type="int" value="15"/>
		<constant name="SCE_ST_COMMENT" type="int" value="3"/>
		<constant name="SCE_ST_DEFAULT" type="int" value="0"/>
		<constant name="SCE_ST_GLOBAL" type="int" value="10"/>
		<constant name="SCE_ST_KWSEND" type="int" value="13"/>
		<constant name="SCE_ST_NIL" type="int" value="9"/>
		<constant name="SCE_ST_NUMBER" type="int" value="2"/>
		<constant name="SCE_ST_RETURN" type="int" value="11"/>
		<constant name="SCE_ST_SELF" type="int" value="7"/>
		<constant name="SCE_ST_SPECIAL" type="int" value="12"/>
		<constant name="SCE_ST_SPEC_SEL" type="int" value="16"/>
		<constant name="SCE_ST_STRING" type="int" value="1"/>
		<constant name="SCE_ST_SUPER" type="int" value="8"/>
		<constant name="SCE_ST_SYMBOL" type="int" value="4"/>
		<constant name="SCE_T3_BLOCK_COMMENT" type="int" value="3"/>
		<constant name="SCE_T3_BRACE" type="int" value="20"/>
		<constant name="SCE_T3_DEFAULT" type="int" value="0"/>
		<constant name="SCE_T3_D_STRING" type="int" value="10"/>
		<constant name="SCE_T3_HTML_DEFAULT" type="int" value="15"/>
		<constant name="SCE_T3_HTML_STRING" type="int" value="16"/>
		<constant name="SCE_T3_HTML_TAG" type="int" value="14"/>
		<constant name="SCE_T3_IDENTIFIER" type="int" value="8"/>
		<constant name="SCE_T3_KEYWORD" type="int" value="6"/>
		<constant name="SCE_T3_LIB_DIRECTIVE" type="int" value="12"/>
		<constant name="SCE_T3_LINE_COMMENT" type="int" value="4"/>
		<constant name="SCE_T3_MSG_PARAM" type="int" value="13"/>
		<constant name="SCE_T3_NUMBER" type="int" value="7"/>
		<constant name="SCE_T3_OPERATOR" type="int" value="5"/>
		<constant name="SCE_T3_PREPROCESSOR" type="int" value="2"/>
		<constant name="SCE_T3_S_STRING" type="int" value="9"/>
		<constant name="SCE_T3_USER1" type="int" value="17"/>
		<constant name="SCE_T3_USER2" type="int" value="18"/>
		<constant name="SCE_T3_USER3" type="int" value="19"/>
		<constant name="SCE_T3_X_DEFAULT" type="int" value="1"/>
		<constant name="SCE_T3_X_STRING" type="int" value="11"/>
		<constant name="SCE_TCL_BLOCK_COMMENT" type="int" value="21"/>
		<constant name="SCE_TCL_COMMENT" type="int" value="1"/>
		<constant name="SCE_TCL_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_TCL_COMMENT_BOX" type="int" value="20"/>
		<constant name="SCE_TCL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_TCL_EXPAND" type="int" value="11"/>
		<constant name="SCE_TCL_IDENTIFIER" type="int" value="7"/>
		<constant name="SCE_TCL_IN_QUOTE" type="int" value="5"/>
		<constant name="SCE_TCL_MODIFIER" type="int" value="10"/>
		<constant name="SCE_TCL_NUMBER" type="int" value="3"/>
		<constant name="SCE_TCL_OPERATOR" type="int" value="6"/>
		<constant name="SCE_TCL_SUBSTITUTION" type="int" value="8"/>
		<constant name="SCE_TCL_SUB_BRACE" type="int" value="9"/>
		<constant name="SCE_TCL_WORD" type="int" value="12"/>
		<constant name="SCE_TCL_WORD2" type="int" value="13"/>
		<constant name="SCE_TCL_WORD3" type="int" value="14"/>
		<constant name="SCE_TCL_WORD4" type="int" value="15"/>
		<constant name="SCE_TCL_WORD5" type="int" value="16"/>
		<constant name="SCE_TCL_WORD6" type="int" value="17"/>
		<constant name="SCE_TCL_WORD7" type="int" value="18"/>
		<constant name="SCE_TCL_WORD8" type="int" value="19"/>
		<constant name="SCE_TCL_WORD_IN_QUOTE" type="int" value="4"/>
		<constant name="SCE_TEX_COMMAND" type="int" value="4"/>
		<constant name="SCE_TEX_DEFAULT" type="int" value="0"/>
		<constant name="SCE_TEX_GROUP" type="int" value="2"/>
		<constant name="SCE_TEX_SPECIAL" type="int" value="1"/>
		<constant name="SCE_TEX_SYMBOL" type="int" value="3"/>
		<constant name="SCE_TEX_TEXT" type="int" value="5"/>
		<constant name="SCE_TXT2TAGS_BLOCKQUOTE" type="int" value="15"/>
		<constant name="SCE_TXT2TAGS_CODE" type="int" value="19"/>
		<constant name="SCE_TXT2TAGS_CODE2" type="int" value="20"/>
		<constant name="SCE_TXT2TAGS_CODEBK" type="int" value="21"/>
		<constant name="SCE_TXT2TAGS_COMMENT" type="int" value="22"/>
		<constant name="SCE_TXT2TAGS_DEFAULT" type="int" value="0"/>
		<constant name="SCE_TXT2TAGS_EM1" type="int" value="4"/>
		<constant name="SCE_TXT2TAGS_EM2" type="int" value="5"/>
		<constant name="SCE_TXT2TAGS_HEADER1" type="int" value="6"/>
		<constant name="SCE_TXT2TAGS_HEADER2" type="int" value="7"/>
		<constant name="SCE_TXT2TAGS_HEADER3" type="int" value="8"/>
		<constant name="SCE_TXT2TAGS_HEADER4" type="int" value="9"/>
		<constant name="SCE_TXT2TAGS_HEADER5" type="int" value="10"/>
		<constant name="SCE_TXT2TAGS_HEADER6" type="int" value="11"/>
		<constant name="SCE_TXT2TAGS_HRULE" type="int" value="17"/>
		<constant name="SCE_TXT2TAGS_LINE_BEGIN" type="int" value="1"/>
		<constant name="SCE_TXT2TAGS_LINK" type="int" value="18"/>
		<constant name="SCE_TXT2TAGS_OLIST_ITEM" type="int" value="14"/>
		<constant name="SCE_TXT2TAGS_OPTION" type="int" value="23"/>
		<constant name="SCE_TXT2TAGS_POSTPROC" type="int" value="25"/>
		<constant name="SCE_TXT2TAGS_PRECHAR" type="int" value="12"/>
		<constant name="SCE_TXT2TAGS_PREPROC" type="int" value="24"/>
		<constant name="SCE_TXT2TAGS_STRIKEOUT" type="int" value="16"/>
		<constant name="SCE_TXT2TAGS_STRONG1" type="int" value="2"/>
		<constant name="SCE_TXT2TAGS_STRONG2" type="int" value="3"/>
		<constant name="SCE_TXT2TAGS_ULIST_ITEM" type="int" value="13"/>
		<constant name="SCE_VHDL_ATTRIBUTE" type="int" value="10"/>
		<constant name="SCE_VHDL_COMMENT" type="int" value="1"/>
		<constant name="SCE_VHDL_COMMENTLINEBANG" type="int" value="2"/>
		<constant name="SCE_VHDL_DEFAULT" type="int" value="0"/>
		<constant name="SCE_VHDL_IDENTIFIER" type="int" value="6"/>
		<constant name="SCE_VHDL_KEYWORD" type="int" value="8"/>
		<constant name="SCE_VHDL_NUMBER" type="int" value="3"/>
		<constant name="SCE_VHDL_OPERATOR" type="int" value="5"/>
		<constant name="SCE_VHDL_STDFUNCTION" type="int" value="11"/>
		<constant name="SCE_VHDL_STDOPERATOR" type="int" value="9"/>
		<constant name="SCE_VHDL_STDPACKAGE" type="int" value="12"/>
		<constant name="SCE_VHDL_STDTYPE" type="int" value="13"/>
		<constant name="SCE_VHDL_STRING" type="int" value="4"/>
		<constant name="SCE_VHDL_STRINGEOL" type="int" value="7"/>
		<constant name="SCE_VHDL_USERWORD" type="int" value="14"/>
		<constant name="SCE_V_COMMENT" type="int" value="1"/>
		<constant name="SCE_V_COMMENTLINE" type="int" value="2"/>
		<constant name="SCE_V_COMMENTLINEBANG" type="int" value="3"/>
		<constant name="SCE_V_DEFAULT" type="int" value="0"/>
		<constant name="SCE_V_IDENTIFIER" type="int" value="11"/>
		<constant name="SCE_V_NUMBER" type="int" value="4"/>
		<constant name="SCE_V_OPERATOR" type="int" value="10"/>
		<constant name="SCE_V_PREPROCESSOR" type="int" value="9"/>
		<constant name="SCE_V_STRING" type="int" value="6"/>
		<constant name="SCE_V_STRINGEOL" type="int" value="12"/>
		<constant name="SCE_V_USER" type="int" value="19"/>
		<constant name="SCE_V_WORD" type="int" value="5"/>
		<constant name="SCE_V_WORD2" type="int" value="7"/>
		<constant name="SCE_V_WORD3" type="int" value="8"/>
		<constant name="SCE_YAML_COMMENT" type="int" value="1"/>
		<constant name="SCE_YAML_DEFAULT" type="int" value="0"/>
		<constant name="SCE_YAML_DOCUMENT" type="int" value="6"/>
		<constant name="SCE_YAML_ERROR" type="int" value="8"/>
		<constant name="SCE_YAML_IDENTIFIER" type="int" value="2"/>
		<constant name="SCE_YAML_KEYWORD" type="int" value="3"/>
		<constant name="SCE_YAML_NUMBER" type="int" value="4"/>
		<constant name="SCE_YAML_OPERATOR" type="int" value="9"/>
		<constant name="SCE_YAML_REFERENCE" type="int" value="5"/>
		<constant name="SCE_YAML_TEXT" type="int" value="7"/>
		<constant name="SCFIND_MATCHCASE" type="int" value="4"/>
		<constant name="SCFIND_POSIX" type="int" value="4194304"/>
		<constant name="SCFIND_REGEXP" type="int" value="2097152"/>
		<constant name="SCFIND_WHOLEWORD" type="int" value="2"/>
		<constant name="SCFIND_WORDSTART" type="int" value="1048576"/>
		<constant name="SCINTILLA_NOTIFY" type="char*" value="sci-notify"/>
		<constant name="SCI_ADDREFDOCUMENT" type="int" value="2376"/>
		<constant name="SCI_ADDSELECTION" type="int" value="2573"/>
		<constant name="SCI_ADDSTYLEDTEXT" type="int" value="2002"/>
		<constant name="SCI_ADDTEXT" type="int" value="2001"/>
		<constant name="SCI_ADDUNDOACTION" type="int" value="2560"/>
		<constant name="SCI_ALLOCATE" type="int" value="2446"/>
		<constant name="SCI_ANNOTATIONCLEARALL" type="int" value="2547"/>
		<constant name="SCI_ANNOTATIONGETLINES" type="int" value="2546"/>
		<constant name="SCI_ANNOTATIONGETSTYLE" type="int" value="2543"/>
		<constant name="SCI_ANNOTATIONGETSTYLEOFFSET" type="int" value="2551"/>
		<constant name="SCI_ANNOTATIONGETSTYLES" type="int" value="2545"/>
		<constant name="SCI_ANNOTATIONGETTEXT" type="int" value="2541"/>
		<constant name="SCI_ANNOTATIONGETVISIBLE" type="int" value="2549"/>
		<constant name="SCI_ANNOTATIONSETSTYLE" type="int" value="2542"/>
		<constant name="SCI_ANNOTATIONSETSTYLEOFFSET" type="int" value="2550"/>
		<constant name="SCI_ANNOTATIONSETSTYLES" type="int" value="2544"/>
		<constant name="SCI_ANNOTATIONSETTEXT" type="int" value="2540"/>
		<constant name="SCI_ANNOTATIONSETVISIBLE" type="int" value="2548"/>
		<constant name="SCI_APPENDTEXT" type="int" value="2282"/>
		<constant name="SCI_ASSIGNCMDKEY" type="int" value="2070"/>
		<constant name="SCI_AUTOCACTIVE" type="int" value="2102"/>
		<constant name="SCI_AUTOCCANCEL" type="int" value="2101"/>
		<constant name="SCI_AUTOCCOMPLETE" type="int" value="2104"/>
		<constant name="SCI_AUTOCGETAUTOHIDE" type="int" value="2119"/>
		<constant name="SCI_AUTOCGETCANCELATSTART" type="int" value="2111"/>
		<constant name="SCI_AUTOCGETCHOOSESINGLE" type="int" value="2114"/>
		<constant name="SCI_AUTOCGETCURRENT" type="int" value="2445"/>
		<constant name="SCI_AUTOCGETCURRENTTEXT" type="int" value="2610"/>
		<constant name="SCI_AUTOCGETDROPRESTOFWORD" type="int" value="2271"/>
		<constant name="SCI_AUTOCGETIGNORECASE" type="int" value="2116"/>
		<constant name="SCI_AUTOCGETMAXHEIGHT" type="int" value="2211"/>
		<constant name="SCI_AUTOCGETMAXWIDTH" type="int" value="2209"/>
		<constant name="SCI_AUTOCGETSEPARATOR" type="int" value="2107"/>
		<constant name="SCI_AUTOCGETTYPESEPARATOR" type="int" value="2285"/>
		<constant name="SCI_AUTOCPOSSTART" type="int" value="2103"/>
		<constant name="SCI_AUTOCSELECT" type="int" value="2108"/>
		<constant name="SCI_AUTOCSETAUTOHIDE" type="int" value="2118"/>
		<constant name="SCI_AUTOCSETCANCELATSTART" type="int" value="2110"/>
		<constant name="SCI_AUTOCSETCHOOSESINGLE" type="int" value="2113"/>
		<constant name="SCI_AUTOCSETDROPRESTOFWORD" type="int" value="2270"/>
		<constant name="SCI_AUTOCSETFILLUPS" type="int" value="2112"/>
		<constant name="SCI_AUTOCSETIGNORECASE" type="int" value="2115"/>
		<constant name="SCI_AUTOCSETMAXHEIGHT" type="int" value="2210"/>
		<constant name="SCI_AUTOCSETMAXWIDTH" type="int" value="2208"/>
		<constant name="SCI_AUTOCSETSEPARATOR" type="int" value="2106"/>
		<constant name="SCI_AUTOCSETTYPESEPARATOR" type="int" value="2286"/>
		<constant name="SCI_AUTOCSHOW" type="int" value="2100"/>
		<constant name="SCI_AUTOCSTOPS" type="int" value="2105"/>
		<constant name="SCI_BACKTAB" type="int" value="2328"/>
		<constant name="SCI_BEGINUNDOACTION" type="int" value="2078"/>
		<constant name="SCI_BRACEBADLIGHT" type="int" value="2352"/>
		<constant name="SCI_BRACEHIGHLIGHT" type="int" value="2351"/>
		<constant name="SCI_BRACEMATCH" type="int" value="2353"/>
		<constant name="SCI_CALLTIPACTIVE" type="int" value="2202"/>
		<constant name="SCI_CALLTIPCANCEL" type="int" value="2201"/>
		<constant name="SCI_CALLTIPPOSSTART" type="int" value="2203"/>
		<constant name="SCI_CALLTIPSETBACK" type="int" value="2205"/>
		<constant name="SCI_CALLTIPSETFORE" type="int" value="2206"/>
		<constant name="SCI_CALLTIPSETFOREHLT" type="int" value="2207"/>
		<constant name="SCI_CALLTIPSETHLT" type="int" value="2204"/>
		<constant name="SCI_CALLTIPSHOW" type="int" value="2200"/>
		<constant name="SCI_CALLTIPUSESTYLE" type="int" value="2212"/>
		<constant name="SCI_CANCEL" type="int" value="2325"/>
		<constant name="SCI_CANPASTE" type="int" value="2173"/>
		<constant name="SCI_CANREDO" type="int" value="2016"/>
		<constant name="SCI_CANUNDO" type="int" value="2174"/>
		<constant name="SCI_CHANGELEXERSTATE" type="int" value="2617"/>
		<constant name="SCI_CHARLEFT" type="int" value="2304"/>
		<constant name="SCI_CHARLEFTEXTEND" type="int" value="2305"/>
		<constant name="SCI_CHARLEFTRECTEXTEND" type="int" value="2428"/>
		<constant name="SCI_CHARPOSITIONFROMPOINT" type="int" value="2561"/>
		<constant name="SCI_CHARPOSITIONFROMPOINTCLOSE" type="int" value="2562"/>
		<constant name="SCI_CHARRIGHT" type="int" value="2306"/>
		<constant name="SCI_CHARRIGHTEXTEND" type="int" value="2307"/>
		<constant name="SCI_CHARRIGHTRECTEXTEND" type="int" value="2429"/>
		<constant name="SCI_CHOOSECARETX" type="int" value="2399"/>
		<constant name="SCI_CLEAR" type="int" value="2180"/>
		<constant name="SCI_CLEARALL" type="int" value="2004"/>
		<constant name="SCI_CLEARALLCMDKEYS" type="int" value="2072"/>
		<constant name="SCI_CLEARCMDKEY" type="int" value="2071"/>
		<constant name="SCI_CLEARDOCUMENTSTYLE" type="int" value="2005"/>
		<constant name="SCI_CLEARREGISTEREDIMAGES" type="int" value="2408"/>
		<constant name="SCI_CLEARSELECTIONS" type="int" value="2571"/>
		<constant name="SCI_COLOURISE" type="int" value="4003"/>
		<constant name="SCI_CONTRACTEDFOLDNEXT" type="int" value="2618"/>
		<constant name="SCI_CONVERTEOLS" type="int" value="2029"/>
		<constant name="SCI_COPY" type="int" value="2178"/>
		<constant name="SCI_COPYALLOWLINE" type="int" value="2519"/>
		<constant name="SCI_COPYRANGE" type="int" value="2419"/>
		<constant name="SCI_COPYTEXT" type="int" value="2420"/>
		<constant name="SCI_CREATEDOCUMENT" type="int" value="2375"/>
		<constant name="SCI_CUT" type="int" value="2177"/>
		<constant name="SCI_DELETEBACK" type="int" value="2326"/>
		<constant name="SCI_DELETEBACKNOTLINE" type="int" value="2344"/>
		<constant name="SCI_DELLINELEFT" type="int" value="2395"/>
		<constant name="SCI_DELLINERIGHT" type="int" value="2396"/>
		<constant name="SCI_DELWORDLEFT" type="int" value="2335"/>
		<constant name="SCI_DELWORDRIGHT" type="int" value="2336"/>
		<constant name="SCI_DELWORDRIGHTEND" type="int" value="2518"/>
		<constant name="SCI_DESCRIBEKEYWORDSETS" type="int" value="4017"/>
		<constant name="SCI_DESCRIBEPROPERTY" type="int" value="4016"/>
		<constant name="SCI_DOCLINEFROMVISIBLE" type="int" value="2221"/>
		<constant name="SCI_DOCUMENTEND" type="int" value="2318"/>
		<constant name="SCI_DOCUMENTENDEXTEND" type="int" value="2319"/>
		<constant name="SCI_DOCUMENTSTART" type="int" value="2316"/>
		<constant name="SCI_DOCUMENTSTARTEXTEND" type="int" value="2317"/>
		<constant name="SCI_EDITTOGGLEOVERTYPE" type="int" value="2324"/>
		<constant name="SCI_EMPTYUNDOBUFFER" type="int" value="2175"/>
		<constant name="SCI_ENCODEDFROMUTF8" type="int" value="2449"/>
		<constant name="SCI_ENDUNDOACTION" type="int" value="2079"/>
		<constant name="SCI_ENSUREVISIBLE" type="int" value="2232"/>
		<constant name="SCI_ENSUREVISIBLEENFORCEPOLICY" type="int" value="2234"/>
		<constant name="SCI_FINDCOLUMN" type="int" value="2456"/>
		<constant name="SCI_FINDTEXT" type="int" value="2150"/>
		<constant name="SCI_FORMATRANGE" type="int" value="2151"/>
		<constant name="SCI_FORMFEED" type="int" value="2330"/>
		<constant name="SCI_GETADDITIONALCARETFORE" type="int" value="2605"/>
		<constant name="SCI_GETADDITIONALCARETSBLINK" type="int" value="2568"/>
		<constant name="SCI_GETADDITIONALCARETSVISIBLE" type="int" value="2609"/>
		<constant name="SCI_GETADDITIONALSELALPHA" type="int" value="2603"/>
		<constant name="SCI_GETADDITIONALSELECTIONTYPING" type="int" value="2566"/>
		<constant name="SCI_GETANCHOR" type="int" value="2009"/>
		<constant name="SCI_GETBACKSPACEUNINDENTS" type="int" value="2263"/>
		<constant name="SCI_GETBUFFEREDDRAW" type="int" value="2034"/>
		<constant name="SCI_GETCARETFORE" type="int" value="2138"/>
		<constant name="SCI_GETCARETLINEBACK" type="int" value="2097"/>
		<constant name="SCI_GETCARETLINEBACKALPHA" type="int" value="2471"/>
		<constant name="SCI_GETCARETLINEVISIBLE" type="int" value="2095"/>
		<constant name="SCI_GETCARETPERIOD" type="int" value="2075"/>
		<constant name="SCI_GETCARETSTICKY" type="int" value="2457"/>
		<constant name="SCI_GETCARETSTYLE" type="int" value="2513"/>
		<constant name="SCI_GETCARETWIDTH" type="int" value="2189"/>
		<constant name="SCI_GETCHARACTERPOINTER" type="int" value="2520"/>
		<constant name="SCI_GETCHARAT" type="int" value="2007"/>
		<constant name="SCI_GETCODEPAGE" type="int" value="2137"/>
		<constant name="SCI_GETCOLUMN" type="int" value="2129"/>
		<constant name="SCI_GETCONTROLCHARSYMBOL" type="int" value="2389"/>
		<constant name="SCI_GETCURLINE" type="int" value="2027"/>
		<constant name="SCI_GETCURRENTPOS" type="int" value="2008"/>
		<constant name="SCI_GETCURSOR" type="int" value="2387"/>
		<constant name="SCI_GETDIRECTFUNCTION" type="int" value="2184"/>
		<constant name="SCI_GETDIRECTPOINTER" type="int" value="2185"/>
		<constant name="SCI_GETDOCPOINTER" type="int" value="2357"/>
		<constant name="SCI_GETEDGECOLOUR" type="int" value="2364"/>
		<constant name="SCI_GETEDGECOLUMN" type="int" value="2360"/>
		<constant name="SCI_GETEDGEMODE" type="int" value="2362"/>
		<constant name="SCI_GETENDATLASTLINE" type="int" value="2278"/>
		<constant name="SCI_GETENDSTYLED" type="int" value="2028"/>
		<constant name="SCI_GETEOLMODE" type="int" value="2030"/>
		<constant name="SCI_GETEXTRAASCENT" type="int" value="2526"/>
		<constant name="SCI_GETEXTRADESCENT" type="int" value="2528"/>
		<constant name="SCI_GETFIRSTVISIBLELINE" type="int" value="2152"/>
		<constant name="SCI_GETFOCUS" type="int" value="2381"/>
		<constant name="SCI_GETFOLDEXPANDED" type="int" value="2230"/>
		<constant name="SCI_GETFOLDLEVEL" type="int" value="2223"/>
		<constant name="SCI_GETFOLDPARENT" type="int" value="2225"/>
		<constant name="SCI_GETFONTQUALITY" type="int" value="2612"/>
		<constant name="SCI_GETHIGHLIGHTGUIDE" type="int" value="2135"/>
		<constant name="SCI_GETHOTSPOTACTIVEBACK" type="int" value="2495"/>
		<constant name="SCI_GETHOTSPOTACTIVEFORE" type="int" value="2494"/>
		<constant name="SCI_GETHOTSPOTACTIVEUNDERLINE" type="int" value="2496"/>
		<constant name="SCI_GETHOTSPOTSINGLELINE" type="int" value="2497"/>
		<constant name="SCI_GETHSCROLLBAR" type="int" value="2131"/>
		<constant name="SCI_GETINDENT" type="int" value="2123"/>
		<constant name="SCI_GETINDENTATIONGUIDES" type="int" value="2133"/>
		<constant name="SCI_GETINDICATORCURRENT" type="int" value="2501"/>
		<constant name="SCI_GETINDICATORVALUE" type="int" value="2503"/>
		<constant name="SCI_GETKEYSUNICODE" type="int" value="2522"/>
		<constant name="SCI_GETLASTCHILD" type="int" value="2224"/>
		<constant name="SCI_GETLAYOUTCACHE" type="int" value="2273"/>
		<constant name="SCI_GETLENGTH" type="int" value="2006"/>
		<constant name="SCI_GETLEXER" type="int" value="4002"/>
		<constant name="SCI_GETLEXERLANGUAGE" type="int" value="4012"/>
		<constant name="SCI_GETLINE" type="int" value="2153"/>
		<constant name="SCI_GETLINECOUNT" type="int" value="2154"/>
		<constant name="SCI_GETLINEENDPOSITION" type="int" value="2136"/>
		<constant name="SCI_GETLINEINDENTATION" type="int" value="2127"/>
		<constant name="SCI_GETLINEINDENTPOSITION" type="int" value="2128"/>
		<constant name="SCI_GETLINESELENDPOSITION" type="int" value="2425"/>
		<constant name="SCI_GETLINESELSTARTPOSITION" type="int" value="2424"/>
		<constant name="SCI_GETLINESTATE" type="int" value="2093"/>
		<constant name="SCI_GETLINEVISIBLE" type="int" value="2228"/>
		<constant name="SCI_GETMAINSELECTION" type="int" value="2575"/>
		<constant name="SCI_GETMARGINCURSORN" type="int" value="2249"/>
		<constant name="SCI_GETMARGINLEFT" type="int" value="2156"/>
		<constant name="SCI_GETMARGINMASKN" type="int" value="2245"/>
		<constant name="SCI_GETMARGINRIGHT" type="int" value="2158"/>
		<constant name="SCI_GETMARGINSENSITIVEN" type="int" value="2247"/>
		<constant name="SCI_GETMARGINTYPEN" type="int" value="2241"/>
		<constant name="SCI_GETMARGINWIDTHN" type="int" value="2243"/>
		<constant name="SCI_GETMAXLINESTATE" type="int" value="2094"/>
		<constant name="SCI_GETMODEVENTMASK" type="int" value="2378"/>
		<constant name="SCI_GETMODIFY" type="int" value="2159"/>
		<constant name="SCI_GETMOUSEDOWNCAPTURES" type="int" value="2385"/>
		<constant name="SCI_GETMOUSEDWELLTIME" type="int" value="2265"/>
		<constant name="SCI_GETMULTIPASTE" type="int" value="2615"/>
		<constant name="SCI_GETMULTIPLESELECTION" type="int" value="2564"/>
		<constant name="SCI_GETOVERTYPE" type="int" value="2187"/>
		<constant name="SCI_GETPASTECONVERTENDINGS" type="int" value="2468"/>
		<constant name="SCI_GETPOSITIONCACHE" type="int" value="2515"/>
		<constant name="SCI_GETPRINTCOLOURMODE" type="int" value="2149"/>
		<constant name="SCI_GETPRINTMAGNIFICATION" type="int" value="2147"/>
		<constant name="SCI_GETPRINTWRAPMODE" type="int" value="2407"/>
		<constant name="SCI_GETPROPERTY" type="int" value="4008"/>
		<constant name="SCI_GETPROPERTYEXPANDED" type="int" value="4009"/>
		<constant name="SCI_GETPROPERTYINT" type="int" value="4010"/>
		<constant name="SCI_GETREADONLY" type="int" value="2140"/>
		<constant name="SCI_GETRECTANGULARSELECTIONANCHOR" type="int" value="2591"/>
		<constant name="SCI_GETRECTANGULARSELECTIONANCHORVIRTUALSPACE" type="int" value="2595"/>
		<constant name="SCI_GETRECTANGULARSELECTIONCARET" type="int" value="2589"/>
		<constant name="SCI_GETRECTANGULARSELECTIONCARETVIRTUALSPACE" type="int" value="2593"/>
		<constant name="SCI_GETRECTANGULARSELECTIONMODIFIER" type="int" value="2599"/>
		<constant name="SCI_GETSCROLLWIDTH" type="int" value="2275"/>
		<constant name="SCI_GETSCROLLWIDTHTRACKING" type="int" value="2517"/>
		<constant name="SCI_GETSEARCHFLAGS" type="int" value="2199"/>
		<constant name="SCI_GETSELALPHA" type="int" value="2477"/>
		<constant name="SCI_GETSELECTIONEND" type="int" value="2145"/>
		<constant name="SCI_GETSELECTIONMODE" type="int" value="2423"/>
		<constant name="SCI_GETSELECTIONNANCHOR" type="int" value="2579"/>
		<constant name="SCI_GETSELECTIONNANCHORVIRTUALSPACE" type="int" value="2583"/>
		<constant name="SCI_GETSELECTIONNCARET" type="int" value="2577"/>
		<constant name="SCI_GETSELECTIONNCARETVIRTUALSPACE" type="int" value="2581"/>
		<constant name="SCI_GETSELECTIONNEND" type="int" value="2587"/>
		<constant name="SCI_GETSELECTIONNSTART" type="int" value="2585"/>
		<constant name="SCI_GETSELECTIONS" type="int" value="2570"/>
		<constant name="SCI_GETSELECTIONSTART" type="int" value="2143"/>
		<constant name="SCI_GETSELEOLFILLED" type="int" value="2479"/>
		<constant name="SCI_GETSELTEXT" type="int" value="2161"/>
		<constant name="SCI_GETSTATUS" type="int" value="2383"/>
		<constant name="SCI_GETSTYLEAT" type="int" value="2010"/>
		<constant name="SCI_GETSTYLEBITS" type="int" value="2091"/>
		<constant name="SCI_GETSTYLEBITSNEEDED" type="int" value="4011"/>
		<constant name="SCI_GETSTYLEDTEXT" type="int" value="2015"/>
		<constant name="SCI_GETTABINDENTS" type="int" value="2261"/>
		<constant name="SCI_GETTABWIDTH" type="int" value="2121"/>
		<constant name="SCI_GETTAG" type="int" value="2616"/>
		<constant name="SCI_GETTARGETEND" type="int" value="2193"/>
		<constant name="SCI_GETTARGETSTART" type="int" value="2191"/>
		<constant name="SCI_GETTEXT" type="int" value="2182"/>
		<constant name="SCI_GETTEXTLENGTH" type="int" value="2183"/>
		<constant name="SCI_GETTEXTRANGE" type="int" value="2162"/>
		<constant name="SCI_GETTWOPHASEDRAW" type="int" value="2283"/>
		<constant name="SCI_GETUNDOCOLLECTION" type="int" value="2019"/>
		<constant name="SCI_GETUSEPALETTE" type="int" value="2139"/>
		<constant name="SCI_GETUSETABS" type="int" value="2125"/>
		<constant name="SCI_GETVIEWEOL" type="int" value="2355"/>
		<constant name="SCI_GETVIEWWS" type="int" value="2020"/>
		<constant name="SCI_GETVIRTUALSPACEOPTIONS" type="int" value="2597"/>
		<constant name="SCI_GETVSCROLLBAR" type="int" value="2281"/>
		<constant name="SCI_GETWHITESPACESIZE" type="int" value="2087"/>
		<constant name="SCI_GETWRAPINDENTMODE" type="int" value="2473"/>
		<constant name="SCI_GETWRAPMODE" type="int" value="2269"/>
		<constant name="SCI_GETWRAPSTARTINDENT" type="int" value="2465"/>
		<constant name="SCI_GETWRAPVISUALFLAGS" type="int" value="2461"/>
		<constant name="SCI_GETWRAPVISUALFLAGSLOCATION" type="int" value="2463"/>
		<constant name="SCI_GETXOFFSET" type="int" value="2398"/>
		<constant name="SCI_GETZOOM" type="int" value="2374"/>
		<constant name="SCI_GOTOLINE" type="int" value="2024"/>
		<constant name="SCI_GOTOPOS" type="int" value="2025"/>
		<constant name="SCI_GRABFOCUS" type="int" value="2400"/>
		<constant name="SCI_HIDELINES" type="int" value="2227"/>
		<constant name="SCI_HIDESELECTION" type="int" value="2163"/>
		<constant name="SCI_HOME" type="int" value="2312"/>
		<constant name="SCI_HOMEDISPLAY" type="int" value="2345"/>
		<constant name="SCI_HOMEDISPLAYEXTEND" type="int" value="2346"/>
		<constant name="SCI_HOMEEXTEND" type="int" value="2313"/>
		<constant name="SCI_HOMERECTEXTEND" type="int" value="2430"/>
		<constant name="SCI_HOMEWRAP" type="int" value="2349"/>
		<constant name="SCI_HOMEWRAPEXTEND" type="int" value="2450"/>
		<constant name="SCI_INDICATORALLONFOR" type="int" value="2506"/>
		<constant name="SCI_INDICATORCLEARRANGE" type="int" value="2505"/>
		<constant name="SCI_INDICATOREND" type="int" value="2509"/>
		<constant name="SCI_INDICATORFILLRANGE" type="int" value="2504"/>
		<constant name="SCI_INDICATORSTART" type="int" value="2508"/>
		<constant name="SCI_INDICATORVALUEAT" type="int" value="2507"/>
		<constant name="SCI_INDICGETALPHA" type="int" value="2524"/>
		<constant name="SCI_INDICGETFORE" type="int" value="2083"/>
		<constant name="SCI_INDICGETSTYLE" type="int" value="2081"/>
		<constant name="SCI_INDICGETUNDER" type="int" value="2511"/>
		<constant name="SCI_INDICSETALPHA" type="int" value="2523"/>
		<constant name="SCI_INDICSETFORE" type="int" value="2082"/>
		<constant name="SCI_INDICSETSTYLE" type="int" value="2080"/>
		<constant name="SCI_INDICSETUNDER" type="int" value="2510"/>
		<constant name="SCI_INSERTTEXT" type="int" value="2003"/>
		<constant name="SCI_LEXER_START" type="int" value="4000"/>
		<constant name="SCI_LINECOPY" type="int" value="2455"/>
		<constant name="SCI_LINECUT" type="int" value="2337"/>
		<constant name="SCI_LINEDELETE" type="int" value="2338"/>
		<constant name="SCI_LINEDOWN" type="int" value="2300"/>
		<constant name="SCI_LINEDOWNEXTEND" type="int" value="2301"/>
		<constant name="SCI_LINEDOWNRECTEXTEND" type="int" value="2426"/>
		<constant name="SCI_LINEDUPLICATE" type="int" value="2404"/>
		<constant name="SCI_LINEEND" type="int" value="2314"/>
		<constant name="SCI_LINEENDDISPLAY" type="int" value="2347"/>
		<constant name="SCI_LINEENDDISPLAYEXTEND" type="int" value="2348"/>
		<constant name="SCI_LINEENDEXTEND" type="int" value="2315"/>
		<constant name="SCI_LINEENDRECTEXTEND" type="int" value="2432"/>
		<constant name="SCI_LINEENDWRAP" type="int" value="2451"/>
		<constant name="SCI_LINEENDWRAPEXTEND" type="int" value="2452"/>
		<constant name="SCI_LINEFROMPOSITION" type="int" value="2166"/>
		<constant name="SCI_LINELENGTH" type="int" value="2350"/>
		<constant name="SCI_LINESCROLL" type="int" value="2168"/>
		<constant name="SCI_LINESCROLLDOWN" type="int" value="2342"/>
		<constant name="SCI_LINESCROLLUP" type="int" value="2343"/>
		<constant name="SCI_LINESJOIN" type="int" value="2288"/>
		<constant name="SCI_LINESONSCREEN" type="int" value="2370"/>
		<constant name="SCI_LINESSPLIT" type="int" value="2289"/>
		<constant name="SCI_LINETRANSPOSE" type="int" value="2339"/>
		<constant name="SCI_LINEUP" type="int" value="2302"/>
		<constant name="SCI_LINEUPEXTEND" type="int" value="2303"/>
		<constant name="SCI_LINEUPRECTEXTEND" type="int" value="2427"/>
		<constant name="SCI_LOADLEXERLIBRARY" type="int" value="4007"/>
		<constant name="SCI_LOWERCASE" type="int" value="2340"/>
		<constant name="SCI_MARGINGETSTYLE" type="int" value="2533"/>
		<constant name="SCI_MARGINGETSTYLEOFFSET" type="int" value="2538"/>
		<constant name="SCI_MARGINGETSTYLES" type="int" value="2535"/>
		<constant name="SCI_MARGINGETTEXT" type="int" value="2531"/>
		<constant name="SCI_MARGINSETSTYLE" type="int" value="2532"/>
		<constant name="SCI_MARGINSETSTYLEOFFSET" type="int" value="2537"/>
		<constant name="SCI_MARGINSETSTYLES" type="int" value="2534"/>
		<constant name="SCI_MARGINSETTEXT" type="int" value="2530"/>
		<constant name="SCI_MARGINTEXTCLEARALL" type="int" value="2536"/>
		<constant name="SCI_MARKERADD" type="int" value="2043"/>
		<constant name="SCI_MARKERADDSET" type="int" value="2466"/>
		<constant name="SCI_MARKERDEFINE" type="int" value="2040"/>
		<constant name="SCI_MARKERDEFINEPIXMAP" type="int" value="2049"/>
		<constant name="SCI_MARKERDELETE" type="int" value="2044"/>
		<constant name="SCI_MARKERDELETEALL" type="int" value="2045"/>
		<constant name="SCI_MARKERDELETEHANDLE" type="int" value="2018"/>
		<constant name="SCI_MARKERGET" type="int" value="2046"/>
		<constant name="SCI_MARKERLINEFROMHANDLE" type="int" value="2017"/>
		<constant name="SCI_MARKERNEXT" type="int" value="2047"/>
		<constant name="SCI_MARKERPREVIOUS" type="int" value="2048"/>
		<constant name="SCI_MARKERSETALPHA" type="int" value="2476"/>
		<constant name="SCI_MARKERSETBACK" type="int" value="2042"/>
		<constant name="SCI_MARKERSETFORE" type="int" value="2041"/>
		<constant name="SCI_MARKERSYMBOLDEFINED" type="int" value="2529"/>
		<constant name="SCI_MOVECARETINSIDEVIEW" type="int" value="2401"/>
		<constant name="SCI_NEWLINE" type="int" value="2329"/>
		<constant name="SCI_NULL" type="int" value="2172"/>
		<constant name="SCI_OPTIONAL_START" type="int" value="3000"/>
		<constant name="SCI_PAGEDOWN" type="int" value="2322"/>
		<constant name="SCI_PAGEDOWNEXTEND" type="int" value="2323"/>
		<constant name="SCI_PAGEDOWNRECTEXTEND" type="int" value="2434"/>
		<constant name="SCI_PAGEUP" type="int" value="2320"/>
		<constant name="SCI_PAGEUPEXTEND" type="int" value="2321"/>
		<constant name="SCI_PAGEUPRECTEXTEND" type="int" value="2433"/>
		<constant name="SCI_PARADOWN" type="int" value="2413"/>
		<constant name="SCI_PARADOWNEXTEND" type="int" value="2414"/>
		<constant name="SCI_PARAUP" type="int" value="2415"/>
		<constant name="SCI_PARAUPEXTEND" type="int" value="2416"/>
		<constant name="SCI_PASTE" type="int" value="2179"/>
		<constant name="SCI_POINTXFROMPOSITION" type="int" value="2164"/>
		<constant name="SCI_POINTYFROMPOSITION" type="int" value="2165"/>
		<constant name="SCI_POSITIONAFTER" type="int" value="2418"/>
		<constant name="SCI_POSITIONBEFORE" type="int" value="2417"/>
		<constant name="SCI_POSITIONFROMLINE" type="int" value="2167"/>
		<constant name="SCI_POSITIONFROMPOINT" type="int" value="2022"/>
		<constant name="SCI_POSITIONFROMPOINTCLOSE" type="int" value="2023"/>
		<constant name="SCI_PRIVATELEXERCALL" type="int" value="4013"/>
		<constant name="SCI_PROPERTYNAMES" type="int" value="4014"/>
		<constant name="SCI_PROPERTYTYPE" type="int" value="4015"/>
		<constant name="SCI_REDO" type="int" value="2011"/>
		<constant name="SCI_REGISTERIMAGE" type="int" value="2405"/>
		<constant name="SCI_RELEASEDOCUMENT" type="int" value="2377"/>
		<constant name="SCI_REPLACESEL" type="int" value="2170"/>
		<constant name="SCI_REPLACETARGET" type="int" value="2194"/>
		<constant name="SCI_REPLACETARGETRE" type="int" value="2195"/>
		<constant name="SCI_ROTATESELECTION" type="int" value="2606"/>
		<constant name="SCI_SCROLLCARET" type="int" value="2169"/>
		<constant name="SCI_SEARCHANCHOR" type="int" value="2366"/>
		<constant name="SCI_SEARCHINTARGET" type="int" value="2197"/>
		<constant name="SCI_SEARCHNEXT" type="int" value="2367"/>
		<constant name="SCI_SEARCHPREV" type="int" value="2368"/>
		<constant name="SCI_SELECTALL" type="int" value="2013"/>
		<constant name="SCI_SELECTIONDUPLICATE" type="int" value="2469"/>
		<constant name="SCI_SELECTIONISRECTANGLE" type="int" value="2372"/>
		<constant name="SCI_SETADDITIONALCARETFORE" type="int" value="2604"/>
		<constant name="SCI_SETADDITIONALCARETSBLINK" type="int" value="2567"/>
		<constant name="SCI_SETADDITIONALCARETSVISIBLE" type="int" value="2608"/>
		<constant name="SCI_SETADDITIONALSELALPHA" type="int" value="2602"/>
		<constant name="SCI_SETADDITIONALSELBACK" type="int" value="2601"/>
		<constant name="SCI_SETADDITIONALSELECTIONTYPING" type="int" value="2565"/>
		<constant name="SCI_SETADDITIONALSELFORE" type="int" value="2600"/>
		<constant name="SCI_SETANCHOR" type="int" value="2026"/>
		<constant name="SCI_SETBACKSPACEUNINDENTS" type="int" value="2262"/>
		<constant name="SCI_SETBUFFEREDDRAW" type="int" value="2035"/>
		<constant name="SCI_SETCARETFORE" type="int" value="2069"/>
		<constant name="SCI_SETCARETLINEBACK" type="int" value="2098"/>
		<constant name="SCI_SETCARETLINEBACKALPHA" type="int" value="2470"/>
		<constant name="SCI_SETCARETLINEVISIBLE" type="int" value="2096"/>
		<constant name="SCI_SETCARETPERIOD" type="int" value="2076"/>
		<constant name="SCI_SETCARETSTICKY" type="int" value="2458"/>
		<constant name="SCI_SETCARETSTYLE" type="int" value="2512"/>
		<constant name="SCI_SETCARETWIDTH" type="int" value="2188"/>
		<constant name="SCI_SETCHARSDEFAULT" type="int" value="2444"/>
		<constant name="SCI_SETCODEPAGE" type="int" value="2037"/>
		<constant name="SCI_SETCONTROLCHARSYMBOL" type="int" value="2388"/>
		<constant name="SCI_SETCURRENTPOS" type="int" value="2141"/>
		<constant name="SCI_SETCURSOR" type="int" value="2386"/>
		<constant name="SCI_SETDOCPOINTER" type="int" value="2358"/>
		<constant name="SCI_SETEDGECOLOUR" type="int" value="2365"/>
		<constant name="SCI_SETEDGECOLUMN" type="int" value="2361"/>
		<constant name="SCI_SETEDGEMODE" type="int" value="2363"/>
		<constant name="SCI_SETENDATLASTLINE" type="int" value="2277"/>
		<constant name="SCI_SETEOLMODE" type="int" value="2031"/>
		<constant name="SCI_SETEXTRAASCENT" type="int" value="2525"/>
		<constant name="SCI_SETEXTRADESCENT" type="int" value="2527"/>
		<constant name="SCI_SETFIRSTVISIBLELINE" type="int" value="2613"/>
		<constant name="SCI_SETFOCUS" type="int" value="2380"/>
		<constant name="SCI_SETFOLDEXPANDED" type="int" value="2229"/>
		<constant name="SCI_SETFOLDFLAGS" type="int" value="2233"/>
		<constant name="SCI_SETFOLDLEVEL" type="int" value="2222"/>
		<constant name="SCI_SETFOLDMARGINCOLOUR" type="int" value="2290"/>
		<constant name="SCI_SETFOLDMARGINHICOLOUR" type="int" value="2291"/>
		<constant name="SCI_SETFONTQUALITY" type="int" value="2611"/>
		<constant name="SCI_SETHIGHLIGHTGUIDE" type="int" value="2134"/>
		<constant name="SCI_SETHOTSPOTACTIVEBACK" type="int" value="2411"/>
		<constant name="SCI_SETHOTSPOTACTIVEFORE" type="int" value="2410"/>
		<constant name="SCI_SETHOTSPOTACTIVEUNDERLINE" type="int" value="2412"/>
		<constant name="SCI_SETHOTSPOTSINGLELINE" type="int" value="2421"/>
		<constant name="SCI_SETHSCROLLBAR" type="int" value="2130"/>
		<constant name="SCI_SETINDENT" type="int" value="2122"/>
		<constant name="SCI_SETINDENTATIONGUIDES" type="int" value="2132"/>
		<constant name="SCI_SETINDICATORCURRENT" type="int" value="2500"/>
		<constant name="SCI_SETINDICATORVALUE" type="int" value="2502"/>
		<constant name="SCI_SETKEYSUNICODE" type="int" value="2521"/>
		<constant name="SCI_SETKEYWORDS" type="int" value="4005"/>
		<constant name="SCI_SETLAYOUTCACHE" type="int" value="2272"/>
		<constant name="SCI_SETLENGTHFORENCODE" type="int" value="2448"/>
		<constant name="SCI_SETLEXER" type="int" value="4001"/>
		<constant name="SCI_SETLEXERLANGUAGE" type="int" value="4006"/>
		<constant name="SCI_SETLINEINDENTATION" type="int" value="2126"/>
		<constant name="SCI_SETLINESTATE" type="int" value="2092"/>
		<constant name="SCI_SETMAINSELECTION" type="int" value="2574"/>
		<constant name="SCI_SETMARGINCURSORN" type="int" value="2248"/>
		<constant name="SCI_SETMARGINLEFT" type="int" value="2155"/>
		<constant name="SCI_SETMARGINMASKN" type="int" value="2244"/>
		<constant name="SCI_SETMARGINRIGHT" type="int" value="2157"/>
		<constant name="SCI_SETMARGINSENSITIVEN" type="int" value="2246"/>
		<constant name="SCI_SETMARGINTYPEN" type="int" value="2240"/>
		<constant name="SCI_SETMARGINWIDTHN" type="int" value="2242"/>
		<constant name="SCI_SETMODEVENTMASK" type="int" value="2359"/>
		<constant name="SCI_SETMOUSEDOWNCAPTURES" type="int" value="2384"/>
		<constant name="SCI_SETMOUSEDWELLTIME" type="int" value="2264"/>
		<constant name="SCI_SETMULTIPASTE" type="int" value="2614"/>
		<constant name="SCI_SETMULTIPLESELECTION" type="int" value="2563"/>
		<constant name="SCI_SETOVERTYPE" type="int" value="2186"/>
		<constant name="SCI_SETPASTECONVERTENDINGS" type="int" value="2467"/>
		<constant name="SCI_SETPOSITIONCACHE" type="int" value="2514"/>
		<constant name="SCI_SETPRINTCOLOURMODE" type="int" value="2148"/>
		<constant name="SCI_SETPRINTMAGNIFICATION" type="int" value="2146"/>
		<constant name="SCI_SETPRINTWRAPMODE" type="int" value="2406"/>
		<constant name="SCI_SETPROPERTY" type="int" value="4004"/>
		<constant name="SCI_SETREADONLY" type="int" value="2171"/>
		<constant name="SCI_SETRECTANGULARSELECTIONANCHOR" type="int" value="2590"/>
		<constant name="SCI_SETRECTANGULARSELECTIONANCHORVIRTUALSPACE" type="int" value="2594"/>
		<constant name="SCI_SETRECTANGULARSELECTIONCARET" type="int" value="2588"/>
		<constant name="SCI_SETRECTANGULARSELECTIONCARETVIRTUALSPACE" type="int" value="2592"/>
		<constant name="SCI_SETRECTANGULARSELECTIONMODIFIER" type="int" value="2598"/>
		<constant name="SCI_SETSAVEPOINT" type="int" value="2014"/>
		<constant name="SCI_SETSCROLLWIDTH" type="int" value="2274"/>
		<constant name="SCI_SETSCROLLWIDTHTRACKING" type="int" value="2516"/>
		<constant name="SCI_SETSEARCHFLAGS" type="int" value="2198"/>
		<constant name="SCI_SETSEL" type="int" value="2160"/>
		<constant name="SCI_SETSELALPHA" type="int" value="2478"/>
		<constant name="SCI_SETSELBACK" type="int" value="2068"/>
		<constant name="SCI_SETSELECTION" type="int" value="2572"/>
		<constant name="SCI_SETSELECTIONEND" type="int" value="2144"/>
		<constant name="SCI_SETSELECTIONMODE" type="int" value="2422"/>
		<constant name="SCI_SETSELECTIONNANCHOR" type="int" value="2578"/>
		<constant name="SCI_SETSELECTIONNANCHORVIRTUALSPACE" type="int" value="2582"/>
		<constant name="SCI_SETSELECTIONNCARET" type="int" value="2576"/>
		<constant name="SCI_SETSELECTIONNCARETVIRTUALSPACE" type="int" value="2580"/>
		<constant name="SCI_SETSELECTIONNEND" type="int" value="2586"/>
		<constant name="SCI_SETSELECTIONNSTART" type="int" value="2584"/>
		<constant name="SCI_SETSELECTIONSTART" type="int" value="2142"/>
		<constant name="SCI_SETSELEOLFILLED" type="int" value="2480"/>
		<constant name="SCI_SETSELFORE" type="int" value="2067"/>
		<constant name="SCI_SETSTATUS" type="int" value="2382"/>
		<constant name="SCI_SETSTYLEBITS" type="int" value="2090"/>
		<constant name="SCI_SETSTYLING" type="int" value="2033"/>
		<constant name="SCI_SETSTYLINGEX" type="int" value="2073"/>
		<constant name="SCI_SETTABINDENTS" type="int" value="2260"/>
		<constant name="SCI_SETTABWIDTH" type="int" value="2036"/>
		<constant name="SCI_SETTARGETEND" type="int" value="2192"/>
		<constant name="SCI_SETTARGETSTART" type="int" value="2190"/>
		<constant name="SCI_SETTEXT" type="int" value="2181"/>
		<constant name="SCI_SETTWOPHASEDRAW" type="int" value="2284"/>
		<constant name="SCI_SETUNDOCOLLECTION" type="int" value="2012"/>
		<constant name="SCI_SETUSEPALETTE" type="int" value="2039"/>
		<constant name="SCI_SETUSETABS" type="int" value="2124"/>
		<constant name="SCI_SETVIEWEOL" type="int" value="2356"/>
		<constant name="SCI_SETVIEWWS" type="int" value="2021"/>
		<constant name="SCI_SETVIRTUALSPACEOPTIONS" type="int" value="2596"/>
		<constant name="SCI_SETVISIBLEPOLICY" type="int" value="2394"/>
		<constant name="SCI_SETVSCROLLBAR" type="int" value="2280"/>
		<constant name="SCI_SETWHITESPACEBACK" type="int" value="2085"/>
		<constant name="SCI_SETWHITESPACECHARS" type="int" value="2443"/>
		<constant name="SCI_SETWHITESPACEFORE" type="int" value="2084"/>
		<constant name="SCI_SETWHITESPACESIZE" type="int" value="2086"/>
		<constant name="SCI_SETWORDCHARS" type="int" value="2077"/>
		<constant name="SCI_SETWRAPINDENTMODE" type="int" value="2472"/>
		<constant name="SCI_SETWRAPMODE" type="int" value="2268"/>
		<constant name="SCI_SETWRAPSTARTINDENT" type="int" value="2464"/>
		<constant name="SCI_SETWRAPVISUALFLAGS" type="int" value="2460"/>
		<constant name="SCI_SETWRAPVISUALFLAGSLOCATION" type="int" value="2462"/>
		<constant name="SCI_SETXCARETPOLICY" type="int" value="2402"/>
		<constant name="SCI_SETXOFFSET" type="int" value="2397"/>
		<constant name="SCI_SETYCARETPOLICY" type="int" value="2403"/>
		<constant name="SCI_SETZOOM" type="int" value="2373"/>
		<constant name="SCI_SHOWLINES" type="int" value="2226"/>
		<constant name="SCI_START" type="int" value="2000"/>
		<constant name="SCI_STARTRECORD" type="int" value="3001"/>
		<constant name="SCI_STARTSTYLING" type="int" value="2032"/>
		<constant name="SCI_STOPRECORD" type="int" value="3002"/>
		<constant name="SCI_STUTTEREDPAGEDOWN" type="int" value="2437"/>
		<constant name="SCI_STUTTEREDPAGEDOWNEXTEND" type="int" value="2438"/>
		<constant name="SCI_STUTTEREDPAGEUP" type="int" value="2435"/>
		<constant name="SCI_STUTTEREDPAGEUPEXTEND" type="int" value="2436"/>
		<constant name="SCI_STYLECLEARALL" type="int" value="2050"/>
		<constant name="SCI_STYLEGETBACK" type="int" value="2482"/>
		<constant name="SCI_STYLEGETBOLD" type="int" value="2483"/>
		<constant name="SCI_STYLEGETCASE" type="int" value="2489"/>
		<constant name="SCI_STYLEGETCHANGEABLE" type="int" value="2492"/>
		<constant name="SCI_STYLEGETCHARACTERSET" type="int" value="2490"/>
		<constant name="SCI_STYLEGETEOLFILLED" type="int" value="2487"/>
		<constant name="SCI_STYLEGETFONT" type="int" value="2486"/>
		<constant name="SCI_STYLEGETFORE" type="int" value="2481"/>
		<constant name="SCI_STYLEGETHOTSPOT" type="int" value="2493"/>
		<constant name="SCI_STYLEGETITALIC" type="int" value="2484"/>
		<constant name="SCI_STYLEGETSIZE" type="int" value="2485"/>
		<constant name="SCI_STYLEGETUNDERLINE" type="int" value="2488"/>
		<constant name="SCI_STYLEGETVISIBLE" type="int" value="2491"/>
		<constant name="SCI_STYLERESETDEFAULT" type="int" value="2058"/>
		<constant name="SCI_STYLESETBACK" type="int" value="2052"/>
		<constant name="SCI_STYLESETBOLD" type="int" value="2053"/>
		<constant name="SCI_STYLESETCASE" type="int" value="2060"/>
		<constant name="SCI_STYLESETCHANGEABLE" type="int" value="2099"/>
		<constant name="SCI_STYLESETCHARACTERSET" type="int" value="2066"/>
		<constant name="SCI_STYLESETEOLFILLED" type="int" value="2057"/>
		<constant name="SCI_STYLESETFONT" type="int" value="2056"/>
		<constant name="SCI_STYLESETFORE" type="int" value="2051"/>
		<constant name="SCI_STYLESETHOTSPOT" type="int" value="2409"/>
		<constant name="SCI_STYLESETITALIC" type="int" value="2054"/>
		<constant name="SCI_STYLESETSIZE" type="int" value="2055"/>
		<constant name="SCI_STYLESETUNDERLINE" type="int" value="2059"/>
		<constant name="SCI_STYLESETVISIBLE" type="int" value="2074"/>
		<constant name="SCI_SWAPMAINANCHORCARET" type="int" value="2607"/>
		<constant name="SCI_TAB" type="int" value="2327"/>
		<constant name="SCI_TARGETASUTF8" type="int" value="2447"/>
		<constant name="SCI_TARGETFROMSELECTION" type="int" value="2287"/>
		<constant name="SCI_TEXTHEIGHT" type="int" value="2279"/>
		<constant name="SCI_TEXTWIDTH" type="int" value="2276"/>
		<constant name="SCI_TOGGLECARETSTICKY" type="int" value="2459"/>
		<constant name="SCI_TOGGLEFOLD" type="int" value="2231"/>
		<constant name="SCI_UNDO" type="int" value="2176"/>
		<constant name="SCI_UPPERCASE" type="int" value="2341"/>
		<constant name="SCI_USEPOPUP" type="int" value="2371"/>
		<constant name="SCI_USERLISTSHOW" type="int" value="2117"/>
		<constant name="SCI_VCHOME" type="int" value="2331"/>
		<constant name="SCI_VCHOMEEXTEND" type="int" value="2332"/>
		<constant name="SCI_VCHOMERECTEXTEND" type="int" value="2431"/>
		<constant name="SCI_VCHOMEWRAP" type="int" value="2453"/>
		<constant name="SCI_VCHOMEWRAPEXTEND" type="int" value="2454"/>
		<constant name="SCI_VERTICALCENTRECARET" type="int" value="2619"/>
		<constant name="SCI_VISIBLEFROMDOCLINE" type="int" value="2220"/>
		<constant name="SCI_WORDENDPOSITION" type="int" value="2267"/>
		<constant name="SCI_WORDLEFT" type="int" value="2308"/>
		<constant name="SCI_WORDLEFTEND" type="int" value="2439"/>
		<constant name="SCI_WORDLEFTENDEXTEND" type="int" value="2440"/>
		<constant name="SCI_WORDLEFTEXTEND" type="int" value="2309"/>
		<constant name="SCI_WORDPARTLEFT" type="int" value="2390"/>
		<constant name="SCI_WORDPARTLEFTEXTEND" type="int" value="2391"/>
		<constant name="SCI_WORDPARTRIGHT" type="int" value="2392"/>
		<constant name="SCI_WORDPARTRIGHTEXTEND" type="int" value="2393"/>
		<constant name="SCI_WORDRIGHT" type="int" value="2310"/>
		<constant name="SCI_WORDRIGHTEND" type="int" value="2441"/>
		<constant name="SCI_WORDRIGHTENDEXTEND" type="int" value="2442"/>
		<constant name="SCI_WORDRIGHTEXTEND" type="int" value="2311"/>
		<constant name="SCI_WORDSTARTPOSITION" type="int" value="2266"/>
		<constant name="SCI_WRAPCOUNT" type="int" value="2235"/>
		<constant name="SCI_ZOOMIN" type="int" value="2333"/>
		<constant name="SCI_ZOOMOUT" type="int" value="2334"/>
		<constant name="SCK_ADD" type="int" value="310"/>
		<constant name="SCK_BACK" type="int" value="8"/>
		<constant name="SCK_DELETE" type="int" value="308"/>
		<constant name="SCK_DIVIDE" type="int" value="312"/>
		<constant name="SCK_DOWN" type="int" value="300"/>
		<constant name="SCK_END" type="int" value="305"/>
		<constant name="SCK_ESCAPE" type="int" value="7"/>
		<constant name="SCK_HOME" type="int" value="304"/>
		<constant name="SCK_INSERT" type="int" value="309"/>
		<constant name="SCK_LEFT" type="int" value="302"/>
		<constant name="SCK_MENU" type="int" value="315"/>
		<constant name="SCK_NEXT" type="int" value="307"/>
		<constant name="SCK_PRIOR" type="int" value="306"/>
		<constant name="SCK_RETURN" type="int" value="13"/>
		<constant name="SCK_RIGHT" type="int" value="303"/>
		<constant name="SCK_RWIN" type="int" value="314"/>
		<constant name="SCK_SUBTRACT" type="int" value="311"/>
		<constant name="SCK_TAB" type="int" value="9"/>
		<constant name="SCK_UP" type="int" value="301"/>
		<constant name="SCK_WIN" type="int" value="313"/>
		<constant name="SCLEX_A68K" type="int" value="100"/>
		<constant name="SCLEX_ABAQUS" type="int" value="84"/>
		<constant name="SCLEX_ADA" type="int" value="20"/>
		<constant name="SCLEX_APDL" type="int" value="61"/>
		<constant name="SCLEX_ASM" type="int" value="34"/>
		<constant name="SCLEX_ASN1" type="int" value="63"/>
		<constant name="SCLEX_ASYMPTOTE" type="int" value="85"/>
		<constant name="SCLEX_AU3" type="int" value="60"/>
		<constant name="SCLEX_AUTOMATIC" type="int" value="1000"/>
		<constant name="SCLEX_AVE" type="int" value="19"/>
		<constant name="SCLEX_BAAN" type="int" value="31"/>
		<constant name="SCLEX_BASH" type="int" value="62"/>
		<constant name="SCLEX_BATCH" type="int" value="12"/>
		<constant name="SCLEX_BLITZBASIC" type="int" value="66"/>
		<constant name="SCLEX_BULLANT" type="int" value="27"/>
		<constant name="SCLEX_CAML" type="int" value="65"/>
		<constant name="SCLEX_CLW" type="int" value="45"/>
		<constant name="SCLEX_CLWNOCASE" type="int" value="46"/>
		<constant name="SCLEX_CMAKE" type="int" value="80"/>
		<constant name="SCLEX_COBOL" type="int" value="92"/>
		<constant name="SCLEX_CONF" type="int" value="17"/>
		<constant name="SCLEX_CONTAINER" type="int" value="0"/>
		<constant name="SCLEX_CPP" type="int" value="3"/>
		<constant name="SCLEX_CPPNOCASE" type="int" value="35"/>
		<constant name="SCLEX_CSOUND" type="int" value="74"/>
		<constant name="SCLEX_CSS" type="int" value="38"/>
		<constant name="SCLEX_D" type="int" value="79"/>
		<constant name="SCLEX_DIFF" type="int" value="16"/>
		<constant name="SCLEX_EIFFEL" type="int" value="23"/>
		<constant name="SCLEX_EIFFELKW" type="int" value="24"/>
		<constant name="SCLEX_ERLANG" type="int" value="53"/>
		<constant name="SCLEX_ERRORLIST" type="int" value="10"/>
		<constant name="SCLEX_ESCRIPT" type="int" value="41"/>
		<constant name="SCLEX_F77" type="int" value="37"/>
		<constant name="SCLEX_FLAGSHIP" type="int" value="73"/>
		<constant name="SCLEX_FORTH" type="int" value="52"/>
		<constant name="SCLEX_FORTRAN" type="int" value="36"/>
		<constant name="SCLEX_FREEBASIC" type="int" value="75"/>
		<constant name="SCLEX_GAP" type="int" value="81"/>
		<constant name="SCLEX_GUI4CLI" type="int" value="58"/>
		<constant name="SCLEX_HASKELL" type="int" value="68"/>
		<constant name="SCLEX_HTML" type="int" value="4"/>
		<constant name="SCLEX_INNOSETUP" type="int" value="76"/>
		<constant name="SCLEX_KIX" type="int" value="57"/>
		<constant name="SCLEX_LATEX" type="int" value="14"/>
		<constant name="SCLEX_LISP" type="int" value="21"/>
		<constant name="SCLEX_LOT" type="int" value="47"/>
		<constant name="SCLEX_LOUT" type="int" value="40"/>
		<constant name="SCLEX_LUA" type="int" value="15"/>
		<constant name="SCLEX_MAGIK" type="int" value="87"/>
		<constant name="SCLEX_MAKEFILE" type="int" value="11"/>
		<constant name="SCLEX_MARKDOWN" type="int" value="98"/>
		<constant name="SCLEX_MATLAB" type="int" value="32"/>
		<constant name="SCLEX_METAPOST" type="int" value="50"/>
		<constant name="SCLEX_MMIXAL" type="int" value="44"/>
		<constant name="SCLEX_MODULA" type="int" value="101"/>
		<constant name="SCLEX_MSSQL" type="int" value="55"/>
		<constant name="SCLEX_MYSQL" type="int" value="89"/>
		<constant name="SCLEX_NIMROD" type="int" value="96"/>
		<constant name="SCLEX_NNCRONTAB" type="int" value="26"/>
		<constant name="SCLEX_NSIS" type="int" value="43"/>
		<constant name="SCLEX_NULL" type="int" value="1"/>
		<constant name="SCLEX_OCTAVE" type="int" value="54"/>
		<constant name="SCLEX_OPAL" type="int" value="77"/>
		<constant name="SCLEX_PASCAL" type="int" value="18"/>
		<constant name="SCLEX_PERL" type="int" value="6"/>
		<constant name="SCLEX_PHPSCRIPT" type="int" value="69"/>
		<constant name="SCLEX_PLM" type="int" value="82"/>
		<constant name="SCLEX_PO" type="int" value="90"/>
		<constant name="SCLEX_POV" type="int" value="39"/>
		<constant name="SCLEX_POWERBASIC" type="int" value="51"/>
		<constant name="SCLEX_POWERPRO" type="int" value="95"/>
		<constant name="SCLEX_POWERSHELL" type="int" value="88"/>
		<constant name="SCLEX_PROGRESS" type="int" value="83"/>
		<constant name="SCLEX_PROPERTIES" type="int" value="9"/>
		<constant name="SCLEX_PS" type="int" value="42"/>
		<constant name="SCLEX_PUREBASIC" type="int" value="67"/>
		<constant name="SCLEX_PYTHON" type="int" value="2"/>
		<constant name="SCLEX_R" type="int" value="86"/>
		<constant name="SCLEX_REBOL" type="int" value="71"/>
		<constant name="SCLEX_RUBY" type="int" value="22"/>
		<constant name="SCLEX_SCRIPTOL" type="int" value="33"/>
		<constant name="SCLEX_SMALLTALK" type="int" value="72"/>
		<constant name="SCLEX_SML" type="int" value="97"/>
		<constant name="SCLEX_SORCUS" type="int" value="94"/>
		<constant name="SCLEX_SPECMAN" type="int" value="59"/>
		<constant name="SCLEX_SPICE" type="int" value="78"/>
		<constant name="SCLEX_SQL" type="int" value="7"/>
		<constant name="SCLEX_TACL" type="int" value="93"/>
		<constant name="SCLEX_TADS3" type="int" value="70"/>
		<constant name="SCLEX_TAL" type="int" value="91"/>
		<constant name="SCLEX_TCL" type="int" value="25"/>
		<constant name="SCLEX_TEX" type="int" value="49"/>
		<constant name="SCLEX_TXT2TAGS" type="int" value="99"/>
		<constant name="SCLEX_VB" type="int" value="8"/>
		<constant name="SCLEX_VBSCRIPT" type="int" value="28"/>
		<constant name="SCLEX_VERILOG" type="int" value="56"/>
		<constant name="SCLEX_VHDL" type="int" value="64"/>
		<constant name="SCLEX_XCODE" type="int" value="13"/>
		<constant name="SCLEX_XML" type="int" value="5"/>
		<constant name="SCLEX_YAML" type="int" value="48"/>
		<constant name="SCMOD_ALT" type="int" value="4"/>
		<constant name="SCMOD_CTRL" type="int" value="2"/>
		<constant name="SCMOD_NORM" type="int" value="0"/>
		<constant name="SCMOD_SHIFT" type="int" value="1"/>
		<constant name="SCMOD_SUPER" type="int" value="8"/>
		<constant name="SCN_AUTOCCANCELLED" type="int" value="2025"/>
		<constant name="SCN_AUTOCCHARDELETED" type="int" value="2026"/>
		<constant name="SCN_AUTOCSELECTION" type="int" value="2022"/>
		<constant name="SCN_CALLTIPCLICK" type="int" value="2021"/>
		<constant name="SCN_CHARADDED" type="int" value="2001"/>
		<constant name="SCN_DOUBLECLICK" type="int" value="2006"/>
		<constant name="SCN_DWELLEND" type="int" value="2017"/>
		<constant name="SCN_DWELLSTART" type="int" value="2016"/>
		<constant name="SCN_HOTSPOTCLICK" type="int" value="2019"/>
		<constant name="SCN_HOTSPOTDOUBLECLICK" type="int" value="2020"/>
		<constant name="SCN_HOTSPOTRELEASECLICK" type="int" value="2027"/>
		<constant name="SCN_INDICATORCLICK" type="int" value="2023"/>
		<constant name="SCN_INDICATORRELEASE" type="int" value="2024"/>
		<constant name="SCN_KEY" type="int" value="2005"/>
		<constant name="SCN_MACRORECORD" type="int" value="2009"/>
		<constant name="SCN_MARGINCLICK" type="int" value="2010"/>
		<constant name="SCN_MODIFIED" type="int" value="2008"/>
		<constant name="SCN_MODIFYATTEMPTRO" type="int" value="2004"/>
		<constant name="SCN_NEEDSHOWN" type="int" value="2011"/>
		<constant name="SCN_PAINTED" type="int" value="2013"/>
		<constant name="SCN_SAVEPOINTLEFT" type="int" value="2003"/>
		<constant name="SCN_SAVEPOINTREACHED" type="int" value="2002"/>
		<constant name="SCN_STYLENEEDED" type="int" value="2000"/>
		<constant name="SCN_UPDATEUI" type="int" value="2007"/>
		<constant name="SCN_URIDROPPED" type="int" value="2015"/>
		<constant name="SCN_USERLISTSELECTION" type="int" value="2014"/>
		<constant name="SCN_ZOOM" type="int" value="2018"/>
		<constant name="SCVS_NONE" type="int" value="0"/>
		<constant name="SCVS_RECTANGULARSELECTION" type="int" value="1"/>
		<constant name="SCVS_USERACCESSIBLE" type="int" value="2"/>
		<constant name="SCWS_INVISIBLE" type="int" value="0"/>
		<constant name="SCWS_VISIBLEAFTERINDENT" type="int" value="2"/>
		<constant name="SCWS_VISIBLEALWAYS" type="int" value="1"/>
		<constant name="SC_ALPHA_NOALPHA" type="int" value="256"/>
		<constant name="SC_ALPHA_OPAQUE" type="int" value="255"/>
		<constant name="SC_ALPHA_TRANSPARENT" type="int" value="0"/>
		<constant name="SC_CACHE_CARET" type="int" value="1"/>
		<constant name="SC_CACHE_DOCUMENT" type="int" value="3"/>
		<constant name="SC_CACHE_NONE" type="int" value="0"/>
		<constant name="SC_CACHE_PAGE" type="int" value="2"/>
		<constant name="SC_CARETSTICKY_OFF" type="int" value="0"/>
		<constant name="SC_CARETSTICKY_ON" type="int" value="1"/>
		<constant name="SC_CARETSTICKY_WHITESPACE" type="int" value="2"/>
		<constant name="SC_CASE_LOWER" type="int" value="2"/>
		<constant name="SC_CASE_MIXED" type="int" value="0"/>
		<constant name="SC_CASE_UPPER" type="int" value="1"/>
		<constant name="SC_CHARSET_8859_15" type="int" value="1000"/>
		<constant name="SC_CHARSET_ANSI" type="int" value="0"/>
		<constant name="SC_CHARSET_ARABIC" type="int" value="178"/>
		<constant name="SC_CHARSET_BALTIC" type="int" value="186"/>
		<constant name="SC_CHARSET_CHINESEBIG5" type="int" value="136"/>
		<constant name="SC_CHARSET_CYRILLIC" type="int" value="1251"/>
		<constant name="SC_CHARSET_DEFAULT" type="int" value="1"/>
		<constant name="SC_CHARSET_EASTEUROPE" type="int" value="238"/>
		<constant name="SC_CHARSET_GB2312" type="int" value="134"/>
		<constant name="SC_CHARSET_GREEK" type="int" value="161"/>
		<constant name="SC_CHARSET_HANGUL" type="int" value="129"/>
		<constant name="SC_CHARSET_HEBREW" type="int" value="177"/>
		<constant name="SC_CHARSET_JOHAB" type="int" value="130"/>
		<constant name="SC_CHARSET_MAC" type="int" value="77"/>
		<constant name="SC_CHARSET_OEM" type="int" value="255"/>
		<constant name="SC_CHARSET_RUSSIAN" type="int" value="204"/>
		<constant name="SC_CHARSET_SHIFTJIS" type="int" value="128"/>
		<constant name="SC_CHARSET_SYMBOL" type="int" value="2"/>
		<constant name="SC_CHARSET_THAI" type="int" value="222"/>
		<constant name="SC_CHARSET_TURKISH" type="int" value="162"/>
		<constant name="SC_CHARSET_VIETNAMESE" type="int" value="163"/>
		<constant name="SC_CP_DBCS" type="int" value="1"/>
		<constant name="SC_CP_UTF8" type="int" value="65001"/>
		<constant name="SC_CURSORARROW" type="int" value="2"/>
		<constant name="SC_CURSORNORMAL" type="int" value="-1"/>
		<constant name="SC_CURSORREVERSEARROW" type="int" value="7"/>
		<constant name="SC_CURSORWAIT" type="int" value="4"/>
		<constant name="SC_EFF_QUALITY_ANTIALIASED" type="int" value="2"/>
		<constant name="SC_EFF_QUALITY_DEFAULT" type="int" value="0"/>
		<constant name="SC_EFF_QUALITY_LCD_OPTIMIZED" type="int" value="3"/>
		<constant name="SC_EFF_QUALITY_MASK" type="int" value="15"/>
		<constant name="SC_EFF_QUALITY_NON_ANTIALIASED" type="int" value="1"/>
		<constant name="SC_EOL_CR" type="int" value="1"/>
		<constant name="SC_EOL_CRLF" type="int" value="0"/>
		<constant name="SC_EOL_LF" type="int" value="2"/>
		<constant name="SC_FOLDFLAG_LEVELNUMBERS" type="int" value="64"/>
		<constant name="SC_FOLDFLAG_LINEAFTER_CONTRACTED" type="int" value="16"/>
		<constant name="SC_FOLDFLAG_LINEAFTER_EXPANDED" type="int" value="8"/>
		<constant name="SC_FOLDFLAG_LINEBEFORE_CONTRACTED" type="int" value="4"/>
		<constant name="SC_FOLDFLAG_LINEBEFORE_EXPANDED" type="int" value="2"/>
		<constant name="SC_FOLDLEVELBASE" type="int" value="1024"/>
		<constant name="SC_FOLDLEVELHEADERFLAG" type="int" value="8192"/>
		<constant name="SC_FOLDLEVELNUMBERMASK" type="int" value="4095"/>
		<constant name="SC_FOLDLEVELWHITEFLAG" type="int" value="4096"/>
		<constant name="SC_IV_LOOKBOTH" type="int" value="3"/>
		<constant name="SC_IV_LOOKFORWARD" type="int" value="2"/>
		<constant name="SC_IV_NONE" type="int" value="0"/>
		<constant name="SC_IV_REAL" type="int" value="1"/>
		<constant name="SC_LASTSTEPINUNDOREDO" type="int" value="256"/>
		<constant name="SC_MARGIN_BACK" type="int" value="2"/>
		<constant name="SC_MARGIN_FORE" type="int" value="3"/>
		<constant name="SC_MARGIN_NUMBER" type="int" value="1"/>
		<constant name="SC_MARGIN_RTEXT" type="int" value="5"/>
		<constant name="SC_MARGIN_SYMBOL" type="int" value="0"/>
		<constant name="SC_MARGIN_TEXT" type="int" value="4"/>
		<constant name="SC_MARKNUM_FOLDER" type="int" value="30"/>
		<constant name="SC_MARKNUM_FOLDEREND" type="int" value="25"/>
		<constant name="SC_MARKNUM_FOLDERMIDTAIL" type="int" value="27"/>
		<constant name="SC_MARKNUM_FOLDEROPEN" type="int" value="31"/>
		<constant name="SC_MARKNUM_FOLDEROPENMID" type="int" value="26"/>
		<constant name="SC_MARKNUM_FOLDERSUB" type="int" value="29"/>
		<constant name="SC_MARKNUM_FOLDERTAIL" type="int" value="28"/>
		<constant name="SC_MARK_ARROW" type="int" value="2"/>
		<constant name="SC_MARK_ARROWDOWN" type="int" value="6"/>
		<constant name="SC_MARK_ARROWS" type="int" value="24"/>
		<constant name="SC_MARK_AVAILABLE" type="int" value="28"/>
		<constant name="SC_MARK_BACKGROUND" type="int" value="22"/>
		<constant name="SC_MARK_BOXMINUS" type="int" value="14"/>
		<constant name="SC_MARK_BOXMINUSCONNECTED" type="int" value="15"/>
		<constant name="SC_MARK_BOXPLUS" type="int" value="12"/>
		<constant name="SC_MARK_BOXPLUSCONNECTED" type="int" value="13"/>
		<constant name="SC_MARK_CHARACTER" type="int" value="10000"/>
		<constant name="SC_MARK_CIRCLE" type="int" value="0"/>
		<constant name="SC_MARK_CIRCLEMINUS" type="int" value="20"/>
		<constant name="SC_MARK_CIRCLEMINUSCONNECTED" type="int" value="21"/>
		<constant name="SC_MARK_CIRCLEPLUS" type="int" value="18"/>
		<constant name="SC_MARK_CIRCLEPLUSCONNECTED" type="int" value="19"/>
		<constant name="SC_MARK_DOTDOTDOT" type="int" value="23"/>
		<constant name="SC_MARK_EMPTY" type="int" value="5"/>
		<constant name="SC_MARK_FULLRECT" type="int" value="26"/>
		<constant name="SC_MARK_LCORNER" type="int" value="10"/>
		<constant name="SC_MARK_LCORNERCURVE" type="int" value="16"/>
		<constant name="SC_MARK_LEFTRECT" type="int" value="27"/>
		<constant name="SC_MARK_MINUS" type="int" value="7"/>
		<constant name="SC_MARK_PIXMAP" type="int" value="25"/>
		<constant name="SC_MARK_PLUS" type="int" value="8"/>
		<constant name="SC_MARK_ROUNDRECT" type="int" value="1"/>
		<constant name="SC_MARK_SHORTARROW" type="int" value="4"/>
		<constant name="SC_MARK_SMALLRECT" type="int" value="3"/>
		<constant name="SC_MARK_TCORNER" type="int" value="11"/>
		<constant name="SC_MARK_TCORNERCURVE" type="int" value="17"/>
		<constant name="SC_MARK_UNDERLINE" type="int" value="29"/>
		<constant name="SC_MARK_VLINE" type="int" value="9"/>
		<constant name="SC_MASK_FOLDERS" type="int" value="-33554432"/>
		<constant name="SC_MODEVENTMASKALL" type="int" value="1048575"/>
		<constant name="SC_MOD_BEFOREDELETE" type="int" value="2048"/>
		<constant name="SC_MOD_BEFOREINSERT" type="int" value="1024"/>
		<constant name="SC_MOD_CHANGEANNOTATION" type="int" value="131072"/>
		<constant name="SC_MOD_CHANGEFOLD" type="int" value="8"/>
		<constant name="SC_MOD_CHANGEINDICATOR" type="int" value="16384"/>
		<constant name="SC_MOD_CHANGELINESTATE" type="int" value="32768"/>
		<constant name="SC_MOD_CHANGEMARGIN" type="int" value="65536"/>
		<constant name="SC_MOD_CHANGEMARKER" type="int" value="512"/>
		<constant name="SC_MOD_CHANGESTYLE" type="int" value="4"/>
		<constant name="SC_MOD_CONTAINER" type="int" value="262144"/>
		<constant name="SC_MOD_DELETETEXT" type="int" value="2"/>
		<constant name="SC_MOD_INSERTTEXT" type="int" value="1"/>
		<constant name="SC_MOD_LEXERSTATE" type="int" value="524288"/>
		<constant name="SC_MULTILINEUNDOREDO" type="int" value="4096"/>
		<constant name="SC_MULTIPASTE_EACH" type="int" value="1"/>
		<constant name="SC_MULTIPASTE_ONCE" type="int" value="0"/>
		<constant name="SC_MULTISTEPUNDOREDO" type="int" value="128"/>
		<constant name="SC_PERFORMED_REDO" type="int" value="64"/>
		<constant name="SC_PERFORMED_UNDO" type="int" value="32"/>
		<constant name="SC_PERFORMED_USER" type="int" value="16"/>
		<constant name="SC_PRINT_BLACKONWHITE" type="int" value="2"/>
		<constant name="SC_PRINT_COLOURONWHITE" type="int" value="3"/>
		<constant name="SC_PRINT_COLOURONWHITEDEFAULTBG" type="int" value="4"/>
		<constant name="SC_PRINT_INVERTLIGHT" type="int" value="1"/>
		<constant name="SC_PRINT_NORMAL" type="int" value="0"/>
		<constant name="SC_SEL_LINES" type="int" value="2"/>
		<constant name="SC_SEL_RECTANGLE" type="int" value="1"/>
		<constant name="SC_SEL_STREAM" type="int" value="0"/>
		<constant name="SC_SEL_THIN" type="int" value="3"/>
		<constant name="SC_STARTACTION" type="int" value="8192"/>
		<constant name="SC_STATUS_BADALLOC" type="int" value="2"/>
		<constant name="SC_STATUS_FAILURE" type="int" value="1"/>
		<constant name="SC_STATUS_OK" type="int" value="0"/>
		<constant name="SC_TIME_FOREVER" type="int" value="10000000"/>
		<constant name="SC_TYPE_BOOLEAN" type="int" value="0"/>
		<constant name="SC_TYPE_INTEGER" type="int" value="1"/>
		<constant name="SC_TYPE_STRING" type="int" value="2"/>
		<constant name="SC_UPDATE_CONTENT" type="int" value="1"/>
		<constant name="SC_UPDATE_H_SCROLL" type="int" value="8"/>
		<constant name="SC_UPDATE_SELECTION" type="int" value="2"/>
		<constant name="SC_UPDATE_V_SCROLL" type="int" value="4"/>
		<constant name="SC_WRAPINDENT_FIXED" type="int" value="0"/>
		<constant name="SC_WRAPINDENT_INDENT" type="int" value="2"/>
		<constant name="SC_WRAPINDENT_SAME" type="int" value="1"/>
		<constant name="SC_WRAPVISUALFLAGLOC_DEFAULT" type="int" value="0"/>
		<constant name="SC_WRAPVISUALFLAGLOC_END_BY_TEXT" type="int" value="1"/>
		<constant name="SC_WRAPVISUALFLAGLOC_START_BY_TEXT" type="int" value="2"/>
		<constant name="SC_WRAPVISUALFLAG_END" type="int" value="1"/>
		<constant name="SC_WRAPVISUALFLAG_NONE" type="int" value="0"/>
		<constant name="SC_WRAPVISUALFLAG_START" type="int" value="2"/>
		<constant name="SC_WRAP_CHAR" type="int" value="2"/>
		<constant name="SC_WRAP_NONE" type="int" value="0"/>
		<constant name="SC_WRAP_WORD" type="int" value="1"/>
		<constant name="STYLE_BRACEBAD" type="int" value="35"/>
		<constant name="STYLE_BRACELIGHT" type="int" value="34"/>
		<constant name="STYLE_CALLTIP" type="int" value="38"/>
		<constant name="STYLE_CONTROLCHAR" type="int" value="36"/>
		<constant name="STYLE_DEFAULT" type="int" value="32"/>
		<constant name="STYLE_INDENTGUIDE" type="int" value="37"/>
		<constant name="STYLE_LASTPREDEFINED" type="int" value="39"/>
		<constant name="STYLE_LINENUMBER" type="int" value="33"/>
		<constant name="STYLE_MAX" type="int" value="255"/>
		<constant name="UNDO_MAY_COALESCE" type="int" value="1"/>
		<constant name="VISIBLE_SLOP" type="int" value="1"/>
		<constant name="VISIBLE_STRICT" type="int" value="4"/>
	</namespace>
</api>
