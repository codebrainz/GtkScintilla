/* -- THIS FILE IS GENERATED - DO NOT EDIT *//* -*- Mode: C; c-basic-offset: 4 -*- */

#include <Python.h>



#line 3 "gtkscintilla.override"
#include <Python.h>
#include "pygobject.h"
#include "gtkscintilla.h"
#line 12 "gtkscintilla.c"


/* ---------- types from other modules ---------- */
static PyTypeObject *_PyGObject_Type;
#define PyGObject_Type (*_PyGObject_Type)


/* ---------- forward type declarations ---------- */
PyTypeObject G_GNUC_INTERNAL PyGtkScintilla_Type;

#line 23 "gtkscintilla.c"



/* ----------- GtkScintilla ----------- */

static int
_wrap_gtk_scintilla_new(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char* kwlist[] = { NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,
                                     ":gtkscintilla.Scintilla.__init__",
                                     kwlist))
        return -1;

    pygobject_constructv(self, 0, NULL);
    if (!self->obj) {
        PyErr_SetString(
            PyExc_RuntimeError, 
            "could not create gtkscintilla.Scintilla object");
        return -1;
    }
    return 0;
}

static PyObject *
_wrap_gtk_scintilla_update_line_numbers(PyGObject *self)
{
    
    gtk_scintilla_update_line_numbers(GTK_SCINTILLA(self->obj));
    
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_get_line_numbers_visible(PyGObject *self)
{
    int ret;

    
    ret = gtk_scintilla_get_line_numbers_visible(GTK_SCINTILLA(self->obj));
    
    return PyBool_FromLong(ret);

}

static PyObject *
_wrap_gtk_scintilla_set_line_numbers_visible(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "visible", NULL };
    int visible;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"i:Gtk.Scintilla.set_line_numbers_visible", kwlist, &visible))
        return NULL;
    
    gtk_scintilla_set_line_numbers_visible(GTK_SCINTILLA(self->obj), visible);
    
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_set_font(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style_number", "font_desc", NULL };
    int style_number;
    char *font_desc;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"is:Gtk.Scintilla.set_font", kwlist, &style_number, &font_desc))
        return NULL;
    
    gtk_scintilla_set_font(GTK_SCINTILLA(self->obj), style_number, font_desc);
    
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_get_font(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style_number", NULL };
    int style_number;
    gchar *ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"i:Gtk.Scintilla.get_font", kwlist, &style_number))
        return NULL;
    
    ret = gtk_scintilla_get_font(GTK_SCINTILLA(self->obj), style_number);
    
    if (ret) {
        PyObject *py_ret = PyString_FromString(ret);
        g_free(ret);
        return py_ret;
    }
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_get_background_color(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style", NULL };
    int style;
    gchar *ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"i:Gtk.Scintilla.get_background_color", kwlist, &style))
        return NULL;
    
    ret = gtk_scintilla_get_background_color(GTK_SCINTILLA(self->obj), style);
    
    if (ret) {
        PyObject *py_ret = PyString_FromString(ret);
        g_free(ret);
        return py_ret;
    }
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_set_background_color(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style", "color_spec", NULL };
    int style;
    char *color_spec;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"is:Gtk.Scintilla.set_background_color", kwlist, &style, &color_spec))
        return NULL;
    
    gtk_scintilla_set_background_color(GTK_SCINTILLA(self->obj), style, color_spec);
    
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_get_foreground_color(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style", NULL };
    int style;
    gchar *ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"i:Gtk.Scintilla.get_foreground_color", kwlist, &style))
        return NULL;
    
    ret = gtk_scintilla_get_foreground_color(GTK_SCINTILLA(self->obj), style);
    
    if (ret) {
        PyObject *py_ret = PyString_FromString(ret);
        g_free(ret);
        return py_ret;
    }
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_set_foreground_color(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style", "color_spec", NULL };
    int style;
    char *color_spec;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"is:Gtk.Scintilla.set_foreground_color", kwlist, &style, &color_spec))
        return NULL;
    
    gtk_scintilla_set_foreground_color(GTK_SCINTILLA(self->obj), style, color_spec);
    
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_gtk_scintilla_set_style(PyGObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "style_number", "font_spec", "fg_color", "bg_color", NULL };
    int style_number;
    char *font_spec, *fg_color, *bg_color;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"isss:Gtk.Scintilla.set_style", kwlist, &style_number, &font_spec, &fg_color, &bg_color))
        return NULL;
    
    gtk_scintilla_set_style(GTK_SCINTILLA(self->obj), style_number, font_spec, fg_color, bg_color);
    
    Py_INCREF(Py_None);
    return Py_None;
}

