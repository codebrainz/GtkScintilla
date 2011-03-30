/**
 * SECTION: text
 * @short_description: Functions relating to text retrieval and modification.
 * @title: Text Retrieval and Modification
 * @stability: Unstable
 * @include: gtkscintilla.h
 * 
 * Each byte in a #GtkScintilla document is followed by an associated byte
 * of styling information.  The combination of a character byte and a style
 * byte is called a cell.  Style bytes are interpreted as an index into an
 * array of styles.
 * 
 * In this document, "character" normally refers to a byte even when 
 * multi-byte characters are used.  Lengths measure the number of bytes, not
 * the amount of characters in those bytes.
 * 
 * Positions within the #GtkScintilla document refer to a character or the gap
 * before that character.  The first character in a document is 0, the second 1
 * and so on.  If a document contains <emphasis>nLen</emphasis>, the last
 * character is numbered <emphasis>nLen</emphasis>-1.  The caret exists between
 * character positions and can be located from before the first character (0)
 * to after the last character (<emphasis>nLen</emphasis>).
 * 
 * There are places where the caret can not go where two character bytes make 
 * up one character.  This occurs when a DBCS character from a language like
 * Japanese is included in the document or when line ends are marked with the
 * CP/M standard of a carriage return followed by a line feed.  The
 * #GTK_SCINTILLA_INVALID_POSITION constant (-1) represents an invalid position
 * within the document.
 * 
 * All lines of text in #GtkScintilla are the same height, and this height is
 * calculated from the largest font in any current style.  This restriction
 * is for performance; if the lines differed in height then calculations
 * involving positioning of the text would require the to be styled first.
 */

#include "gtkscintilla.h"

/* todo:	implement properties for
 * 				- text
 * 				- read-only
 * 				- style-bits
 * 			see also in comments
 * 			check proper types (signed vs unsigned, etc)
 * 			error checking, assertions, etc
 * 			check get_char_at/style_at,etc for gchar size vs int,etc
 * 			rename 'target' to 'selection'?  same?
 * 			testing
 */

/**
 * gtk_scintilla_set_text:
 * @sci: 	The #GtkScintilla object.
 * @text:	The text to set in the document.
 * 
 * Replaces all the text in the document with @text.
 */
void gtk_scintilla_set_text (GtkScintilla *sci, const gchar *text) {
	SSM(SCINTILLA(sci), 2181, 0, (sptr_t)text);
}

/**
 * gtk_scintilla_get_text:
 * @sci:	The #GtkScintilla object.
 * 
 * Retrieves all the text in the document.
 * 
 * Returns:	A newly-allocated string containing a copy of the text in the
 * 			document.  Free with g_free().
 */
gchar *gtk_scintilla_get_text (GtkScintilla *sci) 
{
	gint len = gtk_scintilla_get_length(sci);
	gchar *tmp = g_malloc0(len+1); /* NULL ok */
	len = SSM(SCINTILLA(sci), 2182, (uptr_t)(len+1), (sptr_t)tmp);
	if (len == 0) {
		g_free(tmp);
		return NULL;
	}
	return tmp;
}

/**
 * gtk_scintilla_set_save_point:
 * @sci: The #GtkScintilla object.
 * 
 * Tells #GtkScintilla that the current state of the document is unmodified.
 * This is usually done when the file is saved or loaded, hence the name
 * "save point".  As #GtkScintilla performs undo and redo operations, it 
 * signals that it has entered or left the save point with the
 * #GtkScintilla::save-point-reached and #GtkScintilla::save-point-left
 * signals, allowing the user to know if the file should be considered dirty
 * or not.
 */
inline void gtk_scintilla_set_save_point (GtkScintilla *sci) {
	SSM(SCINTILLA(sci), 2014, 0, 0);
}

/**
 * gtk_scintilla_get_line:
 * @sci: 	The #GtkScintilla object.
 * @line:	The line number of the line to get.
 * 
 * Retrieves the text of the specifed @line number.  The returned text includes
 * any end of line characters.  If you ask for a line number outside the range
 * of lines in the document, NULL is returned.
 * 
 * Returns:	A newly-allocated string containing a copy of the text of the line
 * 			or NULL if an invalid line was specified. Free with g_free().
 */
gchar *gtk_scintilla_get_line (GtkScintilla *sci, guint line) 
{
	guint len = gtk_scintilla_line_length(sci, line);
	gchar *tmp = g_malloc0(len+1); /* NULL ok */
	len = SSM(SCINTILLA(sci), 2153, (uptr_t)line, (sptr_t)tmp);
	if (len == 0) {
		g_free(tmp);
		return NULL;
	}
	return tmp;
}

