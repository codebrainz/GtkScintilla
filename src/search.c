/**
 * SECTION: search
 * @short_description: Functions relating to searching documents.
 * @title: Searching and Replacing
 * @stability: Unstable
 * @include: gtkscintilla.h
 * 
 * These are functions to search for text and for regular expressions.  For
 * functions which take flags as arguments, see #GtkScintillaSearchFlag for
 * descriptions of those flags.  If #GTK_SCINTILLA_SEARCH_FLAG_REGEXP is not
 * included in the search flags, you can search backwards to find the previous
 * occurrence of a search string by setting the end of the search range before
 * the start.  If #GTK_SCINTILLA_SEARCH_FLAG_REGEXP is included, searches are
 * always from a lower position to a higher position, even if the search range
 * is backwards.
 * 
 * In a regular expression, special characters interpreted are:
 * 
 * <itemizedlist>
 * 	<listitem>
 * 		<para>
 * 			<code>.</code> 
 * 			Matches any character
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\(</code>
 * 			This marks the start of a region for tagging a match.
 *		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\)</code>
 * 			This marks the end of a tagged region.
 *		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\n</code>
 * 			Where n is 1 through 9 refers to the first through ninth tagged 
 * 			region when replacing. For example, if the search string was 
 * 			Fred\([1-9]\)XXX and the replace string was Sam\1YYY, when applied 
 * 			to Fred2XXX this would generate Sam2YYY.
 *		</para>
 *	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\<</code>
 * 			This matches the start of a word using GtkScintilla's definitions 
 * 			of words.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\></code>
 * 			This matches the end of a word using Scintilla's definition of words.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>\x</code>
 * 			This allows you to use a character x that would otherwise have a 
 * 			special meaning. For example, \[ would be interpreted as [ and not 
 * 			as the start of a character set.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>[...]</code>
 * 			This indicates a set of characters, for example, [abc] means any of
 * 			the characters a, b or c. You can also use ranges, for example 
 * 			[a-z] for any lower case character.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>[^...]</code>
 * 			The complement of the characters in the set. For example, [^A-Za-z]
 * 			means any character except an alphabetic character.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>^</code>
 * 			This matches the start of a line (unless used inside a set, see above).
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>$</code>
 * 			This matches the end of a line.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>*</code>
 * 			This matches 0 or more times. For example, Sa*m matches Sm, Sam, 
 * 			Saam, Saaam and so on.
 * 		</para>
 * 	</listitem>
 * 	<listitem>
 * 		<para>
 * 			<code>+</code>
 * 			This matches 1 or more times. For example, Sa+m matches Sam, Saam, 
 * 			Saaam and so on.
 * 		</para>
 * 	</listitem>
 * </itemizedlist>
 */

#include <string.h>
#include "gtkscintilla.h"
#include "gtkscintillafunctions.h"

/**
 * gtk_scintilla_find_text:
 * @sci:				The #GtkScintilla object.
 * @text:				The search pattern.
 * @search_start_pos:	The position to start searching from.
 * @search_end_pos:		The position to end searching at.
 * @found_start_pos:	Location to store the start position of a match.
 * @found_end_pos:		Location to store the end position of a match.
 * @flags:				Search flags for the search.
 * 
 * Searches for text in the document.  It does not use or move the current
 * selection.  The @flags parameter controls search type and is one of the
 * #GtkScintillaSearchFlag flags, which includes regular expression searches.
 * 
 * If #GTK_SCINTILLA_SEARCH_FLAG_REGEXP is not included in the flags, you can
 * search backwards by setting @search_end_pos less that @search_start_pos.  If
 * #GTK_SCINTILLA_SEARCH_FLAG_REGEXP is included, the search is always forwards
 * (even if @search_end_pos is less than @search_start_pos).  
 */
gboolean gtk_scintilla_find_text (GtkScintilla *sci, 
									const gchar *pattern,
									gint search_start_pos, gint search_end_pos, 
									gint *found_start_pos, gint *found_end_pos,
									gint flags) 
{
	gint pos;
	struct Sci_TextToFind ttf;
	
	ttf.chrg.cpMin = search_start_pos;
	ttf.chrg.cpMax = search_end_pos;
	ttf.lpstrText = g_strdup(pattern);
	
	pos = (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2150, (uptr_t)flags, (sptr_t)&ttf);
	if (pos == -1) {
		g_free(ttf.lpstrText);
		return FALSE;
	}
	
	*found_start_pos = ttf.chrgText.cpMin;
	*found_end_pos = ttf.chrgText.cpMax;
	
	g_free(ttf.lpstrText);
	
	return TRUE;
}

