#!/bin/sh

valac -cCH gtkscintillastyle.h --use-header --vapidir=. \
	--pkg gtk+-2.0 --pkg scintilla --pkg gtkscintilla \
	gtkscintillastyle.vala
