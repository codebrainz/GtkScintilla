lib_LTLIBRARIES					=	libgtkscintilla-1.0.la

libgtkscintilla_1_0_la_LDFLAGS	=	-version-info 0:0:0

libgtkscintilla_1_0_la_CPPFLAGS	=	-Ilexers \
									-I$(top_builddir)/scintilla/include \
									-I$(top_builddir)/scintilla/src \
									-I$(top_builddir)/scintilla/lexlib \
									-I$(top_builddir) \
									@GTK_CFLAGS@ -DGTK -DSCI_LEXER \
									-DGTK_SCINTILLA_DATADIR="\"$(pkgdatadir)\""

libgtkscintilla_1_0_la_LIBADD	=	@GTK_LIBS@

library_includedir 				= 	$(includedir)/gtkscintilla-1.0/gtkscintilla
library_include_HEADERS			= 	$(top_builddir)/src/gtkscintilla.h \
									$(top_builddir)/src/constants.h \
									$(top_builddir)/src/lexer.h
# 									internal headers
#									$(top_builddir)/src/properties.h
#									$(top_builddir)/src/style-properties.h
#									$(top_builddir)/src/signals.h

autogen_sources = $(top_builddir)/src/enums.c
autogen_headers = $(top_builddir)/src/enums.h

scintilla_includedir			=	$(includedir)/gtkscintilla-1.0/scintilla
scintilla_include_HEADERS		=	$(top_builddir)/scintilla/include/Scintilla.h \
									$(top_builddir)/scintilla/include/SciLexer.h \
									$(top_builddir)/scintilla/include/ScintillaWidget.h

