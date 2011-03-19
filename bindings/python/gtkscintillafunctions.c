/* -- THIS FILE IS GENERATED - DO NOT EDIT *//* -*- Mode: C; c-basic-offset: 4 -*- */

#include <Python.h>



#line 3 "gtkscintilla.override"
#include <Python.h>
#include "pygobject.h"
#include "gtkscintilla.h"
#line 12 "gtkscintillafunctions.c"


/* ---------- types from other modules ---------- */
static PyTypeObject *_PyGObject_Type;
#define PyGObject_Type (*_PyGObject_Type)


/* ---------- forward type declarations ---------- */

#line 22 "gtkscintillafunctions.c"



/* ----------- functions ----------- */

const PyMethodDef gtk_scintilla_functions[] = {
    { NULL, NULL, 0, NULL }
};

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


#line 52 "gtkscintillafunctions.c"
}
