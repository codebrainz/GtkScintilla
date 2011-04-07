bin_PROGRAMS	=	demo demo2


demo_CFLAGS		=	@GTK_CFLAGS@ \
					-I$(top_srcdir)/src \
					-I$(top_builddir)/src \
					-I$(top_srcdir)/scintilla/include
demo_LDADD		=	@GTK_LIBS@ \
					$(top_builddir)/src/libgtkscintilla-1.0.la
demo_SOURCES	=	demo.c


demo2_CFLAGS	=	@GTK_CFLAGS@ \
					-I$(top_srcdir)/src \
					-I$(top_builddir)/src \
					-I$(top_srcdir)/scintilla/include
demo2_LDADD		=	@GTK_LIBS@ \
					$(top_builddir)/src/libgtkscintilla-1.0.la
demo2_SOURCES	=	demo2.c
