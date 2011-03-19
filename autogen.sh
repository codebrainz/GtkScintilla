#!/bin/sh

gtkdocize || exit 1
autoreconf -vfi

echo 'Build system setup complete.'
echo 'Now type `./configure` to configure the build system.'