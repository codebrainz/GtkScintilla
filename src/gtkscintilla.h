/**
 * SECTION: gtkscintilla
 * @short_description: The main editing widget
 * @title: GtkScintilla
 * @stability: Unstable
 * @include: gtkscintilla.h
 * 
 * This is the main visible editing compenent/widget that you pack into your
 * containers.
 */
 
 /* todo:
  * 	store a flag 'error_reporting' or similar that will enable showing
  * 	an error message dialog based on SCI_*STATUS
  */

#ifndef __GTKSCINTILLA_H__
#define __GTKSCINTILLA_H__

#include <string.h>
#include <gtk/gtk.h>

G_BEGIN_DECLS

#define PLAT_GTK 2

#ifndef GTK
#define GTK
#endif

#include <Scintilla.h>
#include <ScintillaWidget.h>

#include "constants.h"

#define GTK_TYPE_SCINTILLA				(gtk_scintilla_get_type())
#define GTK_SCINTILLA(obj)				(G_TYPE_CHECK_INSTANCE_CAST((obj), GTK_TYPE_SCINTILLA, GtkScintilla))
#define GTK_SCINTILLA_CLASS(klass)		(G_TYPE_CHECK_CLASS_CAST((klass), GTK_TYPE_SCINTILLA, GtkScintillaClass))
#define GTK_IS_SCINTILLA(obj)			(G_TYPE_CHECK_INSTANCE_TYPE((obj), GTK_TYPE_SCINTILLA))
#define GTK_IS_SCINTILLA_CLASS(klass)	(G_TYPE_CHECK_CLASS_TYPE((klass), GTK_TYPE_SCINTILLA))
#define GTK_SCINTILLA_GET_CLASS(obj)	(G_TYPE_INSTANCE_GET_CLASS((obj), GTK_TYPE_SCINTILLA, GtkScintillaClass))

/* should be done in Scintilla code */
#define SCINTILLA_TYPE_OBJECT			(scintilla_get_type())

typedef struct _GtkScintilla			GtkScintilla;
typedef struct _GtkScintillaClass		GtkScintillaClass;
typedef struct _GtkScintillaPrivate		GtkScintillaPrivate;

struct _GtkScintilla
{
	//GtkFrame parent;
	ScintillaObject parent;
	GtkWidget *scintilla;
	GtkAccelGroup *accel_group;
    /*< private >*/
	GtkScintillaPrivate *priv;
};

struct _GtkScintillaClass
{
	//GtkFrameClass parent_class;
	ScintillaClass parent_class;
	
	/*< private >*/
	void (* style_needed) (GtkWidget *gtk_scintilla, gint start_pos, gint end_pos);
	void (* char_added) (GtkWidget *gtk_scintilla, gint ch);
	void (* save_point_reached) (GtkWidget *gtk_scintilla);
	void (* save_point_left) (GtkWidget *gtk_scintilla);
	void (* modify_attempt_ro) (GtkWidget *gtk_scintilla);
	void (* key) (GtkWidget *gtk_scintilla, gint ch, gint modifiers);
	void (* double_click) (GtkWidget *gtk_scintilla);
	void (* update_ui) (GtkWidget *gtk_scintilla);
	void (* modified) (GtkWidget *gtk_scintilla, gint position, gint modificationType, const gchar* text, gint length, gint linesAdded, gint line, gint foldLevelNow, gint foldLevelPrev);
	void (* macro_record) (GtkWidget *gtk_scintilla, gint message, gint wParam, gint lParam);
	void (* margin_click) (GtkWidget *gtk_scintilla, gint modifiers, gint position, gint margin);
	void (* need_shown) (GtkWidget *gtk_scintilla, gint position, gint length);
	void (* painted) (GtkWidget *gtk_scintilla);
	void (* user_list_selection) (GtkWidget *gtk_scintilla, gint listType, const gchar* text);
	void (* uri_dropped) (GtkWidget *gtk_scintilla, const gchar* text);
	void (* dwell_start) (GtkWidget *gtk_scintilla, gint position);
	void (* dwell_end) (GtkWidget *gtk_scintilla, gint position);
	void (* zoom) (GtkWidget *gtk_scintilla);
	void (* hot_spot_click) (GtkWidget *gtk_scintilla, gint modifiers, gint position);
	void (* hot_spot_double_click) (GtkWidget *gtk_scintilla, gint modifiers, gint position);
	void (* call_tip_click) (GtkWidget *gtk_scintilla, gint position);
	void (* auto_completion_selection) (GtkWidget *gtk_scintilla, const gchar* text);
	void (* indicator_click) (GtkWidget *gtk_scintilla, gint modifiers, gint position);
	void (* indicator_release) (GtkWidget *gtk_scintilla, gint modifiers, gint position);
	void (* auto_completion_cancelled) (GtkWidget *gtk_scintilla);
	void (* auto_completion_char_deleted) (GtkWidget *gtk_scintilla);
	
};


/**
 * SSM:
 * @sci:	The ScintillaObject to send the message to.
 * @msg:	The message code to send.
 * @param1:	The first parameter for the message (wParam).
 * @param2:	The second parameter for the message (lParam).
 * 
 * A shortcut macro to the scintilla_send_message() function which is the 
 * raw/native interface for Scintilla.  Rather than methods and properties, 
 * Scintilla uses a messaging scheme.  Refer to the Scintilla documentation for
 * more information.  The @sci parameter is the ScintillaObject.  The @msg 
 * parameter specifies the function to perform using one of the 
 * #GTK_SCINTILLA_MSG_* values.  The @param1 parameter corresponds to
 * Scintilla's <emphasis>uptr_t</emphasis> type, and should be set to zero if 
 * this parameter is not used.  The @param2 parameter corresponds to 
 * Scintilla's <emphasis>sptr_t</emphasis> type, and should also be set to 
 * zero if it's not used.  Most (all?) messages which return a string, that is,
 * those require a gchar* parameter (not const, aka stringresult) will return
 * the size of the string that needs to be allocated if the gchar* parameter
 * is zero (or NULL).  You can use this size to determine how much memory
 * needs to be allocated (+1) to hold the string that will be filled by
 * a call to this function with the gchar* parameter as a pointer to the
 * newly-allocated memory.  All of this is done automatically using the
 * #gtk_scintilla_* wrapper functions.  If #GtkScintilla is doing it's job
 * properly, you should never need to use this function. 
 * 
 * Returns:	A #glong which corresponds to Scintilla's 
 * 			<emphasis>sptr_t</emphasis> type.  The meaning of the return value
 * 			depends on the message being sent.  Consult the Scintilla 
 * 			documentation for more information.
 */
#define SSM(s, m, l, w) scintilla_send_message(SCINTILLA(s), m, l, w)

GType			gtk_scintilla_get_type				(void);

/* Constructors */
GtkWidget*		gtk_scintilla_new					(void);
GtkWidget*		gtk_scintilla_new_from_sci			(ScintillaObject *sci);

void 			gtk_scintilla_get_property			(GObject *object, 
													guint property_id, 
													GValue *value, 
													GParamSpec *pspec);
													
