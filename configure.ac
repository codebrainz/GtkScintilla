#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.67])
AC_INIT([gtkeditor], [1.0], [mbrush@leftclick.ca])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign -Wall])
LT_INIT

AC_PROG_CC
AC_PROG_CXX
AM_PROG_VALAC([0.7.0]) # min req. for automake support

# From: http://live.gnome.org/Create%20a%20GTK%20Project%20using%20autotools
AM_PROG_CC_C_O
AC_PROG_INSTALL
AC_PROG_LIBTOOL
# TODO: Check version needed
AM_PATH_GTK_2_0([2.10.0],,AC_MSG_ERROR([Gtk+ 2.10.0 or higher required.]))

# TODO: Figure out why this doesn't work
# From: http://library.gnome.org/devel/gtk-doc-manual/stable/settingup_autoconf.html.en
#GTK_DOC_CHECK([1.14],[--flavour no-tmpl])

PKG_CHECK_MODULES([GIO], [gio-2.0])
AC_SUBST(GIO_CFLAGS)
AC_SUBST(GIO_LIBS)

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile scintilla-lib/Makefile src/Makefile])
AC_OUTPUT