scintilla_sources				=	$(top_builddir)/scintilla/src/PositionCache.cxx \
									$(top_builddir)/scintilla/src/Indicator.cxx \
									$(top_builddir)/scintilla/src/Style.cxx \
									$(top_builddir)/scintilla/src/ScintillaBase.cxx \
									$(top_builddir)/scintilla/src/CharClassify.cxx \
									$(top_builddir)/scintilla/src/ContractionState.cxx \
									$(top_builddir)/scintilla/src/Document.cxx \
									$(top_builddir)/scintilla/src/PerLine.cxx \
									$(top_builddir)/scintilla/src/AutoComplete.cxx \
									$(top_builddir)/scintilla/src/ViewStyle.cxx \
									$(top_builddir)/scintilla/src/ExternalLexer.cxx \
									$(top_builddir)/scintilla/src/XPM.cxx \
									$(top_builddir)/scintilla/src/CellBuffer.cxx \
									$(top_builddir)/scintilla/src/RESearch.cxx \
									$(top_builddir)/scintilla/src/KeyMap.cxx \
									$(top_builddir)/scintilla/src/Catalogue.cxx \
									$(top_builddir)/scintilla/src/RunStyles.cxx \
									$(top_builddir)/scintilla/src/UniConversion.cxx \
									$(top_builddir)/scintilla/src/LineMarker.cxx \
									$(top_builddir)/scintilla/src/Editor.cxx \
									$(top_builddir)/scintilla/src/CallTip.cxx \
									$(top_builddir)/scintilla/src/Selection.cxx \
									$(top_builddir)/scintilla/src/Decoration.cxx \
									$(top_builddir)/scintilla/gtk/PlatGTK.cxx \
									$(top_builddir)/scintilla/gtk/scintilla-marshal.c \
									$(top_builddir)/scintilla/gtk/ScintillaGTK.cxx \
									$(top_builddir)/scintilla/lexers/LexConf.cxx \
									$(top_builddir)/scintilla/lexers/LexFortran.cxx \
									$(top_builddir)/scintilla/lexers/LexPOV.cxx \
									$(top_builddir)/scintilla/lexers/LexLisp.cxx \
									$(top_builddir)/scintilla/lexers/LexASY.cxx \
									$(top_builddir)/scintilla/lexers/LexBullant.cxx \
									$(top_builddir)/scintilla/lexers/LexVB.cxx \
									$(top_builddir)/scintilla/lexers/LexBasic.cxx \
									$(top_builddir)/scintilla/lexers/LexKix.cxx \
									$(top_builddir)/scintilla/lexers/LexCrontab.cxx \
									$(top_builddir)/scintilla/lexers/LexCaml.cxx \
									$(top_builddir)/scintilla/lexers/LexPB.cxx \
									$(top_builddir)/scintilla/lexers/LexPS.cxx \
									$(top_builddir)/scintilla/lexers/LexModula.cxx \
									$(top_builddir)/scintilla/lexers/LexEScript.cxx \
									$(top_builddir)/scintilla/lexers/LexOpal.cxx \
									$(top_builddir)/scintilla/lexers/LexHaskell.cxx \
									$(top_builddir)/scintilla/lexers/LexBash.cxx \
									$(top_builddir)/scintilla/lexers/LexGui4Cli.cxx \
									$(top_builddir)/scintilla/lexers/LexTAL.cxx \
									$(top_builddir)/scintilla/lexers/LexVerilog.cxx \
									$(top_builddir)/scintilla/lexers/LexVHDL.cxx \
									$(top_builddir)/scintilla/lexers/LexFlagship.cxx \
									$(top_builddir)/scintilla/lexers/LexPascal.cxx \
									$(top_builddir)/scintilla/lexers/LexAVE.cxx \
									$(top_builddir)/scintilla/lexers/LexSML.cxx \
									$(top_builddir)/scintilla/lexers/LexPLM.cxx \
									$(top_builddir)/scintilla/lexers/LexSpice.cxx \
									$(top_builddir)/scintilla/lexers/LexInno.cxx \
									$(top_builddir)/scintilla/lexers/LexCOBOL.cxx \
									$(top_builddir)/scintilla/lexers/LexPowerShell.cxx \
									$(top_builddir)/scintilla/lexers/LexForth.cxx \
									$(top_builddir)/scintilla/lexers/LexTACL.cxx \
									$(top_builddir)/scintilla/lexers/LexR.cxx \
									$(top_builddir)/scintilla/lexers/LexCLW.cxx \
									$(top_builddir)/scintilla/lexers/LexMagik.cxx \
									$(top_builddir)/scintilla/lexers/LexSQL.cxx \
									$(top_builddir)/scintilla/lexers/LexAsm.cxx \
									$(top_builddir)/scintilla/lexers/LexAsn1.cxx \
									$(top_builddir)/scintilla/lexers/LexCSS.cxx \
									$(top_builddir)/scintilla/lexers/LexLua.cxx \
									$(top_builddir)/scintilla/lexers/LexCmake.cxx \
									$(top_builddir)/scintilla/lexers/LexD.cxx \
									$(top_builddir)/scintilla/lexers/LexA68k.cxx \
									$(top_builddir)/scintilla/lexers/LexCsound.cxx \
									$(top_builddir)/scintilla/lexers/LexRuby.cxx \
									$(top_builddir)/scintilla/lexers/LexHTML.cxx \
									$(top_builddir)/scintilla/lexers/LexMMIXAL.cxx \
									$(top_builddir)/scintilla/lexers/LexAPDL.cxx \
									$(top_builddir)/scintilla/lexers/LexPowerPro.cxx \
									$(top_builddir)/scintilla/lexers/LexTCL.cxx \
									$(top_builddir)/scintilla/lexers/LexNimrod.cxx \
									$(top_builddir)/scintilla/lexers/LexPerl.cxx \
									$(top_builddir)/scintilla/lexers/LexScriptol.cxx \
									$(top_builddir)/scintilla/lexers/LexTADS3.cxx \
									$(top_builddir)/scintilla/lexers/LexGAP.cxx \
									$(top_builddir)/scintilla/lexers/LexRebol.cxx \
									$(top_builddir)/scintilla/lexers/LexTeX.cxx \
									$(top_builddir)/scintilla/lexers/LexOthers.cxx \
									$(top_builddir)/scintilla/lexers/LexMetapost.cxx \
									$(top_builddir)/scintilla/lexers/LexBaan.cxx \
									$(top_builddir)/scintilla/lexers/LexAbaqus.cxx \
									$(top_builddir)/scintilla/lexers/LexTxt2tags.cxx \
									$(top_builddir)/scintilla/lexers/LexAda.cxx \
									$(top_builddir)/scintilla/lexers/LexPython.cxx \
									$(top_builddir)/scintilla/lexers/LexMySQL.cxx \
									$(top_builddir)/scintilla/lexers/LexNsis.cxx \
									$(top_builddir)/scintilla/lexers/LexErlang.cxx \
									$(top_builddir)/scintilla/lexers/LexMPT.cxx \
									$(top_builddir)/scintilla/lexers/LexEiffel.cxx \
									$(top_builddir)/scintilla/lexers/LexProgress.cxx \
									$(top_builddir)/scintilla/lexers/LexAU3.cxx \
									$(top_builddir)/scintilla/lexers/LexMarkdown.cxx \
									$(top_builddir)/scintilla/lexers/LexSmalltalk.cxx \
									$(top_builddir)/scintilla/lexers/LexLout.cxx \
									$(top_builddir)/scintilla/lexers/LexSpecman.cxx \
									$(top_builddir)/scintilla/lexers/LexMSSQL.cxx \
									$(top_builddir)/scintilla/lexers/LexYAML.cxx \
									$(top_builddir)/scintilla/lexers/LexMatlab.cxx \
									$(top_builddir)/scintilla/lexers/LexSorcus.cxx \
									$(top_builddir)/scintilla/lexers/LexCPP.cxx \
									$(top_builddir)/scintilla/lexlib/LexerBase.cxx \
									$(top_builddir)/scintilla/lexlib/Accessor.cxx \
									$(top_builddir)/scintilla/lexlib/StyleContext.cxx \
									$(top_builddir)/scintilla/lexlib/LexerModule.cxx \
									$(top_builddir)/scintilla/lexlib/WordList.cxx \
									$(top_builddir)/scintilla/lexlib/PropSetSimple.cxx \
									$(top_builddir)/scintilla/lexlib/LexerSimple.cxx \
									$(top_builddir)/scintilla/lexlib/CharacterSet.cxx \
									$(top_builddir)/scintilla/lexlib/LexerNoExceptions.cxx