static const PyMethodDef _PyGtkScintilla_methods[] = {
    { "update_line_numbers", (PyCFunction)_wrap_gtk_scintilla_update_line_numbers, METH_NOARGS,
      NULL },
    { "get_line_numbers_visible", (PyCFunction)_wrap_gtk_scintilla_get_line_numbers_visible, METH_NOARGS,
      NULL },
    { "set_line_numbers_visible", (PyCFunction)_wrap_gtk_scintilla_set_line_numbers_visible, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "set_font", (PyCFunction)_wrap_gtk_scintilla_set_font, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "get_font", (PyCFunction)_wrap_gtk_scintilla_get_font, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "get_background_color", (PyCFunction)_wrap_gtk_scintilla_get_background_color, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "set_background_color", (PyCFunction)_wrap_gtk_scintilla_set_background_color, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "get_foreground_color", (PyCFunction)_wrap_gtk_scintilla_get_foreground_color, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "set_foreground_color", (PyCFunction)_wrap_gtk_scintilla_set_foreground_color, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "set_style", (PyCFunction)_wrap_gtk_scintilla_set_style, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { NULL, NULL, 0, NULL }
};

PyTypeObject G_GNUC_INTERNAL PyGtkScintilla_Type = {
    PyObject_HEAD_INIT(NULL)
    0,                                 /* ob_size */
    "gtkscintilla.Scintilla",                   /* tp_name */
    sizeof(PyGObject),          /* tp_basicsize */
    0,                                 /* tp_itemsize */
    /* methods */
    (destructor)0,        /* tp_dealloc */
    (printfunc)0,                      /* tp_print */
    (getattrfunc)0,       /* tp_getattr */
    (setattrfunc)0,       /* tp_setattr */
    (cmpfunc)0,           /* tp_compare */
    (reprfunc)0,             /* tp_repr */
    (PyNumberMethods*)0,     /* tp_as_number */
    (PySequenceMethods*)0, /* tp_as_sequence */
    (PyMappingMethods*)0,   /* tp_as_mapping */
    (hashfunc)0,             /* tp_hash */
    (ternaryfunc)0,          /* tp_call */
    (reprfunc)0,              /* tp_str */
    (getattrofunc)0,     /* tp_getattro */
    (setattrofunc)0,     /* tp_setattro */
    (PyBufferProcs*)0,  /* tp_as_buffer */
    Py_TPFLAGS_DEFAULT | Py_TPFLAGS_BASETYPE,                      /* tp_flags */
    NULL,                        /* Documentation string */
    (traverseproc)0,     /* tp_traverse */
    (inquiry)0,             /* tp_clear */
    (richcmpfunc)0,   /* tp_richcompare */
    offsetof(PyGObject, weakreflist),             /* tp_weaklistoffset */
    (getiterfunc)0,          /* tp_iter */
    (iternextfunc)0,     /* tp_iternext */
    (struct PyMethodDef*)_PyGtkScintilla_methods, /* tp_methods */
    (struct PyMemberDef*)0,              /* tp_members */
    (struct PyGetSetDef*)0,  /* tp_getset */
    NULL,                              /* tp_base */
    NULL,                              /* tp_dict */
    (descrgetfunc)0,    /* tp_descr_get */
    (descrsetfunc)0,    /* tp_descr_set */
    offsetof(PyGObject, inst_dict),                 /* tp_dictoffset */
    (initproc)_wrap_gtk_scintilla_new,             /* tp_init */
    (allocfunc)0,           /* tp_alloc */
    (newfunc)0,               /* tp_new */
    (freefunc)0,             /* tp_free */
    (inquiry)0              /* tp_is_gc */
};



/* ----------- functions ----------- */

static PyObject *
_wrap_int_to_color_spec(PyObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "int_color", NULL };
    int int_color;
    gchar *ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"i:int_to_color_spec", kwlist, &int_color))
        return NULL;
    
    ret = int_to_color_spec(int_color);
    
    if (ret) {
        PyObject *py_ret = PyString_FromString(ret);
        g_free(ret);
        return py_ret;
    }
    Py_INCREF(Py_None);
    return Py_None;
}

static PyObject *
_wrap_color_spec_to_int(PyObject *self, PyObject *args, PyObject *kwargs)
{
    static char *kwlist[] = { "color_spec", NULL };
    char *color_spec;
    int ret;

    if (!PyArg_ParseTupleAndKeywords(args, kwargs,"s:color_spec_to_int", kwlist, &color_spec))
        return NULL;
    
    ret = color_spec_to_int(color_spec);
    
    return PyInt_FromLong(ret);
}

const PyMethodDef gtk_scintilla_functions[] = {
    { "int_to_color_spec", (PyCFunction)_wrap_int_to_color_spec, METH_VARARGS|METH_KEYWORDS,
      NULL },
    { "color_spec_to_int", (PyCFunction)_wrap_color_spec_to_int, METH_VARARGS|METH_KEYWORDS,
      NULL },
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


#line 350 "gtkscintilla.c"
    pygobject_register_class(d, "GtkScintilla", GTK_TYPE_SCINTILLA, &PyGtkScintilla_Type, Py_BuildValue("(O)", &PyGtkFrame_Type));
    pyg_set_object_has_new_constructor(GTK_TYPE_SCINTILLA);
}
