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

#include "gtkscintillaconstants.h"
#include "lexers/lexers.h"


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
	GtkFrame parent;
	GtkWidget *scintilla;
	GtkAccelGroup *accel_group;
    /*< private >*/
	GtkScintillaPrivate *priv;
};

struct _GtkScintillaClass
{
	GtkFrameClass parent_class;
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
GtkWidget*		gtk_scintilla_new					(void);

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
													
extern void		gtk_scintilla_release_resources			();


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

gchar *gtk_scintilla_get_background_color(GtkScintilla *self, gint style);
void gtk_scintilla_set_background_color(GtkScintilla *self, gint style, const gchar *color_spec);
gchar *gtk_scintilla_get_foreground_color(GtkScintilla *self, gint style);
void gtk_scintilla_set_foreground_color(GtkScintilla *self, gint style, const gchar *color_spec);

gchar *int_to_color_spec(gint int_color);
gint color_spec_to_int(const gchar *color_spec);

void gtk_scintilla_set_style   (GtkScintilla *self, 
								gint style_number,
								const gchar *font_spec,
								const gchar *fg_color,
								const gchar *bg_color);

#include "gtkscintillafunctions.h"

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
	/*TEXT_INSERTED,
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
	ANNOTATION_CHANGED,*/
	
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
	/* non-scintilla properties */
	PROP_LINE_NUMBERS_VISIBLE,
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

G_END_DECLS

#endif /* __GTKSCINTILLA_H__ */












