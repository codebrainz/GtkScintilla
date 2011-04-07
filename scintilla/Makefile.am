noinst_LTLIBRARIES				=	libscintilla.la

libscintilla_la_LIBADD			=	@GTK_LIBS@
libscintilla_la_CPPFLAGS		=	-I$(top_srcdir)/scintilla/include \
									-I$(top_srcdir)/scintilla/src \
									-I$(top_srcdir)/scintilla/lexlib \
									@GTK_CFLAGS@ -DGTK -DSCI_LEXER

scintilla_includedir			= 	$(includedir)/gtkscintilla-1.0/scintilla
scintilla_include_HEADERS		= 	include/Scintilla.h \
									include/SciLexer.h \
									include/ScintillaWidget.h \
									include/Scintilla.iface

libscintilla_la_SOURCES			=	src/PositionCache.cxx \
									src/Indicator.cxx \
									src/Style.cxx \
									src/ScintillaBase.cxx \
									src/CharClassify.cxx \
									src/ContractionState.cxx \
									src/Document.cxx \
									src/PerLine.cxx \
									src/AutoComplete.cxx \
									src/ViewStyle.cxx \
									src/ExternalLexer.cxx \
									src/XPM.cxx \
									src/CellBuffer.cxx \
									src/RESearch.cxx \
									src/KeyMap.cxx \
									src/Catalogue.cxx \
									src/RunStyles.cxx \
									src/UniConversion.cxx \
									src/LineMarker.cxx \
									src/Editor.cxx \
									src/CallTip.cxx \
									src/Selection.cxx \
									src/Decoration.cxx \
									gtk/PlatGTK.cxx \
									gtk/scintilla-marshal.c \
									gtk/ScintillaGTK.cxx \
									lexers/LexConf.cxx \
									lexers/LexFortran.cxx \
									lexers/LexPOV.cxx \
									lexers/LexLisp.cxx \
									lexers/LexASY.cxx \
									lexers/LexBullant.cxx \
									lexers/LexVB.cxx \
									lexers/LexBasic.cxx \
									lexers/LexKix.cxx \
									lexers/LexCrontab.cxx \
									lexers/LexCaml.cxx \
									lexers/LexPB.cxx \
									lexers/LexPS.cxx \
									lexers/LexModula.cxx \
									lexers/LexEScript.cxx \
									lexers/LexOpal.cxx \
									lexers/LexHaskell.cxx \
									lexers/LexBash.cxx \
									lexers/LexGui4Cli.cxx \
									lexers/LexTAL.cxx \
									lexers/LexVerilog.cxx \
									lexers/LexVHDL.cxx \
									lexers/LexFlagship.cxx \
									lexers/LexPascal.cxx \
									lexers/LexAVE.cxx \
									lexers/LexSML.cxx \
									lexers/LexPLM.cxx \
									lexers/LexSpice.cxx \
									lexers/LexInno.cxx \
									lexers/LexCOBOL.cxx \
									lexers/LexPowerShell.cxx \
									lexers/LexForth.cxx \
									lexers/LexTACL.cxx \
									lexers/LexR.cxx \
									lexers/LexCLW.cxx \
									lexers/LexMagik.cxx \
									lexers/LexSQL.cxx \
									lexers/LexAsm.cxx \
									lexers/LexAsn1.cxx \
									lexers/LexCSS.cxx \
									lexers/LexLua.cxx \
									lexers/LexCmake.cxx \
									lexers/LexD.cxx \
									lexers/LexA68k.cxx \
									lexers/LexCsound.cxx \
									lexers/LexRuby.cxx \
									lexers/LexHTML.cxx \
									lexers/LexMMIXAL.cxx \
									lexers/LexAPDL.cxx \
									lexers/LexPowerPro.cxx \
									lexers/LexTCL.cxx \
									lexers/LexNimrod.cxx \
									lexers/LexPerl.cxx \
									lexers/LexScriptol.cxx \
									lexers/LexTADS3.cxx \
									lexers/LexGAP.cxx \
									lexers/LexRebol.cxx \
									lexers/LexTeX.cxx \
									lexers/LexOthers.cxx \
									lexers/LexMetapost.cxx \
									lexers/LexBaan.cxx \
									lexers/LexAbaqus.cxx \
									lexers/LexTxt2tags.cxx \
									lexers/LexAda.cxx \
									lexers/LexPython.cxx \
									lexers/LexMySQL.cxx \
									lexers/LexNsis.cxx \
									lexers/LexErlang.cxx \
									lexers/LexMPT.cxx \
									lexers/LexEiffel.cxx \
									lexers/LexProgress.cxx \
									lexers/LexAU3.cxx \
									lexers/LexMarkdown.cxx \
									lexers/LexSmalltalk.cxx \
									lexers/LexLout.cxx \
									lexers/LexSpecman.cxx \
									lexers/LexMSSQL.cxx \
									lexers/LexYAML.cxx \
									lexers/LexMatlab.cxx \
									lexers/LexSorcus.cxx \
									lexers/LexCPP.cxx \
									lexlib/LexerBase.cxx \
									lexlib/Accessor.cxx \
									lexlib/StyleContext.cxx \
									lexlib/LexerModule.cxx \
									lexlib/WordList.cxx \
									lexlib/PropSetSimple.cxx \
									lexlib/LexerSimple.cxx \
									lexlib/CharacterSet.cxx \
									lexlib/LexerNoExceptions.cxx

scintilla_docsdir				=	$(docdir)/gtkscintilla-1.0/scintilla
scintilla_docs_DATA				=	License.txt \
									README \
									version.txt

scintilla_helpdir				=	$(htmldir)/gtkscintilla-1.0/scintilla
scintilla_help_DATA				=	doc/Design.html \
									doc/Icons.html \
									doc/Lexer.txt \
									doc/SciBreak.jpg \
									doc/SciCoding.html \
									doc/SciRest.jpg \
									doc/SciTEIco.png \
									doc/SciWord.jpg \
									doc/ScintillaDoc.html \
									doc/ScintillaDownload.html \
									doc/ScintillaHistory.html \
									doc/ScintillaRelated.html \
									doc/ScintillaToDo.html \
									doc/ScintillaUsage.html \
									doc/Steps.html \
									doc/annotations.png \
									doc/index.html \
									doc/styledmargin.png
