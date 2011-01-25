
lib_LTLIBRARIES = libscintilla.la
libscintilla_la_LDFLAGS = -version-info 0:0:0
libscintilla_la_CPPFLAGS = -I../scintilla/include \
							-I../scintilla/src \
							-I../scintilla/lexlib \
							-Wall -Wno-missing-braces -Wno-char-subscripts \
							-Wno-long-long -pedantic -DGTK -DSCI_LEXER @GTK_CFLAGS@
libscintilla_la_LIBADD = @GTK_LIBS@
include_HEADERS = ../scintilla/include/Scintilla.h \
					../scintilla/include/SciLexer.h \
					../scintilla/include/ScintillaWidget.h

libscintilla_la_SOURCES = \
	../scintilla/gtk/PlatGTK.cxx \
	../scintilla/gtk/scintilla-marshal.c \
	../scintilla/gtk/ScintillaGTK.cxx \
	../scintilla/src/AutoComplete.cxx \
	../scintilla/src/CallTip.cxx \
	../scintilla/src/CellBuffer.cxx \
	../scintilla/src/CharClassify.cxx \
	../scintilla/src/ContractionState.cxx \
	../scintilla/src/Decoration.cxx \
	../scintilla/src/Document.cxx \
	../scintilla/src/DocumentAccessor.cxx \
	../scintilla/src/Editor.cxx \
	../scintilla/src/ExternalLexer.cxx \
	../scintilla/src/Indicator.cxx \
	../scintilla/src/KeyMap.cxx \
	../scintilla/src/KeyWords.cxx \
	../scintilla/src/LexAPDL.cxx \
	../scintilla/src/LexASY.cxx \
	../scintilla/src/LexAU3.cxx \
	../scintilla/src/LexAVE.cxx \
	../scintilla/src/LexAbaqus.cxx \
	../scintilla/src/LexAda.cxx \
	../scintilla/src/LexAsm.cxx \
	../scintilla/src/LexAsn1.cxx \
	../scintilla/src/LexBaan.cxx \
	../scintilla/src/LexBash.cxx \
	../scintilla/src/LexBasic.cxx \
	../scintilla/src/LexBullant.cxx \
	../scintilla/src/LexCLW.cxx \
	../scintilla/src/LexCOBOL.cxx \
	../scintilla/src/LexCPP.cxx \
	../scintilla/src/LexCSS.cxx \
	../scintilla/src/LexCaml.cxx \
	../scintilla/src/LexCmake.cxx \
	../scintilla/src/LexConf.cxx \
	../scintilla/src/LexCrontab.cxx \
	../scintilla/src/LexCsound.cxx \
	../scintilla/src/LexD.cxx \
	../scintilla/src/LexEScript.cxx \
	../scintilla/src/LexEiffel.cxx \
	../scintilla/src/LexErlang.cxx \
	../scintilla/src/LexFlagship.cxx \
	../scintilla/src/LexForth.cxx \
	../scintilla/src/LexFortran.cxx \
	../scintilla/src/LexGAP.cxx \
	../scintilla/src/LexGui4Cli.cxx \
	../scintilla/src/LexHTML.cxx \
	../scintilla/src/LexHaskell.cxx \
	../scintilla/src/LexInno.cxx \
	../scintilla/src/LexKix.cxx \
	../scintilla/src/LexLisp.cxx \
	../scintilla/src/LexLout.cxx \
	../scintilla/src/LexLua.cxx \
	../scintilla/src/LexMMIXAL.cxx \
	../scintilla/src/LexMPT.cxx \
	../scintilla/src/LexMSSQL.cxx \
	../scintilla/src/LexMagik.cxx \
	../scintilla/src/LexMarkdown.cxx \
	../scintilla/src/LexMatlab.cxx \
	../scintilla/src/LexMetapost.cxx \
	../scintilla/src/LexMySQL.cxx \
	../scintilla/src/LexNimrod.cxx \
	../scintilla/src/LexNsis.cxx \
	../scintilla/src/LexOpal.cxx \
	../scintilla/src/LexOthers.cxx \
	../scintilla/src/LexPB.cxx \
	../scintilla/src/LexPLM.cxx \
	../scintilla/src/LexPOV.cxx \
	../scintilla/src/LexPS.cxx \
	../scintilla/src/LexPascal.cxx \
	../scintilla/src/LexPerl.cxx \
	../scintilla/src/LexPowerPro.cxx \
	../scintilla/src/LexPowerShell.cxx \
	../scintilla/src/LexProgress.cxx \
	../scintilla/src/LexPython.cxx \
	../scintilla/src/LexR.cxx \
	../scintilla/src/LexRebol.cxx \
	../scintilla/src/LexRuby.cxx \
	../scintilla/src/LexSML.cxx \
	../scintilla/src/LexSQL.cxx \
	../scintilla/src/LexScriptol.cxx \
	../scintilla/src/LexSmalltalk.cxx \
	../scintilla/src/LexSorcus.cxx \
	../scintilla/src/LexSpecman.cxx \
	../scintilla/src/LexSpice.cxx \
	../scintilla/src/LexTACL.cxx \
	../scintilla/src/LexTADS3.cxx \
	../scintilla/src/LexTAL.cxx \
	../scintilla/src/LexTCL.cxx \
	../scintilla/src/LexTeX.cxx \
	../scintilla/src/LexVB.cxx \
	../scintilla/src/LexVHDL.cxx \
	../scintilla/src/LexVerilog.cxx \
	../scintilla/src/LexYAML.cxx \
	../scintilla/src/LineMarker.cxx \
	../scintilla/src/PerLine.cxx \
	../scintilla/src/PositionCache.cxx \
	../scintilla/src/PropSet.cxx \
	../scintilla/src/RESearch.cxx \
	../scintilla/src/RunStyles.cxx \
	../scintilla/src/ScintillaBase.cxx \
	../scintilla/src/Selection.cxx \
	../scintilla/src/Style.cxx \
	../scintilla/src/StyleContext.cxx \
	../scintilla/src/UniConversion.cxx \
	../scintilla/src/ViewStyle.cxx \
	../scintilla/src/WindowAccessor.cxx \
	../scintilla/src/XPM.cxx