/**
 * gtk_scintilla_replace_selection:
 * @sci:	The #GtkScintilla object.
 * @text:	The text to replace the currently selected text with.
 * 
 * The currently selected text between the anchor and the current position is 
 * replaced by the 0 terminated @text string.  If the anchor and the current
 * position are the same, the text is inserted at the caret position.  The
 * caret is positioned after the inserted text and the caret is scrolled into
 * view.
 */
inline void gtk_scintilla_replace_selection (GtkScintilla *sci, const gchar *text) {
	SSM(SCINTILLA(sci), 2170, 0, (sptr_t)text);
}

/**
 * gtk_scintilla_set_read_only:
 * @sci:	The #GtkScintilla object.
 * @read_only:	Whether the document should be read-only or not.
 * 
 * Sets the read-only flag for the document.  If you mark a document as
 * read-only, attempts to modify the text cause the 
 * #GtkScintilla::modify-attempt-ro signal to be emitted.
 */
inline void gtk_scintilla_set_read_only (GtkScintilla *sci, gboolean read_only) {
	SSM(SCINTILLA(sci), 2171, (uptr_t)read_only, 0);
}

/**
 * gtk_scintilla_get_read_only:
 * @sci: The #GtkScintilla object.
 * 
 * Gets the read-only flag for the document.
 * 
 * Returns: TRUE if the document is read-only, FALSE if it is not.
 */
inline gboolean gtk_scintilla_get_read_only (GtkScintilla *sci) {
	return (gboolean)SSM(SCINTILLA(sci), 2140, 0, 0);
}

/**
 * gtk_scintilla_get_text_range:
 * @sci:		The #GtkScintilla object.
 * @start_pos:	The start position of the range.
 * @end_pos:	The end position of the range.
 * 
 * Gets the text between @start_pos and @end_pos.  If @end_pos is -1, text
 * is returned to the end of the document.
 * 
 * Returns: A newly-allocated string containing the text between the start and
 * 			end position or NULL if the the text could not be retrieved or was
 * 			empty.  Free with g_free().
 */
gchar *gtk_scintilla_get_text_range (GtkScintilla *sci, guint start_pos, gint end_pos) 
{
	gchar *tmp;
	guint last_pos, num_bytes, num_chars;
	struct Sci_TextRange tr;
	
	last_pos = gtk_scintilla_get_length(sci) - 1;
	
	g_return_val_if_fail(start_pos <= end_pos, NULL);
	g_return_val_if_fail(start_pos <= last_pos, NULL);
	g_return_val_if_fail(end_pos <= last_pos, NULL);
	g_return_val_if_fail(end_pos >= -1, NULL);
	
	tr.chrg.cpMin = start_pos;
	tr.chrg.cpMax = end_pos;
	
	if (tr.chrg.cpMax == -1)
		num_bytes = last_pos - tr.chrg.cpMin;
	else
		num_bytes = tr.chrg.cpMax - tr.chrg.cpMin;
	
	if (num_bytes == 0)
		return NULL;
		
	tr.lpstrText = g_malloc0(num_bytes+1); /* NULL ok */
	
	num_chars = SSM(SCINTILLA(sci), 2162, 0, (sptr_t)&tr);
	if (num_chars < 1) {
		g_free(tr.lpstrText); /* should contain just \0 */
		return NULL;
	}
	
	tmp = tr.lpstrText;
	return tmp;
}

/**
 * gtk_scintilla_get_styled_text_range:
 * @sci:		The #GtkScintilla object.
 * @start_pos:	The start position of the range.
 * @end_pos:	The end position of the range.
 * 
 * Gets styled text, using two bytes for each cell, with the character at the
 * lower address of each pair and the style byte at the upper address.
 * Characters between the text positions @start_pos and @end_pos are returned.
 * Two 0 bytes are added to the end of the text.
 * 
 * Returns: A newly-allocated string containing the style text (cells) between
 * 			@start_pos and @end_pos or NULL if the text could not be retrieved
 * 			or was empty.  Free with g_free().
 */
