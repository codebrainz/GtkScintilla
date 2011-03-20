/* -- THIS FILE IS GENERATED - DO NOT EDIT *//* -*- Mode: C; c-basic-offset: 4 -*- */

#include <Python.h>



#line 3 "gtkscintilla.override"
#include <Python.h>
#include "pygobject.h"
#include "gtkscintilla.h"
#line 12 "gtkscintillaconstants.c"


/* ---------- types from other modules ---------- */
static PyTypeObject *_PyGObject_Type;
#define PyGObject_Type (*_PyGObject_Type)


/* ---------- forward type declarations ---------- */

#line 22 "gtkscintillaconstants.c"



/* ----------- functions ----------- */

const PyMethodDef gtk_scintilla_functions[] = {
    { NULL, NULL, 0, NULL }
};


/* ----------- enums and flags ----------- */

void
gtk_scintilla_add_constants(PyObject *module, const gchar *strip_prefix)
{
#ifdef VERSION
    PyModule_AddStringConstant(module, "__version__", VERSION);
#endif
  pyg_enum_add(module, "ScintillaUpdateFlag", strip_prefix, GTK_TYPE_SCINTILLA_UPDATE_FLAG);
  pyg_enum_add(module, "ScintillaSearchFlag", strip_prefix, GTK_TYPE_SCINTILLA_SEARCH_FLAG);
  pyg_enum_add(module, "ScintillaWhiteSpace", strip_prefix, GTK_TYPE_SCINTILLA_WHITE_SPACE);
  pyg_enum_add(module, "ScintillaEndOfLine", strip_prefix, GTK_TYPE_SCINTILLA_END_OF_LINE);
  pyg_enum_add(module, "ScintillaMarkerSymbol", strip_prefix, GTK_TYPE_SCINTILLA_MARKER_SYMBOL);
  pyg_enum_add(module, "ScintillaMarkerOutline", strip_prefix, GTK_TYPE_SCINTILLA_MARKER_OUTLINE);
  pyg_enum_add(module, "ScintillaMarginType", strip_prefix, GTK_TYPE_SCINTILLA_MARGIN_TYPE);
  pyg_enum_add(module, "ScintillaStylesCommon", strip_prefix, GTK_TYPE_SCINTILLA_STYLES_COMMON);
  pyg_enum_add(module, "ScintillaCharacterSet", strip_prefix, GTK_TYPE_SCINTILLA_CHARACTER_SET);
  pyg_enum_add(module, "ScintillaCase", strip_prefix, GTK_TYPE_SCINTILLA_CASE);
  pyg_enum_add(module, "ScintillaIndicatorStyle", strip_prefix, GTK_TYPE_SCINTILLA_INDICATOR_STYLE);
  pyg_enum_add(module, "ScintillaIndentView", strip_prefix, GTK_TYPE_SCINTILLA_INDENT_VIEW);
  pyg_enum_add(module, "ScintillaPrintOption", strip_prefix, GTK_TYPE_SCINTILLA_PRINT_OPTION);
  pyg_enum_add(module, "ScintillaFindOption", strip_prefix, GTK_TYPE_SCINTILLA_FIND_OPTION);
  pyg_enum_add(module, "ScintillaFoldLevel", strip_prefix, GTK_TYPE_SCINTILLA_FOLD_LEVEL);
  pyg_enum_add(module, "ScintillaFoldFlag", strip_prefix, GTK_TYPE_SCINTILLA_FOLD_FLAG);
  pyg_enum_add(module, "ScintillaWrap", strip_prefix, GTK_TYPE_SCINTILLA_WRAP);
  pyg_enum_add(module, "ScintillaWrapVisualFlag", strip_prefix, GTK_TYPE_SCINTILLA_WRAP_VISUAL_FLAG);
  pyg_enum_add(module, "ScintillaWrapVisualLocation", strip_prefix, GTK_TYPE_SCINTILLA_WRAP_VISUAL_LOCATION);
  pyg_enum_add(module, "ScintillaWrapIndentMode", strip_prefix, GTK_TYPE_SCINTILLA_WRAP_INDENT_MODE);
  pyg_enum_add(module, "ScintillaLineCache", strip_prefix, GTK_TYPE_SCINTILLA_LINE_CACHE);
  pyg_enum_add(module, "ScintillaFontQuality", strip_prefix, GTK_TYPE_SCINTILLA_FONT_QUALITY);
  pyg_enum_add(module, "ScintillaMultiPaste", strip_prefix, GTK_TYPE_SCINTILLA_MULTI_PASTE);
  pyg_enum_add(module, "ScintillaEdgeVisualStyle", strip_prefix, GTK_TYPE_SCINTILLA_EDGE_VISUAL_STYLE);
  pyg_enum_add(module, "ScintillaStatus", strip_prefix, GTK_TYPE_SCINTILLA_STATUS);
  pyg_enum_add(module, "ScintillaCursorShape", strip_prefix, GTK_TYPE_SCINTILLA_CURSOR_SHAPE);
  pyg_enum_add(module, "ScintillaCaretPolicy", strip_prefix, GTK_TYPE_SCINTILLA_CARET_POLICY);
  pyg_enum_add(module, "ScintillaSelectionMode", strip_prefix, GTK_TYPE_SCINTILLA_SELECTION_MODE);
  pyg_enum_add(module, "ScintillaCaretSticky", strip_prefix, GTK_TYPE_SCINTILLA_CARET_STICKY);
  pyg_enum_add(module, "ScintillaCaretStyle", strip_prefix, GTK_TYPE_SCINTILLA_CARET_STYLE);
  pyg_enum_add(module, "ScintillaAnnotationVisible", strip_prefix, GTK_TYPE_SCINTILLA_ANNOTATION_VISIBLE);
  pyg_enum_add(module, "ScintillaVirtualSpace", strip_prefix, GTK_TYPE_SCINTILLA_VIRTUAL_SPACE);
  pyg_enum_add(module, "ScintillaModificationFlags", strip_prefix, GTK_TYPE_SCINTILLA_MODIFICATION_FLAGS);
  pyg_enum_add(module, "ScintillaKeys", strip_prefix, GTK_TYPE_SCINTILLA_KEYS);
  pyg_enum_add(module, "ScintillaKeyMod", strip_prefix, GTK_TYPE_SCINTILLA_KEY_MOD);
  pyg_enum_add(module, "ScintillaLexers", strip_prefix, GTK_TYPE_SCINTILLA_LEXERS);
  pyg_enum_add(module, "ScintillaMessages", strip_prefix, GTK_TYPE_SCINTILLA_MESSAGES);

  if (PyErr_Occurred())
    PyErr_Print();
}

/* initialise stuff extension classes */
void
gtk_scintilla_register_classes(PyObject *d)
{
    PyObject *module;

    if ((module = PyImport_ImportModule("gobject")) != NULL) {
        _PyGObject_Type = (PyTypeObject *)PyObject_GetAttrString(module, "GObject");
        if (_PyGObject_Type == NULL) {
            PyErr_SetString(PyExc_ImportError,
                "cannot import name GObject from gobject");
            return ;
        }
    } else {
        PyErr_SetString(PyExc_ImportError,
            "could not import gobject");
        return ;
    }


#line 103 "gtkscintillaconstants.c"
}