/**
 * gtk_scintilla_search_anchor:
 * @sci:	The #GtkScintilla object.
 * 
 * Along with gtk_scintilla_search_next() and gtk_scintilla_search_previous()
 * this function provides relocatable search support.  This allows incremental
 * interactive search to be macro recorded while still setting the selection
 * to found text so the find/select operation is self-contained.  This function,
 * gtk_scintilla_search_next() and gtk_scintilla_search_previous() will emit
 * #GtkSignal::macro-record signals if macro recording is enabled.
 * 
 * This function sets the search start point used by gtk_scintilla_search_next()
 * and gtk_scintilla_search_previous() to the start of the current selection,
 * that is, the end of the selection that is nearer to the start of the 
 * document.  You should always call this function before calling
 * gtk_scintilla_search_next() or gtk_scintill_search_previous().
 */
inline void gtk_scintilla_search_anchor (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2366, 0, 0);
}

/**
 * gtk_scintilla_search_next:
 * @sci:	The #GtkScintilla object.
 * @text:	The text to search for.
 * @flags:	Search flags for the search.
 * 
 * Searches for the next occurrence of the zero terminated search string 
 * pointed at by @text.  The search is modified with @flags.  The selection is
 * updated to show the matched text, but it is not scrolled into view.
 * 
 * See gtk_scintilla_search_anchor() for more information.
 * 
 * Returns:	The start position of the matching text or -1 if nothing is found.
 */
inline gint gtk_scintilla_search_next (GtkScintilla *sci, const gchar *text, gint flags) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2367, (uptr_t)flags, (sptr_t)text);
}

/**
 * gtk_scintilla_search_previous:
 * @sci:	The #GtkScintilla object.
 * @text:	The text to search for.
 * @flags:	Search flags for the search.
 * 
 * Searches for the previous occurrence of the zero terminated search string
 * pointed at by @text.  The search is modified with @flags.  The selection is
 * updated to show the matched text, but it is not scrolled into view.  If 
 * a regular expression search is requested, finds the first occurrence of the
 * search string in the document, not the previous one before the anchor point.
 * 
 * See gtk_scintilla_search_anchor() for more information.
 * 
 * Returns:	The start position of the matching text or -1 if nothing is found.
 */
inline gint gtk_scintilla_search_previous (GtkScintilla *sci, const gchar *text, gint flags) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2368, (uptr_t)flags, (sptr_t)text);
}

/**
 * gtk_scintilla_set_target_start:
 * @sci:	The #GtkScintilla object.
 * @pos:	The target's start position.
 *
 * Sets the start of a target.  When searching in non-regular expression mode,
 * you can set start greater than end to find the last matching text in the 
 * target rather than the first matching text.  The target is also set by a
 * successful gtk_scintilla_search_in_target() call.
 */
inline void gtk_scintilla_set_target_start (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2190, (uptr_t)pos, 0);
}

/**
 * gtk_scintilla_get_target_start:
 * @sci:	The #GtkScintilla object.
 * 
 * Gets the start of a target.  See gtk_scintilla_set_target_start() for more
 * details.
 * 
 * Returns:	The start position of the target.
 */
inline gint gtk_scintilla_get_target_start (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2191, 0, 0);
}

/**
 * gtk_scintilla_set_target_end:
 * @sci:	The #GtkScintilla object.
 * @pos:	The target's end position.
 *
 * Sets the end of a target.  See gtk_scintilla_set_target_start() for more
 * details.
 */
inline void gtk_scintilla_set_target_end (GtkScintilla *sci, gint pos) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2192, (uptr_t)pos, 0);
}

/**
 * gtk_scintilla_get_target_end:
 * @sci:	The #GtkScintilla object.
 * 
 * Gets the end of a target.  See gtk_scintilla_set_target_start() for more
 * details.
 * 
 * Returns:	The end position of the target.
 */
inline gint gtk_scintilla_get_target_end (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2193, 0, 0);
}

/**
 * gtk_scintilla_target_from_selection:
 * @sci:	The #GtkScintilla object.
 * 
 * Set the target start and end to the start and end positions of the selection.
 */
inline void gtk_scintilla_target_from_selection (GtkScintilla *sci) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2287, 0, 0);
}

