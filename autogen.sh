#!/bin/sh

gtkdocize || exit 1
autoreconf --install --force
