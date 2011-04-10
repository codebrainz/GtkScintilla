lib_LTLIBRARIES					=	libgtkscintilla-1.0.la

libgtkscintilla_1_0_la_LDFLAGS	=	-version-info 0:0:0 -lstdc++

libgtkscintilla_1_0_la_LIBADD	=	@GTK_LIBS@ \
									$(top_builddir)/scintilla/libscintilla.la
libgtkscintilla_1_0_la_CPPFLAGS	=	-I$(top_srcdir)/src \
									-I$(top_srcdir)/scintilla/include \
									-I$(top_srcdir)/scintilla/src \
									-I$(top_srcdir)/scintilla/lexlib \
									@GTK_CFLAGS@ -DGTK -DSCI_LEXER \
									-DGTK_SCINTILLA_DATADIR="\"$(pkgdatadir)\""

library_includedir 				= 	$(includedir)/gtkscintilla-1.0/gtkscintilla
library_include_HEADERS			= 	gtkscintilla.h \
									constants.h \
									lexer.h \
									enums.h

autogen_sources 				=	enums.c
autogen_headers					=	enums.h

libgtkscintilla_1_0_la_SOURCES	=	$(autogen_sources) \
									gtkscintilla.c \
									text.c \
									search.c \
									properties.c \
									style-properties.c \
									signals.c \
									accessors.c \
									functions.c \
									lexer.c

CLEANFILES      				=	$(autogen_sources) \
									$(autogen_headers)

EXTRA_DIST						=	enums.c.tpl \
									enums.h.tpl

enums.c: enums.c.tpl enums.h $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(srcdir)/%) > $@

enums.h: enums.h.tpl $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(srcdir)/%) > $@