libgtkscintilla_1_0_la_SOURCES	=	$(top_builddir)/src/gtkscintilla.c \
									$(top_builddir)/src/text.c \
									$(top_builddir)/src/search.c \
									$(top_builddir)/src/properties.c \
									$(top_builddir)/src/style-properties.c \
									$(top_builddir)/src/signals.c \
									$(top_builddir)/src/accessors.c \
									$(top_builddir)/src/functions.c \
									$(top_builddir)/src/lexer.c \
									$(autogen_sources) \
									$(scintilla_sources)


# stuff for glib-mkenums
CLEANFILES      = $(autogen_sources) $(autogen_headers)

EXTRA_DIST      = $(top_builddir)/src/enums.c.tpl \
                  $(top_builddir)/src/enums.h.tpl

$(top_builddir)/src/enums.c: $(top_builddir)/src/enums.c.tpl $(top_builddir)/src/enums.h $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(top_builddir)/src/%) > $@
$(top_builddir)/src/enums.h: $(top_builddir)/src/enums.h.tpl $(library_include_HEADERS) Makefile
	$(AM_V_GEN)$(GLIB_MKENUMS) --template $< \
		$(library_include_HEADERS:%=$(top_builddir)/src/%) > $@

#-include $(INTROSPECTION_MAKEFILE)
#INTROSPECTION_GIRS =
#INTROSPECTION_SCANNER_ARGS = --add-include-path=$(srcdir)
#INTROSPECTION_COMPILER_ARGS = --includedir=$(srcdir)

#if HAVE_INTROSPECTION

#introspection_sources = $(libgtkscintilla_1_0_la_SOURCES)

#GtkScintilla-1.0.gir: libgtkscintilla-1.0.la
#GtkScintilla_1_0_gir_INCLUDES = GObject-2.0 Gtk-2.0
#GtkScintilla_1_0_gir_NAMESPACE = Gtk
#GtkScintilla_1_0_gir_CFLAGS = $(INCLUDES)
#GtkScintilla_1_0_gir_LIBS = libgtkscintilla-1.0.la
#GtkScintilla_1_0_gir_FILES = $(introspection_sources)
#INTROSPECTION_GIRS += GtkScintilla-1.0.gir

#girdir = $(datadir)/girepository-1.0
#gir_DATA = $(INTROSPECTION_GIRS)

#typelibdir = $(libdir)/girrepository-1.0
#typelib_DATA = $(INTROSPECTION_GIRS:.gir=.typelib)

#CLEANFILES = $(gir_DATA) $(typelib_DATA)

#endif


