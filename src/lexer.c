/*
 * lexer.c
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

#include "gtkscintilla.h"
#include "lexer.h"

struct _GtkScintillaLexerPrivate
{
	/* add your private declarations here */
};

static void gtk_scintilla_lexer_finalize			(GObject *object);

G_DEFINE_TYPE(GtkScintillaLexer, gtk_scintilla_lexer, G_TYPE_OBJECT)


static void gtk_scintilla_lexer_class_init(GtkScintillaLexerClass *klass)
{
	GObjectClass *g_object_class;

	g_object_class = G_OBJECT_CLASS(klass);

	g_object_class->finalize = gtk_scintilla_lexer_finalize;

	g_type_class_add_private((gpointer)klass, sizeof(GtkScintillaLexerPrivate));
}


static void gtk_scintilla_lexer_finalize(GObject *object)
{
	g_return_if_fail(object != NULL);
	g_return_if_fail(GTK_IS_SCINTILLA_LEXER(object));

	G_OBJECT_CLASS(gtk_scintilla_lexer_parent_class)->finalize(object);
}


static void gtk_scintilla_lexer_init(GtkScintillaLexer *self)
{
	self->priv = G_TYPE_INSTANCE_GET_PRIVATE(self,
		GTK_TYPE_SCINTILLA_LEXER, GtkScintillaLexerPrivate);

}


GObject *gtk_scintilla_lexer_new(void)
{
	return g_object_new(GTK_TYPE_SCINTILLA_LEXER, NULL);
}


