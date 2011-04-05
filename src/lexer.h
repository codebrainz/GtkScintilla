/*
 * lexer.h
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

#ifndef __LEXER_H__
#define __LEXER_H__

#include <glib-object.h>

G_BEGIN_DECLS


#define GTK_TYPE_SCINTILLA_LEXER			(gtk_scintilla_lexer_get_type())
#define GTK_SCINTILLA_LEXER(obj)			(G_TYPE_CHECK_INSTANCE_CAST((obj), GTK_TYPE_SCINTILLA_LEXER, GtkScintillaLexer))
#define GTK_SCINTILLA_LEXER_CLASS(klass)	(G_TYPE_CHECK_CLASS_CAST((klass), GTK_TYPE_SCINTILLA_LEXER, GtkScintillaLexerClass))
#define GTK_IS_SCINTILLA_LEXER(obj)			(G_TYPE_CHECK_INSTANCE_TYPE((obj), GTK_TYPE_SCINTILLA_LEXER))
#define GTK_IS_SCINTILLA_LEXER_CLASS(klass)	(G_TYPE_CHECK_CLASS_TYPE((klass), GTK_TYPE_SCINTILLA_LEXER))
#define GTK_SCINTILLA_LEXER_GET_CLASS(obj)	(G_TYPE_INSTANCE_GET_CLASS((obj), GTK_TYPE_SCINTILLA_LEXER, GtkScintillaLexerClass))

typedef struct _GtkScintillaLexer			GtkScintillaLexer;
typedef struct _GtkScintillaLexerClass		GtkScintillaLexerClass;
typedef struct _GtkScintillaLexerPrivate	GtkScintillaLexerPrivate;

struct _GtkScintillaLexer
{
	GObject parent;
	/* add your public declarations here */

	GtkScintillaLexerPrivate *priv;
};

struct _GtkScintillaLexerClass
{
	GObjectClass parent_class;
};


GType		gtk_scintilla_lexer_get_type	(void);
GObject*	gtk_scintilla_lexer_new			(void);

G_END_DECLS

#endif /* __LEXER_H__ */