gchar *gtk_scintilla_get_styled_text_range (GtkScintilla *sci, guint start_pos, gint end_pos) 
{	
	gchar *tmp;
	guint last_pos, num_bytes, num_chars;
	struct Sci_TextRange tr;
	
	last_pos = gtk_scintilla_get_length(sci) - 1;
	
	g_return_val_if_fail(start_pos <= end_pos, NULL);
	g_return_val_if_fail(start_pos <= last_pos, NULL);
	g_return_val_if_fail(end_pos <= last_pos, NULL);
	g_return_val_if_fail(end_pos >= -1, NULL);
	
	tr.chrg.cpMin = start_pos;
	tr.chrg.cpMax = end_pos;
	
	if (tr.chrg.cpMax == -1)
		num_bytes = last_pos - tr.chrg.cpMin;
	else
		num_bytes = tr.chrg.cpMax - tr.chrg.cpMin;	
	num_bytes = num_bytes * 2; /* character byte and style byte */
	
	if (num_bytes == 0)
		return NULL;
	
	tr.lpstrText = g_malloc0(num_bytes+2); /* terminated with 00, NULL ok */
		
	num_chars = SSM(SCINTILLA(sci), 2015, 0, (sptr_t)&tr);
	if (num_chars < 1) {
		g_free(tr.lpstrText); /* should contain just 00 */
		return NULL;
	}
	
	tmp = tr.lpstrText;
	return tmp;
}

/**
 * gtk_scintilla_allocate:
 * @sci:	The #GtkScintilla object.
 * @bytes:	The number of bytes to allocate.
 * 
 * Allocates a document buffer large enough to store @bytes number of bytes. 
 * The document will not be made smaller than its current contents.
 */
inline void gtk_scintilla_allocate (GtkScintilla *sci, guint bytes) {
	SSM(SCINTILLA(sci), 2446, (uptr_t)bytes, 0);
}

/**
 * gtk_scintilla_add_text:
 * @sci:	The #GtkScintilla object.
 * @length:	The number of characters in @text to add.
 * @text:	The text to add the first @length characters of.
 * 
 * Inserts the first @length characters from the string @text at the current
 * position.  This will include any 0's in @text that you might have expected
 * to stop the insert operation.  The current position is set at the end of
 * the inserted text, but it is not scrolled into view.
 */
inline void gtk_scintilla_add_text (GtkScintilla *sci, guint length, const gchar *text) {
	SSM(SCINTILLA(sci), 2001, (uptr_t)length, (sptr_t)text);
}

/**
 * gtk_scintilla_add_styled_text:
 * @sci:			The #GtkScintilla object.
 * @length:			The number of cells in @text to add.
 * @styled_text:	The styled text to add the first @length characters of.
 * 
 * Inserts the first @legth cells from the styled @text at the current position.
 * This function behabes just like gtk_scintilla_add_text() except each byte 
 * contains both a character and style byte.
 * 
 * See also gtk_scintilla_get_styled_text_range() for a description of styled
 * text.
 */
inline void gtk_scintilla_add_styled_text (GtkScintilla *sci, guint length, const gchar *styled_text) {
	SSM(SCINTILLA(sci), 2002, (uptr_t)length, (sptr_t)styled_text);
}

/**
 * gtk_scintilla_append_text:
 * @sci:	The #GtkScintilla object.
 * @length:	The number of characters in @text to append.
 * @text:	The text to append the first @length characters of.
 * 
 * Adds the first @length characters from the string @text to the end of the
 * document.  This will include any 0's in the string that you might have
 * expected to stop the operation.  The current selection is not changed and
 * the new text is not scrolled into view.
 */
inline void gtk_scintilla_append_text (GtkScintilla *sci, guint length, const gchar *text) {
	SSM(SCINTILLA(sci), 2282, (uptr_t)length, (sptr_t)text);
}

/**
 * gtk_scintilla_insert_text:
 * @sci:	The #GtkScintilla object.
 * @pos:	The position to insert the @text at.
 * @text:	The text to insert at @pos.
 * 
 * Inserts the zero-terminated string @text at position @pos or at the current
 * position if @pos is -1.  If the current position is after the insertion 
 * point then it is moved along with its surrounding text but no scrolling is
 * performed.
 */
inline void gtk_scintilla_insert_text (GtkScintilla *sci, gint pos, const gchar *text) {
	SSM(SCINTILLA(sci), 2003, (uptr_t)pos, (sptr_t)text);
}

/**
 * gtk_scintilla_clear_all:
 * @sci:	The #GtkScintilla object.
 * 
 * Unless the document is read-only, this deletes all the text.
 */
inline void gtk_scintilla_clear_all (GtkScintilla *sci) {
	SSM(SCINTILLA(sci), 2004, 0, 0);
}

/**
 * gtk_scintilla_clear_document_style:
 * @sci:	The #GtkScintilla object.
 * 
 * When wanting to completely restyle the document, for example after choosing
 * a lexer, this can be used to clear all styling information and reset folding
 * state.
 */
inline void gtk_scintilla_clear_document_style (GtkScintilla *sci) {
	SSM(SCINTILLA(sci), 2005, 0, 0);
}