/**
 * gtk_scintilla_set_search_flags:
 * @sci:	The #GtkScintilla object.
 * @flags:	The search flags for searching.
 * 
 * Sets the #GtkScintillaSearchFlags used by gtk_scintilla_search_in_target().
 * There are several option flags including a simple regular expression search.
 */
inline void gtk_scintilla_set_search_flags (GtkScintilla *sci, gint flags) {
	scintilla_send_message(SCINTILLA(sci->scintilla), 2198, (uptr_t)flags, 0);
}

/**
 * gtk_scintilla_get_search_flags:
 * @sci:	The #GtkScintilla object.
 * 
 * Gets the #GtkScintillaSearchFlags used by gtk_scintilla_search_in_target().
 * See also gtk_scintilla_set_search_flags().
 * 
 * Returns: The search flags currently in use for 
 * 			gtk_scintilla_search_in_target().
 */
inline gint gtk_scintilla_get_search_flags (GtkScintilla *sci) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2199, 0, 0);
}

/**
 * gtk_scintilla_search_in_target:
 * @sci: 	The #GtkScintilla object.
 * @text:	The text to search for in target.
 * 
 * Searches for the first occurrence of a text string in the target defined
 * by gtk_scintilla_set_target_start() and gtk_scintilla_set_target_end().  The
 * search is modified by the search flags set by 
 * gtk_scintilla_set_search_flags().  If the search succeeds, the target is
 * set to the found text and the return value is the position of the start of 
 * the matching text.  If the search fails, the result is -1.
 * 
 * Returns:	The position of the start of the matching text or -1 if the search
 * 			fails.  
 */
gint gtk_scintilla_search_in_target (GtkScintilla *sci, const gchar *text) 
{
	gint len, pos;
	
	g_return_val_if_fail(text != NULL, -1);
	
	len = strlen(text);
	if (len == 0)
		return -1;
	
	pos = (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 
										2197, (uptr_t)len, (sptr_t)text);

	return pos;	
}

/**
 * gtk_scintilla_replace_target:
 * @sci:	The #GtkScintilla object.
 * @text:	The text to search for in the target.
 * @length:	The number of characters to replace the target with.
 * 
 * Replaces the target with @length characters from @text.  If @length is -1,
 * @text is zero-terminated, otherwise @length sets the number of characters to
 * replace the target with.  After replacement, the target range refers to the
 * replacement text.
 * 
 * Returns:	The length of the replacement string.
 */
inline gint gtk_scintilla_replace_target (GtkScintilla *sci, const gchar *text, gint length) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2194, (uptr_t)length, (sptr_t)text);
}

/**
 * gtk_scintilla_replace_target_regex:
 * @sci:	The #GtkScintilla object.
 * @text:	The search patern to search for in the target.
 * @length:	The number of characters to replace target with.
 * 
 * Replaces the target with @length characters from @text.  If @length is -1,
 * @text is zero-terminated, otherwise @length sets the number of characters to
 * replace the target with.  The replacement string is formed from @text with
 * any sequences of \1 through \9 replaced by tagged matches from the most
 * recent regular expression search.  After replacement, the target range
 * refers to the replacement text.
 * 
 * Returns:	The length of the replacement string.
 */
inline gint gtk_scintilla_replace_target_regex (GtkScintilla *sci, const gchar *text, gint length) {
	return (gint)scintilla_send_message(SCINTILLA(sci->scintilla), 2195, (uptr_t)length, (sptr_t)text);
}

/**
 * gtk_scintilla_get_tag:
 * @sci:		The #GtkScintilla object.
 * @tag_number:	The number of tag match.
 * 
 * Discovers what text was matched by tagged expressions in a regular
 * expression search.  This is useful if the user wants to interpret the
 * replacement string itself.
 * 
 * Returns:	A newly allocated string containing a copy of the value of the 
 * 			matched tag or NULL if there was no tag.  Free with g_free().
 */
gchar *gtk_scintilla_get_tag (GtkScintilla *sci, gint tag_number) 
{
	gchar *tmp;
	gint len;
	
	len = scintilla_send_message(SCINTILLA(sci->scintilla), 2616, (uptr_t)tag_number, (sptr_t)0);
	if (len < 1)
		return NULL;
	
	tmp = g_malloc0(len+1);
	len = scintilla_send_message(SCINTILLA(sci->scintilla), 2616, (uptr_t)tag_number, (sptr_t)tmp);
	if (len < 1) {
		g_free(tmp);
		return NULL;
	}
	
	return tmp;
}
















