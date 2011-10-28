lib_LTLIBRARIES =	libgtkscintilla-1.0.la

libgtkscintilla_1_0_la_LDFLAGS =	-version-info 0:0:0 -lstdc++

libgtkscintilla_1_0_la_LIBADD	=	@GTK_LIBS@ \
									$(top_builddir)/scintilla/libscintilla.la

libgtkscintilla_1_0_la_CPPFLAGS	=	-I$(top_srcdir)/src \
									-I$(top_srcdir)/scintilla/include \
									-I$(top_srcdir)/scintilla/src \
									-I$(top_srcdir)/scintilla/lexlib \
									@GTK_CFLAGS@ -DGTK -DSCI_LEXER \
									-DGTK_SCINTILLA_DATADIR="\"$(pkgdatadir)\""

autogen_sources =	enums.c enums.h


library_includedir = \
	$(includedir)/gtkscintilla-1.0/gtkscintilla

library_include_HEADERS	= \
	enums.h \
	constants.h \
	gtkscintilla.h \
	lexer.h \
	signals.h \
	style-properties.h


libgtkscintilla_1_0_la_SOURCES	= \
	$(library_include_HEADERS) \
	accessors.c \
	enums.c \
	functions.c \
	gtkscintilla.c \
	lexer.c	\
	properties.c \
	search.c \
	signals.c \
	style-properties.c \
	text.c

CLEANFILES = \
	$(autogen_sources) \
	$(autogen_headers)

EXTRA_DIST = \
	enums.c.tpl \
	enums.h.tpl

enums.c: enums.c.tpl enums.h $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(srcdir)/%) > $@

enums.h: enums.h.tpl $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(srcdir)/%) > $@


-include $(INTROSPECTION_MAKEFILE)
INTROSPECTION_GIRS =
INTROSPECTION_SCANNER_ARGS = --add-include-path=$(srcdir)
INTROSPECTION_COMPILER_ARGS = --includedir=$(srcdir)

if HAVE_INTROSPECTION

introspection_sources = $(libgtkscintilla_1_0_la_SOURCES)

GtkScintilla-1.0.gir: libgtkscintilla-1.0.la
GtkScintilla_1_0_gir_INCLUDES = GObject-2.0 Gtk-3.0
GtkScintilla_1_0_gir_CFLAGS = $(top_srcdir)/src -I$(top_srcdir)/scintilla/include
GtkScintilla_1_0_gir_LIBS = libgtkscintilla-1.0.la
GtkScintilla_1_0_gir_FILES = $(introspection_sources)
INTROSPECTION_GIRS += GtkScintilla-1.0.gir

girdir = $(datadir)/gir-1.0
gir_DATA = $(INTROSPECTION_GIRS)

typelibdir = $(libdir)/girepository-1.0
typelib_DATA = $(INTROSPECTION_GIRS:.gir=.typelib)

CLEANFILES += $(gir_DATA) $(typelib_DATA)

endif
