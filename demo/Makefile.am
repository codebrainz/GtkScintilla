bin_PROGRAMS	=	gtkscintilla-demo gtkscintilla-demo2


gtkscintilla_demo_CFLAGS	=	@GTK_CFLAGS@ \
								-I$(top_srcdir)/src \
								-I$(top_builddir)/src \
								-I$(top_srcdir)/scintilla/include
gtkscintilla_demo_LDADD		=	@GTK_LIBS@ \
								$(top_builddir)/src/libgtkscintilla-1.0.la
gtkscintilla_demo_SOURCES	=	demo.c


gtkscintilla_demo2dir		=	$(pkgdatadir)/demo2
gtkscintilla_demo2_DATA		=	demo2.ui helloworld.c
gtkscintilla_demo2_CFLAGS	=	@GTK_CFLAGS@ \
								-I$(top_srcdir)/src \
								-I$(top_builddir)/src \
								-I$(top_srcdir)/scintilla/include \
								-DDEMO_UI_FILE=\"$(gtkscintilla_demo2dir)/demo2.ui\" \
								-DDEMO_SAMPLE_FILE=\"$(gtkscintilla_demo2dir)/helloworld.c\"
gtkscintilla_demo2_LDADD	=	@GTK_LIBS@ \
								$(top_builddir)/src/libgtkscintilla-1.0.la
gtkscintilla_demo2_SOURCES	=	demo2.c
