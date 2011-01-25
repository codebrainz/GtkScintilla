
# check something from configure.ac to make sure these are ok?
VALAFLAGS=--pkg gtk+-2.0 --pkg gio-2.0 --pkg Scintilla --vapidir vapi \
			-H gtkeditor.h --use-header
	
lib_LTLIBRARIES = libgtkeditor.la
libgtkeditor_la_LDFLAGS = -version-info 0:0:0 -DGTK
libgtkeditor_la_CPPFLAGS = -I../scintilla/include \
							@GTK_CFLAGS@ @GIO_CFLAGS@ -DGTK -DSCI_LEXER
libgtkeditor_la_LIBADD = @GTK_LIBS@ @GIO_LIBS@ \
							../scintilla-lib/libscintilla.la
include_HEADERS = gtkeditor.h
libgtkeditor_la_SOURCES = \
	gtkeditor.vala \
	gtkeditorstyle.vala \
	gtkieditorlexer.vala \
	cpp.vala \
	perl.vala \
	python.vala 
