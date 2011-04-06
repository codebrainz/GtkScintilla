/*** BEGIN file-header ***/
#ifndef GTK_SCINTILLA_ENUMS_H
#define GTK_SCINTILLA_ENUMS_H

#include <glib-object.h>

/* include all headers that may introduce new enums */
#include "constants.h"

G_BEGIN_DECLS
/*** END file-header ***/

/*** BEGIN file-production ***/

/* enumerations from "@filename@" */
/*** END file-production ***/

/*** BEGIN value-header ***/
G_GNUC_INTERNAL
GType @enum_name@_get_type (void) G_GNUC_CONST;
#define @ENUMPREFIX@_TYPE_@ENUMSHORT@ (@enum_name@_get_type ())
/*** END value-header ***/

/*** BEGIN file-tail ***/
G_END_DECLS

#endif /* #ifndef GTK_SCINTILLA_ENUMS_H */
/*** END file-tail ***/
