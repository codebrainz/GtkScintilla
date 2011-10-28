AC_PREREQ([2.67])
AC_INIT([gtkscintilla], [1.0], [mbrush@leftclick.ca])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign silent-rules])
AM_SILENT_RULES([yes])
LT_INIT

AC_PROG_CC
AC_PROG_CXX
AM_PROG_CC_C_O
AC_PROG_INSTALL
AC_PROG_LIBTOOL

PKG_CHECK_MODULES([GTK], [gtk+-3.0], [], [
	PKG_CHECK_MODULES([GTK], [gtk+-2.0])
])

AC_PATH_PROG([GLIB_MKENUMS], [glib-mkenums], [no])
AC_SUBST([GLIB_MKENUMS])
if [[ x"$GLIB_MKENUMS" = "xno" ]]; then
	AC_MSG_ERROR([glib-mkenums not found, are GLib dev tools installed?])
fi

GTK_DOC_CHECK([1.14], [--flavour no-tmpl])

GOBJECT_INTROSPECTION_CHECK([0.6.7])


AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([	gtkscintilla-1.0.pc
					Makefile
					scintilla/Makefile
					src/Makefile
					demo/Makefile
					docs/reference/Makefile
					bindings/Makefile
					bindings/vala/Makefile
					data/Makefile])
AC_OUTPUT