void 			gtk_scintilla_set_property			(GObject *object, 
													guint property_id, 
													const GValue *value, 
													GParamSpec *pspec);

extern void	gtk_scintilla_set_id				(GtkScintilla *self, 
													gshort id);
													
extern glong	gtk_scintilla_send_message			(GtkScintilla *self,
													guint iMessage,
													gulong wParam,
													glong lParam);

extern ScintillaObject *gtk_scintilla_get_scintilla(GtkScintilla *self);
													
extern void	gtk_scintilla_release_resources ();


void 		gtk_scintilla_update_line_numbers		(GtkScintilla *self);

/**
 * gtk_scintilla_get_line_numbers_visible:
 * @self:	The #GtkScintilla object
 * 
 * Gets whether the line number margin is visible or not.
 * 
 * Returns: The visibility of the line number margin for the #GtkScintilla.
 **/
gboolean 	gtk_scintilla_get_line_numbers_visible	(GtkScintilla *self);

/**
 * gtk_scintilla_set_line_numbers_visible:
 * @self:		The #GtkScintilla object
 * @visible:	#TRUE for visible, #FALSE for hidden
 * 
 * Sets the line number visibility to @visibility on the #GtkScintilla.
 **/
void 		gtk_scintilla_set_line_numbers_visible	(GtkScintilla *self, 
													 gboolean visible);


void 		gtk_scintilla_set_font					(GtkScintilla *self, 
													 gint style_number, 
													 const gchar *font_desc);
													 
gchar 		*gtk_scintilla_get_font					(GtkScintilla *self, 
													 gint style_number);



gchar 		*gtk_scintilla_get_background_color		(GtkScintilla *self, 
													 gint style);
													 
void 		gtk_scintilla_set_background_color		(GtkScintilla *self, 
													 gint style, 
													 const gchar *color_spec);
													 
													 
gchar 		*gtk_scintilla_get_foreground_color		(GtkScintilla *self, 
													 gint style);
													 
void 		gtk_scintilla_set_foreground_color		(GtkScintilla *self, 
													 gint style, 
													 const gchar *color_spec);

gchar 		*int_to_color_spec						(gint int_color);

gint		color_spec_to_int						(const gchar *color_spec);

void gtk_scintilla_set_style   (GtkScintilla *self, 
								gint style_number,
								const gchar *font_spec,
								const gchar *fg_color,
								const gchar *bg_color);