/**
 * gtk_scintilla_get_char_at:
 * @sci:	The #GtkScintilla object.
 * @pos:	The position of the character to get.
 * 
 * Gets the character at @pos in the document or 0 if @pos is negative or past
 * the end of the document.
 * 
 * Returns: The character at @pos or 0 if @pos is invalid.
 */
inline gchar gtk_scintilla_get_char_at (GtkScintilla *sci, guint pos) {
	return (gchar)SSM(SCINTILLA(sci), 2007, (uptr_t)pos, 0);
}

/**
 * gtk_scintilla_get_style_at:
 * @sci:	The #GtkScintilla object.
 * @pos:	The position of the style to get.
 * 
 * Gets the style at @pos in the document or 0 if @pos is negative or past the
 * end of the document.
 * 
 * Returns: The style at @pos or 0 if @pos is invalid.
 */
inline gchar gtk_scintilla_get_style_at (GtkScintilla *sci, guint pos) {
	return (gchar)SSM(SCINTILLA(sci), 2010, (uptr_t)pos, 0);
}

/**
 * gtk_scintilla_set_style_bits:
 * @sci:	The #GtkScintilla object.
 * @bits:	The number of bits in each cell to use for styling.
 * 
 * Sets the number of bits in each cell to use for styling, to a maximum of
 * 8 style bits.  The remaining bits can be used as indicators.  The standard
 * setting for @bits is 5.  The number of styling bits needed by the current
 * lexer can be found with gtk_scintilla_get_style_bits_needed().
 */
inline void gtk_scintilla_set_style_bits (GtkScintilla *sci, guchar bits) {
	SSM(SCINTILLA(sci), 2090, (uptr_t)bits, 0);
}

/**
 * gtk_scintilla_get_style_bits:
 * @sci:	The #GtkScintilla object.
 * 
 * Gets the number of bits in each cell to use for styling, to a maximum of 8
 * style bits.
 * 
 * Returns: The number of bits in each cell used for styling.
 */
inline guchar gtk_scintilla_get_style_bits (GtkScintilla *sci) {
	return (guchar)SSM(SCINTILLA(sci), 2091, 0, 0);
}

/**
 * gtk_scintilla_target_as_utf8:
 * @sci:	The #GtkScintilla object.
 * 
 * Retrieves the value of the target encoded as UTF-8.
 * 
 * Returns:	A newly allocated string containing the UTF-8 encoded target text
 * 			or NULL if the target size is 0.  Free with g_free().
 */
gchar *gtk_scintilla_target_as_utf8 (GtkScintilla *sci) 
{
	gint len = (gint)SSM(SCINTILLA(sci), 2447, 0, 0);
	gchar *tmp;
	g_return_val_if_fail(len != 0, NULL);
	tmp = g_malloc0(len+1);
	len = SSM(SCINTILLA(sci), 2447, 0, (sptr_t)tmp);
	if (len == 0) {
		g_free(tmp);
		return NULL;
	}
	return tmp;	
}

/**
 * gtk_scintilla_encoded_from_utf8:
 * @sci:	The #GtkScintilla object.
 * @utf8:	The UTF-8 encoded string to convert to the document's encoding.
 * @bytes:	The number of bytes of @utf8 to convert.
 * 
 * Converts @utf8 UTF-8 encoded string into the document's encoding which is 
 * useful for taking the results of a find dialog, for example, and receiving
 * a string of bytes that can be search for in the document.  Since the text
 * can contain nul bytes, the @bytes parameter maybe be used to set the length
 * that will be converted.  If @bytes is set to -1, the length is determined
 * by finding a nul byte.
 * 
 * Returns: A newly allocated string in containing the text from @utf8,
 * 			converted into the document's encoding, or NULL if the string
 * 			could not be converted.  Free with g_free().
 */
gchar *gtk_scintilla_encoded_from_utf8 (GtkScintilla *sci, const gchar *utf8, gint bytes) 
{
	gchar *tmp;
	gint len;
	g_return_val_if_fail(bytes >= -1, NULL);
	/* SCI_SETLENGTHFORENCODE */
	SSM(SCINTILLA(sci), 2448, (uptr_t)bytes, 0);
	len = (gint)SSM(SCINTILLA(sci), 2449, (uptr_t)utf8, 0);
	if(len == 0)
		return NULL;
	tmp = g_malloc0(len+1); /* NULL ok */
	len = (gint)SSM(SCINTILLA(sci), 2449, (uptr_t)utf8, (sptr_t)tmp);
	if (len == 0) {
		g_free(tmp);
		return NULL;
	}
	return tmp;
}
