/* These functions are defined in functions.c */
extern void gtk_scintilla_add_text (GtkScintilla *sci, guint length, const gchar *text);
extern void gtk_scintilla_add_styled_text (GtkScintilla *sci, guint length, const gchar *styled_text);
extern void gtk_scintilla_insert_text (GtkScintilla *sci, gint pos, const gchar *text);
extern void gtk_scintilla_clear_all (GtkScintilla *sci);
extern void gtk_scintilla_clear_document_style (GtkScintilla *sci);
extern gint gtk_scintilla_get_length (GtkScintilla *sci);
extern gchar gtk_scintilla_get_char_at (GtkScintilla *sci, guint pos);
extern gint gtk_scintilla_get_current_pos (GtkScintilla *sci);
extern gint gtk_scintilla_get_anchor (GtkScintilla *sci);
extern gchar gtk_scintilla_get_style_at (GtkScintilla *sci, guint pos);
extern void gtk_scintilla_redo (GtkScintilla *sci);
extern void gtk_scintilla_set_undo_collection (GtkScintilla *sci, gboolean collectUndo);
extern void gtk_scintilla_select_all (GtkScintilla *sci);
extern void gtk_scintilla_set_save_point (GtkScintilla *sci);
extern gchar *gtk_scintilla_get_styled_text_range (GtkScintilla *sci, guint start_pos, gint end_pos);
extern gboolean gtk_scintilla_can_redo (GtkScintilla *sci);
extern gint gtk_scintilla_marker_line_from_handle (GtkScintilla *sci, gint handle);
extern void gtk_scintilla_marker_delete_handle (GtkScintilla *sci, gint handle);
extern gboolean gtk_scintilla_get_undo_collection (GtkScintilla *sci);
extern gint gtk_scintilla_get_view_white_space (GtkScintilla *sci);
extern void gtk_scintilla_set_view_white_space (GtkScintilla *sci, gint viewWS);
extern gint gtk_scintilla_position_from_point (GtkScintilla *sci, gint x, gint y);
extern gint gtk_scintilla_position_from_point_close (GtkScintilla *sci, gint x, gint y);
extern void gtk_scintilla_goto_line (GtkScintilla *sci, gint line);
extern void gtk_scintilla_goto_pos (GtkScintilla *sci, gint pos);
extern void gtk_scintilla_set_anchor (GtkScintilla *sci, gint posAnchor);
extern gint gtk_scintilla_get_cur_line (GtkScintilla *sci, gint length, gchar *text);
extern gint gtk_scintilla_get_end_styled (GtkScintilla *sci);
extern void gtk_scintilla_convert_eols (GtkScintilla *sci, gint eolMode);
extern gint gtk_scintilla_get_eol_mode (GtkScintilla *sci);
extern void gtk_scintilla_set_eol_mode (GtkScintilla *sci, gint eolMode);
extern void gtk_scintilla_start_styling (GtkScintilla *sci, gint pos, gint mask);
extern void gtk_scintilla_set_styling (GtkScintilla *sci, gint length, gint style);
extern gboolean gtk_scintilla_get_buffered_draw (GtkScintilla *sci);
extern void gtk_scintilla_set_buffered_draw (GtkScintilla *sci, gboolean buffered);
extern void gtk_scintilla_set_tab_width (GtkScintilla *sci, gint tabWidth);
extern gint gtk_scintilla_get_tab_width (GtkScintilla *sci);
extern void gtk_scintilla_set_code_page (GtkScintilla *sci, gint codePage);
extern void gtk_scintilla_set_use_palette (GtkScintilla *sci, gboolean usePalette);
extern void gtk_scintilla_marker_define (GtkScintilla *sci, gint markerNumber, gint markerSymbol);
extern void gtk_scintilla_marker_set_fore (GtkScintilla *sci, gint markerNumber, gint fore);
extern void gtk_scintilla_marker_set_back (GtkScintilla *sci, gint markerNumber, gint back);
extern gint gtk_scintilla_marker_add (GtkScintilla *sci, gint line, gint markerNumber);
extern void gtk_scintilla_marker_delete (GtkScintilla *sci, gint line, gint markerNumber);
extern void gtk_scintilla_marker_delete_all (GtkScintilla *sci, gint markerNumber);
extern gint gtk_scintilla_marker_get (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_marker_next (GtkScintilla *sci, gint lineStart, gint markerMask);
extern gint gtk_scintilla_marker_previous (GtkScintilla *sci, gint lineStart, gint markerMask);
extern void gtk_scintilla_marker_define_pixmap (GtkScintilla *sci, gint markerNumber, const gchar *pixmap);
extern void gtk_scintilla_marker_add_set (GtkScintilla *sci, gint line, gint set);
extern void gtk_scintilla_marker_set_alpha (GtkScintilla *sci, gint markerNumber, gint alpha);
extern void gtk_scintilla_set_margin_type_n (GtkScintilla *sci, gint margin, gint marginType);
extern gint gtk_scintilla_get_margin_type_n (GtkScintilla *sci, gint margin);
extern void gtk_scintilla_set_margin_width_n (GtkScintilla *sci, gint margin, gint pixelWidth);
extern gint gtk_scintilla_get_margin_width_n (GtkScintilla *sci, gint margin);
extern void gtk_scintilla_set_margin_mask_n (GtkScintilla *sci, gint margin, gint mask);
extern gint gtk_scintilla_get_margin_mask_n (GtkScintilla *sci, gint margin);
extern void gtk_scintilla_set_margin_sensitive_n (GtkScintilla *sci, gint margin, gboolean sensitive);
extern gboolean gtk_scintilla_get_margin_sensitive_n (GtkScintilla *sci, gint margin);
extern void gtk_scintilla_style_clear_all (GtkScintilla *sci);
extern void gtk_scintilla_style_reset_default (GtkScintilla *sci);
extern void gtk_scintilla_set_sel_fore (GtkScintilla *sci, gboolean useSetting, gint fore);
extern void gtk_scintilla_set_sel_back (GtkScintilla *sci, gboolean useSetting, gint back);
extern gint gtk_scintilla_get_sel_alpha (GtkScintilla *sci);
extern void gtk_scintilla_set_sel_alpha (GtkScintilla *sci, gint alpha);
extern gboolean gtk_scintilla_get_sel_eol_filled (GtkScintilla *sci);
extern void gtk_scintilla_set_sel_eol_filled (GtkScintilla *sci, gboolean filled);
extern void gtk_scintilla_set_caret_fore (GtkScintilla *sci, gint fore);
extern void gtk_scintilla_assign_cmd_key (GtkScintilla *sci, gulong km, gint msg);
extern void gtk_scintilla_clear_cmd_key (GtkScintilla *sci, gulong km);
extern void gtk_scintilla_clear_all_cmd_keys (GtkScintilla *sci);
extern void gtk_scintilla_set_styling_ex (GtkScintilla *sci, gint length, const gchar *styles);
extern gint gtk_scintilla_get_caret_period (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_period (GtkScintilla *sci, gint periodMilliseconds);
extern void gtk_scintilla_set_word_chars (GtkScintilla *sci, const gchar *characters);
extern void gtk_scintilla_begin_undo_action (GtkScintilla *sci);
extern void gtk_scintilla_end_undo_action (GtkScintilla *sci);
extern void gtk_scintilla_indic_set_style (GtkScintilla *sci, gint indic, gint style);
extern gint gtk_scintilla_indic_get_style (GtkScintilla *sci, gint indic);
extern void gtk_scintilla_indic_set_fore (GtkScintilla *sci, gint indic, gint fore);
extern gint gtk_scintilla_indic_get_fore (GtkScintilla *sci, gint indic);
extern void gtk_scintilla_indic_set_under (GtkScintilla *sci, gint indic, gboolean under);
extern gboolean gtk_scintilla_indic_get_under (GtkScintilla *sci, gint indic);
extern void gtk_scintilla_set_whitespace_fore (GtkScintilla *sci, gboolean useSetting, gint fore);
extern void gtk_scintilla_set_whitespace_back (GtkScintilla *sci, gboolean useSetting, gint back);
extern void gtk_scintilla_set_whitespace_size (GtkScintilla *sci, gint size);
extern gint gtk_scintilla_get_whitespace_size (GtkScintilla *sci);
extern void gtk_scintilla_set_style_bits (GtkScintilla *sci, guchar bits);
extern guchar gtk_scintilla_get_style_bits (GtkScintilla *sci);
extern void gtk_scintilla_set_line_state (GtkScintilla *sci, gint line, gint state);
extern gint gtk_scintilla_get_line_state (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_max_line_state (GtkScintilla *sci);
extern gboolean gtk_scintilla_get_caret_line_visible (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_line_visible (GtkScintilla *sci, gboolean show);
extern gint gtk_scintilla_get_caret_line_back (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_line_back (GtkScintilla *sci, gint back);
extern void gtk_scintilla_auto_completion_show (GtkScintilla *sci, gint lenEntered, const gchar *itemList);
extern void gtk_scintilla_auto_completion_cancel (GtkScintilla *sci);
extern gboolean gtk_scintilla_auto_completion_active (GtkScintilla *sci);
extern gint gtk_scintilla_auto_completion_pos_start (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_complete (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_stops (GtkScintilla *sci, const gchar *characterSet);
extern void gtk_scintilla_auto_completion_set_separator (GtkScintilla *sci, gint separatorCharacter);
extern gint gtk_scintilla_auto_completion_get_separator (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_select (GtkScintilla *sci, const gchar *text);
extern void gtk_scintilla_auto_completion_set_cancel_at_start (GtkScintilla *sci, gboolean cancel);
extern gboolean gtk_scintilla_auto_completion_get_cancel_at_start (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_set_fill_ups (GtkScintilla *sci, const gchar *characterSet);
extern void gtk_scintilla_auto_completion_set_choose_single (GtkScintilla *sci, gboolean chooseSingle);
extern gboolean gtk_scintilla_auto_completion_get_choose_single (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_set_ignore_case (GtkScintilla *sci, gboolean ignoreCase);
extern gboolean gtk_scintilla_auto_completion_get_ignore_case (GtkScintilla *sci);
extern void gtk_scintilla_user_list_show (GtkScintilla *sci, gint listType, const gchar *itemList);
extern void gtk_scintilla_auto_completion_set_auto_hide (GtkScintilla *sci, gboolean autoHide);
extern gboolean gtk_scintilla_auto_completion_get_auto_hide (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_set_drop_rest_of_word (GtkScintilla *sci, gboolean dropRestOfWord);
extern gboolean gtk_scintilla_auto_completion_get_drop_rest_of_word (GtkScintilla *sci);
extern void gtk_scintilla_register_image (GtkScintilla *sci, gint type, const gchar *xpmData);
extern void gtk_scintilla_clear_registered_images (GtkScintilla *sci);
extern gint gtk_scintilla_auto_completion_get_type_separator (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_set_type_separator (GtkScintilla *sci, gint separatorCharacter);
extern void gtk_scintilla_auto_completion_set_max_width (GtkScintilla *sci, gint characterCount);
extern gint gtk_scintilla_auto_completion_get_max_width (GtkScintilla *sci);
extern void gtk_scintilla_auto_completion_set_max_height (GtkScintilla *sci, gint rowCount);
extern gint gtk_scintilla_auto_completion_get_max_height (GtkScintilla *sci);
extern void gtk_scintilla_set_indent (GtkScintilla *sci, gint indentSize);
extern gint gtk_scintilla_get_indent (GtkScintilla *sci);
extern void gtk_scintilla_set_use_tabs (GtkScintilla *sci, gboolean useTabs);
extern gboolean gtk_scintilla_get_use_tabs (GtkScintilla *sci);
extern void gtk_scintilla_set_line_indentation (GtkScintilla *sci, gint line, gint indentSize);
extern gint gtk_scintilla_get_line_indentation (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_line_indent_position (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_column (GtkScintilla *sci, gint pos);
extern void gtk_scintilla_set_h_scroll_bar (GtkScintilla *sci, gboolean show);
extern gboolean gtk_scintilla_get_h_scroll_bar (GtkScintilla *sci);
extern void gtk_scintilla_set_indentation_guides (GtkScintilla *sci, gint indentView);
extern gint gtk_scintilla_get_indentation_guides (GtkScintilla *sci);
extern void gtk_scintilla_set_highlight_guide (GtkScintilla *sci, gint column);
extern gint gtk_scintilla_get_highlight_guide (GtkScintilla *sci);
extern gint gtk_scintilla_get_line_end_position (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_code_page (GtkScintilla *sci);
extern gint gtk_scintilla_get_caret_fore (GtkScintilla *sci);
extern gboolean gtk_scintilla_get_use_palette (GtkScintilla *sci);
extern gboolean gtk_scintilla_get_read_only (GtkScintilla *sci);
extern void gtk_scintilla_set_current_pos (GtkScintilla *sci, gint pos);
extern void gtk_scintilla_set_selection_start (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_get_selection_start (GtkScintilla *sci);
extern void gtk_scintilla_set_selection_end (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_get_selection_end (GtkScintilla *sci);
extern void gtk_scintilla_set_print_magnification (GtkScintilla *sci, gint magnification);
extern gint gtk_scintilla_get_print_magnification (GtkScintilla *sci);
extern void gtk_scintilla_set_print_colour_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_print_colour_mode (GtkScintilla *sci);
extern gboolean gtk_scintilla_find_text (GtkScintilla *sci, 
									const gchar *pattern,
									gint search_start_pos, gint search_end_pos, 
									gint *found_start_pos, gint *found_end_pos,
									gint flags);
extern gint gtk_scintilla_format_range (GtkScintilla *sci, gboolean draw, struct Sci_RangeToFormat *fr);
extern gint gtk_scintilla_get_first_visible_line (GtkScintilla *sci);
extern gchar *gtk_scintilla_get_line (GtkScintilla *sci, guint line);
extern gint gtk_scintilla_get_line_count (GtkScintilla *sci);
extern void gtk_scintilla_set_margin_left (GtkScintilla *sci, gint pixelWidth);
extern gint gtk_scintilla_get_margin_left (GtkScintilla *sci);
extern void gtk_scintilla_set_margin_right (GtkScintilla *sci, gint pixelWidth);
extern gint gtk_scintilla_get_margin_right (GtkScintilla *sci);
extern gboolean gtk_scintilla_get_modify (GtkScintilla *sci);
extern void gtk_scintilla_set_sel (GtkScintilla *sci, gint start, gint end);
extern gint gtk_scintilla_get_sel_text (GtkScintilla *sci, gchar *text);
extern gchar *gtk_scintilla_get_text_range (GtkScintilla *sci, guint start_pos, gint end_pos);
extern void gtk_scintilla_hide_selection (GtkScintilla *sci, gboolean normal);
extern gint gtk_scintilla_point_x_from_position (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_point_y_from_position (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_line_from_position (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_position_from_line (GtkScintilla *sci, gint line);
extern void gtk_scintilla_line_scroll (GtkScintilla *sci, gint columns, gint lines);
extern void gtk_scintilla_scroll_caret (GtkScintilla *sci);
extern void gtk_scintilla_replace_selection (GtkScintilla *sci, const gchar *text);
extern void gtk_scintilla_set_read_only (GtkScintilla *sci, gboolean read_only);
extern void gtk_scintilla_null (GtkScintilla *sci);
extern gboolean gtk_scintilla_can_paste (GtkScintilla *sci);
extern gboolean gtk_scintilla_can_undo (GtkScintilla *sci);
extern void gtk_scintilla_empty_undo_buffer (GtkScintilla *sci);
extern void gtk_scintilla_undo (GtkScintilla *sci);
extern void gtk_scintilla_cut (GtkScintilla *sci);
extern void gtk_scintilla_copy (GtkScintilla *sci);
extern void gtk_scintilla_paste (GtkScintilla *sci);
extern void gtk_scintilla_clear (GtkScintilla *sci);
extern void gtk_scintilla_set_text (GtkScintilla *sci, const gchar *text);
extern gchar *gtk_scintilla_get_text (GtkScintilla *sci);
extern gint gtk_scintilla_get_text_length (GtkScintilla *sci);
extern gint gtk_scintilla_get_direct_function (GtkScintilla *sci);
extern gint gtk_scintilla_get_direct_pointer (GtkScintilla *sci);
extern void gtk_scintilla_set_overtype (GtkScintilla *sci, gboolean overtype);
extern gboolean gtk_scintilla_get_overtype (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_width (GtkScintilla *sci, gint pixelWidth);
extern gint gtk_scintilla_get_caret_width (GtkScintilla *sci);
extern void gtk_scintilla_set_target_start (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_get_target_start (GtkScintilla *sci);
extern void gtk_scintilla_set_target_end (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_get_target_end (GtkScintilla *sci);
extern gint gtk_scintilla_replace_target (GtkScintilla *sci, const gchar *text, gint length);
extern gint gtk_scintilla_replace_target_regex (GtkScintilla *sci, const gchar *text, gint length);
extern gint gtk_scintilla_search_in_target (GtkScintilla *sci, const gchar *text);
extern void gtk_scintilla_set_search_flags (GtkScintilla *sci, gint flags);
extern gint gtk_scintilla_get_search_flags (GtkScintilla *sci);
extern void gtk_scintilla_call_tip_show (GtkScintilla *sci, gint pos, const gchar *definition);
extern void gtk_scintilla_call_tip_cancel (GtkScintilla *sci);
extern gboolean gtk_scintilla_call_tip_active (GtkScintilla *sci);
extern gint gtk_scintilla_call_tip_pos_start (GtkScintilla *sci);
extern void gtk_scintilla_call_tip_set_hlt (GtkScintilla *sci, gint start, gint end);
extern void gtk_scintilla_call_tip_set_back (GtkScintilla *sci, gint back);
extern void gtk_scintilla_call_tip_set_fore (GtkScintilla *sci, gint fore);
extern void gtk_scintilla_call_tip_set_fore_hlt (GtkScintilla *sci, gint fore);
extern void gtk_scintilla_call_tip_use_style (GtkScintilla *sci, gint tabSize);
extern gint gtk_scintilla_visible_from_doc_line (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_doc_line_from_visible (GtkScintilla *sci, gint lineDisplay);
extern gint gtk_scintilla_wrap_count (GtkScintilla *sci, gint line);
extern void gtk_scintilla_set_fold_level (GtkScintilla *sci, gint line, gint level);
extern gint gtk_scintilla_get_fold_level (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_last_child (GtkScintilla *sci, gint line, gint level);
extern gint gtk_scintilla_get_fold_parent (GtkScintilla *sci, gint line);
extern void gtk_scintilla_show_lines (GtkScintilla *sci, gint lineStart, gint lineEnd);
extern void gtk_scintilla_hide_lines (GtkScintilla *sci, gint lineStart, gint lineEnd);
extern gboolean gtk_scintilla_get_line_visible (GtkScintilla *sci, gint line);
extern void gtk_scintilla_set_fold_expanded (GtkScintilla *sci, gint line, gboolean expanded);
extern gboolean gtk_scintilla_get_fold_expanded (GtkScintilla *sci, gint line);
extern void gtk_scintilla_toggle_fold (GtkScintilla *sci, gint line);
extern void gtk_scintilla_ensure_visible (GtkScintilla *sci, gint line);
extern void gtk_scintilla_set_fold_flags (GtkScintilla *sci, gint flags);
extern void gtk_scintilla_ensure_visible_enforce_policy (GtkScintilla *sci, gint line);
extern void gtk_scintilla_set_tab_indents (GtkScintilla *sci, gboolean tabIndents);
extern gboolean gtk_scintilla_get_tab_indents (GtkScintilla *sci);
extern void gtk_scintilla_set_backspace_unindents (GtkScintilla *sci, gboolean bsUnIndents);
extern gboolean gtk_scintilla_get_backspace_unindents (GtkScintilla *sci);
extern void gtk_scintilla_set_mouse_dwell_time (GtkScintilla *sci, gint periodMilliseconds);
extern gint gtk_scintilla_get_mouse_dwell_time (GtkScintilla *sci);
extern gint gtk_scintilla_word_start_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters);
extern gint gtk_scintilla_word_end_position (GtkScintilla *sci, gint pos, gboolean onlyWordCharacters);
extern void gtk_scintilla_set_wrap_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_wrap_mode (GtkScintilla *sci);
extern void gtk_scintilla_set_wrap_visual_flags (GtkScintilla *sci, gint wrapVisualFlags);
extern gint gtk_scintilla_get_wrap_visual_flags (GtkScintilla *sci);
extern void gtk_scintilla_set_wrap_visual_flags_location (GtkScintilla *sci, gint wrapVisualFlagsLocation);
extern gint gtk_scintilla_get_wrap_visual_flags_location (GtkScintilla *sci);
extern void gtk_scintilla_set_wrap_start_indent (GtkScintilla *sci, gint indent);
extern gint gtk_scintilla_get_wrap_start_indent (GtkScintilla *sci);
extern void gtk_scintilla_set_wrap_indent_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_wrap_indent_mode (GtkScintilla *sci);
extern void gtk_scintilla_set_layout_cache (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_layout_cache (GtkScintilla *sci);
extern void gtk_scintilla_set_scroll_width (GtkScintilla *sci, gint pixelWidth);
extern gint gtk_scintilla_get_scroll_width (GtkScintilla *sci);
extern void gtk_scintilla_set_scroll_width_tracking (GtkScintilla *sci, gboolean tracking);
extern gboolean gtk_scintilla_get_scroll_width_tracking (GtkScintilla *sci);
extern gint gtk_scintilla_text_width (GtkScintilla *sci, gint style, const gchar *text);
extern void gtk_scintilla_set_end_at_last_line (GtkScintilla *sci, gboolean endAtLastLine);
extern gboolean gtk_scintilla_get_end_at_last_line (GtkScintilla *sci);
extern gint gtk_scintilla_text_height (GtkScintilla *sci, gint line);
extern void gtk_scintilla_set_vscrollbar (GtkScintilla *sci, gboolean show);
extern gboolean gtk_scintilla_get_vscrollbar (GtkScintilla *sci);
extern void gtk_scintilla_append_text (GtkScintilla *sci, guint length, const gchar *text);
extern gboolean gtk_scintilla_get_two_phase_draw (GtkScintilla *sci);
extern void gtk_scintilla_set_two_phase_draw (GtkScintilla *sci, gboolean twoPhase);
extern void gtk_scintilla_set_font_quality (GtkScintilla *sci, gint fontQuality);
extern gint gtk_scintilla_get_font_quality (GtkScintilla *sci);
extern void gtk_scintilla_set_first_visible_line (GtkScintilla *sci, gint lineDisplay);
extern void gtk_scintilla_set_multi_paste (GtkScintilla *sci, gint multiPaste);
extern gint gtk_scintilla_get_multi_paste (GtkScintilla *sci);
extern gchar *gtk_scintilla_get_tag (GtkScintilla *sci, gint tag_number);
extern void gtk_scintilla_target_from_selection (GtkScintilla *sci);
extern void gtk_scintilla_lines_join (GtkScintilla *sci);
extern void gtk_scintilla_lines_split (GtkScintilla *sci, gint pixelWidth);
extern void gtk_scintilla_set_fold_margin_colour (GtkScintilla *sci, gboolean useSetting, gint back);
extern void gtk_scintilla_set_fold_margin_hi_colour (GtkScintilla *sci, gboolean useSetting, gint fore);
extern void gtk_scintilla_line_down (GtkScintilla *sci);
extern void gtk_scintilla_line_down_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_up (GtkScintilla *sci);
extern void gtk_scintilla_line_up_extend (GtkScintilla *sci);
extern void gtk_scintilla_char_left (GtkScintilla *sci);
extern void gtk_scintilla_char_left_extend (GtkScintilla *sci);
extern void gtk_scintilla_char_right (GtkScintilla *sci);
extern void gtk_scintilla_char_right_extend (GtkScintilla *sci);
extern void gtk_scintilla_word_left (GtkScintilla *sci);
extern void gtk_scintilla_word_left_extend (GtkScintilla *sci);
extern void gtk_scintilla_word_right (GtkScintilla *sci);
extern void gtk_scintilla_word_right_extend (GtkScintilla *sci);
extern void gtk_scintilla_home (GtkScintilla *sci);
extern void gtk_scintilla_home_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_end (GtkScintilla *sci);
extern void gtk_scintilla_line_end_extend (GtkScintilla *sci);
extern void gtk_scintilla_document_start (GtkScintilla *sci);
extern void gtk_scintilla_document_start_extend (GtkScintilla *sci);
extern void gtk_scintilla_document_end (GtkScintilla *sci);
extern void gtk_scintilla_document_end_extend (GtkScintilla *sci);
extern void gtk_scintilla_page_up (GtkScintilla *sci);
extern void gtk_scintilla_page_up_extend (GtkScintilla *sci);
extern void gtk_scintilla_page_down (GtkScintilla *sci);
extern void gtk_scintilla_page_down_extend (GtkScintilla *sci);
extern void gtk_scintilla_edit_toggle_overtype (GtkScintilla *sci);
extern void gtk_scintilla_cancel (GtkScintilla *sci);
extern void gtk_scintilla_delete_back (GtkScintilla *sci);
extern void gtk_scintilla_tab (GtkScintilla *sci);
extern void gtk_scintilla_back_tab (GtkScintilla *sci);
extern void gtk_scintilla_new_line (GtkScintilla *sci);
extern void gtk_scintilla_form_feed (GtkScintilla *sci);
extern void gtk_scintilla_visible_char_home (GtkScintilla *sci);
extern void gtk_scintilla_visible_char_home_extend (GtkScintilla *sci);
extern void gtk_scintilla_zoom_in (GtkScintilla *sci);
extern void gtk_scintilla_zoom_out (GtkScintilla *sci);
extern void gtk_scintilla_del_word_left (GtkScintilla *sci);
extern void gtk_scintilla_del_word_right (GtkScintilla *sci);
extern void gtk_scintilla_del_word_right_end (GtkScintilla *sci);
extern void gtk_scintilla_line_cut (GtkScintilla *sci);
extern void gtk_scintilla_line_delete (GtkScintilla *sci);
extern void gtk_scintilla_line_transpose (GtkScintilla *sci);
extern void gtk_scintilla_line_duplicate (GtkScintilla *sci);
extern void gtk_scintilla_lower_case (GtkScintilla *sci);
extern void gtk_scintilla_upper_case (GtkScintilla *sci);
extern void gtk_scintilla_line_scroll_down (GtkScintilla *sci);
extern void gtk_scintilla_line_scroll_up (GtkScintilla *sci);
extern void gtk_scintilla_delete_back_not_line (GtkScintilla *sci);
extern void gtk_scintilla_home_display (GtkScintilla *sci);
extern void gtk_scintilla_home_display_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_end_display (GtkScintilla *sci);
extern void gtk_scintilla_line_end_display_extend (GtkScintilla *sci);
extern void gtk_scintilla_home_wrap (GtkScintilla *sci);
extern void gtk_scintilla_home_wrap_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_end_wrap (GtkScintilla *sci);
extern void gtk_scintilla_line_end_wrap_extend (GtkScintilla *sci);
extern void gtk_scintilla_visible_char_home_wrap (GtkScintilla *sci);
extern void gtk_scintilla_visible_char_home_wrap_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_copy (GtkScintilla *sci);
extern void gtk_scintilla_move_caret_inside_view (GtkScintilla *sci);
extern gint gtk_scintilla_line_length (GtkScintilla *sci, gint line);
extern void gtk_scintilla_brace_highlight (GtkScintilla *sci, gint pos1, gint pos2);
extern void gtk_scintilla_brace_bad_light (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_brace_match (GtkScintilla *sci, gint pos);
extern gboolean gtk_scintilla_get_view_eol (GtkScintilla *sci);
extern void gtk_scintilla_set_view_eol (GtkScintilla *sci, gboolean visible);
extern gint gtk_scintilla_get_doc_pointer (GtkScintilla *sci);
extern void gtk_scintilla_set_doc_pointer (GtkScintilla *sci, gint pointer);
extern void gtk_scintilla_set_mod_event_mask (GtkScintilla *sci, gint mask);
extern gint gtk_scintilla_get_edge_column (GtkScintilla *sci);
extern void gtk_scintilla_set_edge_column (GtkScintilla *sci, gint column);
extern gint gtk_scintilla_get_edge_mode (GtkScintilla *sci);
extern void gtk_scintilla_set_edge_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_edge_colour (GtkScintilla *sci);
extern void gtk_scintilla_set_edge_colour (GtkScintilla *sci, gint edgeColour);
extern void gtk_scintilla_search_anchor (GtkScintilla *sci);
extern gint gtk_scintilla_search_next (GtkScintilla *sci, const gchar *text, gint flags);
extern gint gtk_scintilla_search_previous (GtkScintilla *sci, const gchar *text, gint flags);
extern gint gtk_scintilla_lines_on_screen (GtkScintilla *sci);
extern void gtk_scintilla_use_pop_up (GtkScintilla *sci, gboolean allowPopUp);
extern gboolean gtk_scintilla_selection_is_rectangle (GtkScintilla *sci);
extern void gtk_scintilla_set_zoom (GtkScintilla *sci, gint zoom);
extern gint gtk_scintilla_get_zoom (GtkScintilla *sci);
extern gint gtk_scintilla_create_document (GtkScintilla *sci);
extern void gtk_scintilla_add_ref_document (GtkScintilla *sci, gint doc);
extern void gtk_scintilla_release_document (GtkScintilla *sci, gint doc);
extern gint gtk_scintilla_get_mod_event_mask (GtkScintilla *sci);
extern void gtk_scintilla_set_focus (GtkScintilla *sci, gboolean focus);
extern gboolean gtk_scintilla_get_focus (GtkScintilla *sci);
extern void gtk_scintilla_set_status (GtkScintilla *sci, gint statusCode);
extern gint gtk_scintilla_get_status (GtkScintilla *sci);
extern void gtk_scintilla_set_mouse_down_captures (GtkScintilla *sci, gboolean captures);
extern gboolean gtk_scintilla_get_mouse_down_captures (GtkScintilla *sci);
extern void gtk_scintilla_set_cursor (GtkScintilla *sci, gint cursorType);
extern gint gtk_scintilla_get_cursor (GtkScintilla *sci);
extern void gtk_scintilla_set_control_char_symbol (GtkScintilla *sci, gint symbol);
extern gint gtk_scintilla_get_control_char_symbol (GtkScintilla *sci);
extern void gtk_scintilla_word_part_left (GtkScintilla *sci);
extern void gtk_scintilla_word_part_left_extend (GtkScintilla *sci);
extern void gtk_scintilla_word_part_right (GtkScintilla *sci);
extern void gtk_scintilla_word_part_right_extend (GtkScintilla *sci);
extern void gtk_scintilla_set_visible_policy (GtkScintilla *sci, gint visiblePolicy, gint visibleSlop);
extern void gtk_scintilla_del_line_left (GtkScintilla *sci);
extern void gtk_scintilla_del_line_right (GtkScintilla *sci);
extern void gtk_scintilla_set_x_offset (GtkScintilla *sci, gint newOffset);
extern gint gtk_scintilla_get_x_offset (GtkScintilla *sci);
extern void gtk_scintilla_choose_caret_x (GtkScintilla *sci);
extern void gtk_scintilla_grab_focus (GtkScintilla *sci);
extern void gtk_scintilla_set_x_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop);
extern void gtk_scintilla_set_y_caret_policy (GtkScintilla *sci, gint caretPolicy, gint caretSlop);
extern void gtk_scintilla_set_print_wrap_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_print_wrap_mode (GtkScintilla *sci);
extern void gtk_scintilla_set_hotspot_active_fore (GtkScintilla *sci, gboolean useSetting, gint fore);
extern gint gtk_scintilla_get_hotspot_active_fore (GtkScintilla *sci);
extern void gtk_scintilla_set_hotspot_active_back (GtkScintilla *sci, gboolean useSetting, gint back);
extern gint gtk_scintilla_get_hotspot_active_back (GtkScintilla *sci);
extern void gtk_scintilla_set_hotspot_active_underline (GtkScintilla *sci, gboolean underline);
extern gboolean gtk_scintilla_get_hotspot_active_underline (GtkScintilla *sci);
extern void gtk_scintilla_set_hotspot_single_line (GtkScintilla *sci, gboolean singleLine);
extern gboolean gtk_scintilla_get_hotspot_single_line (GtkScintilla *sci);
extern void gtk_scintilla_para_down (GtkScintilla *sci);
extern void gtk_scintilla_para_down_extend (GtkScintilla *sci);
extern void gtk_scintilla_para_up (GtkScintilla *sci);
extern void gtk_scintilla_para_up_extend (GtkScintilla *sci);
extern gint gtk_scintilla_position_before (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_position_after (GtkScintilla *sci, gint pos);
extern void gtk_scintilla_copy_range (GtkScintilla *sci, gint start, gint end);
extern void gtk_scintilla_copy_text (GtkScintilla *sci, gint length, const gchar *text);
extern void gtk_scintilla_set_selection_mode (GtkScintilla *sci, gint mode);
extern gint gtk_scintilla_get_selection_mode (GtkScintilla *sci);
extern gint gtk_scintilla_get_line_sel_start_position (GtkScintilla *sci, gint line);
extern gint gtk_scintilla_get_line_sel_end_position (GtkScintilla *sci, gint line);
extern void gtk_scintilla_line_down_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_up_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_char_left_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_char_right_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_home_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_visible_char_home_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_line_end_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_page_up_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_page_down_rect_extend (GtkScintilla *sci);
extern void gtk_scintilla_stuttered_page_up (GtkScintilla *sci);
extern void gtk_scintilla_stuttered_page_up_extend (GtkScintilla *sci);
extern void gtk_scintilla_stuttered_page_down (GtkScintilla *sci);
extern void gtk_scintilla_stuttered_page_down_extend (GtkScintilla *sci);
extern void gtk_scintilla_word_left_end (GtkScintilla *sci);
extern void gtk_scintilla_word_left_end_extend (GtkScintilla *sci);
extern void gtk_scintilla_word_right_end (GtkScintilla *sci);
extern void gtk_scintilla_word_right_end_extend (GtkScintilla *sci);
extern void gtk_scintilla_set_whitespace_chars (GtkScintilla *sci, const gchar *characters);
extern void gtk_scintilla_set_chars_default (GtkScintilla *sci);
extern gint gtk_scintilla_auto_completion_get_current (GtkScintilla *sci);
extern gint gtk_scintilla_auto_completion_get_current_text (GtkScintilla *sci, gchar *s);
extern void gtk_scintilla_allocate (GtkScintilla *sci, guint bytes);
extern gchar *gtk_scintilla_target_as_utf8 (GtkScintilla *sci);
/*extern void gtk_scintilla_set_length_for_encode (GtkScintilla *sci, gint bytes);*/
extern gchar *gtk_scintilla_encoded_from_utf8 (GtkScintilla *sci, const gchar *utf8, gint bytes);
extern gint gtk_scintilla_find_column (GtkScintilla *sci, gint line, gint column);
extern gint gtk_scintilla_get_caret_sticky (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_sticky (GtkScintilla *sci, gint useCaretStickyBehaviour);
extern void gtk_scintilla_toggle_caret_sticky (GtkScintilla *sci);
extern void gtk_scintilla_set_paste_convert_endings (GtkScintilla *sci, gboolean convert);
extern gboolean gtk_scintilla_get_paste_convert_endings (GtkScintilla *sci);
extern void gtk_scintilla_selection_duplicate (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_line_back_alpha (GtkScintilla *sci, gint alpha);
extern gint gtk_scintilla_get_caret_line_back_alpha (GtkScintilla *sci);
extern void gtk_scintilla_set_caret_style (GtkScintilla *sci, gint caretStyle);
extern gint gtk_scintilla_get_caret_style (GtkScintilla *sci);
extern void gtk_scintilla_set_indicator_current (GtkScintilla *sci, gint indicator);
extern gint gtk_scintilla_get_indicator_current (GtkScintilla *sci);
extern void gtk_scintilla_set_indicator_value (GtkScintilla *sci, gint value);
extern gint gtk_scintilla_get_indicator_value (GtkScintilla *sci);
extern void gtk_scintilla_indicator_fill_range (GtkScintilla *sci, gint position, gint fillLength);
extern void gtk_scintilla_indicator_clear_range (GtkScintilla *sci, gint position, gint clearLength);
extern gint gtk_scintilla_indicator_all_on_for (GtkScintilla *sci, gint position);
extern gint gtk_scintilla_indicator_value_at (GtkScintilla *sci, gint indicator, gint position);
extern gint gtk_scintilla_indicator_start (GtkScintilla *sci, gint indicator, gint position);
extern gint gtk_scintilla_indicator_end (GtkScintilla *sci, gint indicator, gint position);
extern void gtk_scintilla_set_position_cache (GtkScintilla *sci, gint size);
extern gint gtk_scintilla_get_position_cache (GtkScintilla *sci);
extern void gtk_scintilla_copy_allow_line (GtkScintilla *sci);
extern gint gtk_scintilla_get_character_pointer (GtkScintilla *sci);
extern void gtk_scintilla_set_keys_unicode (GtkScintilla *sci, gboolean keysUnicode);
extern gboolean gtk_scintilla_get_keys_unicode (GtkScintilla *sci);
extern void gtk_scintilla_indic_set_alpha (GtkScintilla *sci, gint indicator, gint alpha);
extern gint gtk_scintilla_indic_get_alpha (GtkScintilla *sci, gint indicator);
extern void gtk_scintilla_set_extra_ascent (GtkScintilla *sci, gint extraAscent);
extern gint gtk_scintilla_get_extra_ascent (GtkScintilla *sci);
extern void gtk_scintilla_set_extra_descent (GtkScintilla *sci, gint extraDescent);
extern gint gtk_scintilla_get_extra_descent (GtkScintilla *sci);
extern gint gtk_scintilla_marker_symbol_defined (GtkScintilla *sci, gint markerNumber);
extern void gtk_scintilla_margin_set_text (GtkScintilla *sci, gint line, const gchar *text);
extern gint gtk_scintilla_margin_get_text (GtkScintilla *sci, gint line, gchar *text);
extern void gtk_scintilla_margin_set_style (GtkScintilla *sci, gint line, gint style);
extern gint gtk_scintilla_margin_get_style (GtkScintilla *sci, gint line);
extern void gtk_scintilla_margin_set_styles (GtkScintilla *sci, gint line, const gchar *styles);
extern gint gtk_scintilla_margin_get_styles (GtkScintilla *sci, gint line, gchar *styles);
extern void gtk_scintilla_margin_text_clear_all (GtkScintilla *sci);
extern void gtk_scintilla_margin_set_style_offset (GtkScintilla *sci, gint style);
extern gint gtk_scintilla_margin_get_style_offset (GtkScintilla *sci);
extern void gtk_scintilla_annotation_set_text (GtkScintilla *sci, gint line, const gchar *text);
extern gint gtk_scintilla_annotation_get_text (GtkScintilla *sci, gint line, gchar *text);
extern void gtk_scintilla_annotation_set_style (GtkScintilla *sci, gint line, gint style);
extern gint gtk_scintilla_annotation_get_style (GtkScintilla *sci, gint line);
extern void gtk_scintilla_annotation_set_styles (GtkScintilla *sci, gint line, const gchar *styles);
extern gint gtk_scintilla_annotation_get_styles (GtkScintilla *sci, gint line, gchar *styles);
extern gint gtk_scintilla_annotation_get_lines (GtkScintilla *sci, gint line);
extern void gtk_scintilla_annotation_clear_all (GtkScintilla *sci);
extern void gtk_scintilla_annotation_set_visible (GtkScintilla *sci, gint visible);
extern gint gtk_scintilla_annotation_get_visible (GtkScintilla *sci);
extern void gtk_scintilla_annotation_set_style_offset (GtkScintilla *sci, gint style);
extern gint gtk_scintilla_annotation_get_style_offset (GtkScintilla *sci);
extern void gtk_scintilla_add_undo_action (GtkScintilla *sci, gint token, gint flags);
extern gint gtk_scintilla_char_position_from_point (GtkScintilla *sci, gint x, gint y);
extern gint gtk_scintilla_char_position_from_point_close (GtkScintilla *sci, gint x, gint y);
extern void gtk_scintilla_set_multiple_selection (GtkScintilla *sci, gboolean multipleSelection);
extern gboolean gtk_scintilla_get_multiple_selection (GtkScintilla *sci);
extern void gtk_scintilla_set_additional_selection_typing (GtkScintilla *sci, gboolean additionalSelectionTyping);
extern gboolean gtk_scintilla_get_additional_selection_typing (GtkScintilla *sci);
extern void gtk_scintilla_set_additional_carets_blink (GtkScintilla *sci, gboolean additionalCaretsBlink);
extern gboolean gtk_scintilla_get_additional_carets_blink (GtkScintilla *sci);
extern void gtk_scintilla_set_additional_carets_visible (GtkScintilla *sci, gboolean additionalCaretsBlink);
extern gboolean gtk_scintilla_get_additional_carets_visible (GtkScintilla *sci);
extern gint gtk_scintilla_get_selections (GtkScintilla *sci);
extern void gtk_scintilla_clear_selections (GtkScintilla *sci);
extern gint gtk_scintilla_set_selection (GtkScintilla *sci, gint caret, gint anchor);
extern gint gtk_scintilla_add_selection (GtkScintilla *sci, gint caret, gint anchor);
extern void gtk_scintilla_set_main_selection (GtkScintilla *sci, gint selection);
extern gint gtk_scintilla_get_main_selection (GtkScintilla *sci);
extern void gtk_scintilla_set_selection_n_caret (GtkScintilla *sci, gint selection, gint pos);
extern gint gtk_scintilla_get_selection_n_caret (GtkScintilla *sci, gint selection);
extern void gtk_scintilla_set_selection_n_anchor (GtkScintilla *sci, gint selection, gint posAnchor);
extern gint gtk_scintilla_get_selection_n_anchor (GtkScintilla *sci, gint selection);
extern void gtk_scintilla_set_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection, gint space);
extern gint gtk_scintilla_get_selection_n_caret_virtual_space (GtkScintilla *sci, gint selection);
extern void gtk_scintilla_set_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection, gint space);
extern gint gtk_scintilla_get_selection_n_anchor_virtual_space (GtkScintilla *sci, gint selection);
extern void gtk_scintilla_set_selection_n_start (GtkScintilla *sci, gint selection, gint pos);
extern gint gtk_scintilla_get_selection_n_start (GtkScintilla *sci, gint selection);
extern gint gtk_scintilla_get_selection_n_end (GtkScintilla *sci, gint selection);
extern void gtk_scintilla_set_rectangular_selection_caret (GtkScintilla *sci, gint pos);
extern gint gtk_scintilla_get_rectangular_selection_caret (GtkScintilla *sci);
extern void gtk_scintilla_set_rectangular_selection_anchor (GtkScintilla *sci, gint posAnchor);
extern gint gtk_scintilla_get_rectangular_selection_anchor (GtkScintilla *sci);
extern void gtk_scintilla_set_rectangular_selection_caret_virtual_space (GtkScintilla *sci, gint space);
extern gint gtk_scintilla_get_rectangular_selection_caret_virtual_space (GtkScintilla *sci);
extern void gtk_scintilla_set_rectangular_selection_anchor_virtual_space (GtkScintilla *sci, gint space);
extern gint gtk_scintilla_get_rectangular_selection_anchor_virtual_space (GtkScintilla *sci);
extern void gtk_scintilla_set_virtual_space_options (GtkScintilla *sci, gint virtualSpaceOptions);
extern gint gtk_scintilla_get_virtual_space_options (GtkScintilla *sci);
extern void gtk_scintilla_set_rectangular_selection_modifier (GtkScintilla *sci, gint modifier);
extern gint gtk_scintilla_get_rectangular_selection_modifier (GtkScintilla *sci);
extern void gtk_scintilla_set_additional_sel_fore (GtkScintilla *sci, gint fore);
extern void gtk_scintilla_set_additional_sel_back (GtkScintilla *sci, gint back);
extern void gtk_scintilla_set_additional_sel_alpha (GtkScintilla *sci, gint alpha);
extern gint gtk_scintilla_get_additional_sel_alpha (GtkScintilla *sci);
extern void gtk_scintilla_set_additional_caret_fore (GtkScintilla *sci, gint fore);
extern gint gtk_scintilla_get_additional_caret_fore (GtkScintilla *sci);
extern void gtk_scintilla_rotate_selection (GtkScintilla *sci);
extern void gtk_scintilla_swap_main_anchor_caret (GtkScintilla *sci);
extern void gtk_scintilla_start_record (GtkScintilla *sci);
extern void gtk_scintilla_stop_record (GtkScintilla *sci);
extern void gtk_scintilla_set_lexer (GtkScintilla *sci, gint lexer);
extern gint gtk_scintilla_get_lexer (GtkScintilla *sci);
extern void gtk_scintilla_colourise (GtkScintilla *sci, gint start, gint end);
extern void gtk_scintilla_set_lexer_property (GtkScintilla *sci, const gchar *key, const gchar *value);
extern void gtk_scintilla_set_keywords (GtkScintilla *sci, gint keywordSet, const gchar *keyWords);
extern void gtk_scintilla_set_lexer_language (GtkScintilla *sci, const gchar *language);
extern void gtk_scintilla_load_lexer_library (GtkScintilla *sci, const gchar *path);
extern gint gtk_scintilla_get_lexer_property (GtkScintilla *sci, const gchar *key, gchar *buf);
extern gint gtk_scintilla_get_lexer_property_expanded (GtkScintilla *sci, const gchar *key, gchar *buf);
extern gint gtk_scintilla_get_lexer_property_int (GtkScintilla *sci, const gchar *key);
extern gint gtk_scintilla_get_style_bits_needed (GtkScintilla *sci);
extern gchar *gtk_scintilla_get_lexer_language (GtkScintilla *sci);

G_END_DECLS

#endif /* __GTKSCINTILLA_H__ */












