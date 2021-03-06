#  Copyright (C) 1993-2012, Ghostgum Software Pty Ltd.  All rights reserved.
#  
# This file is part of GSview.
#  
# This program is distributed with NO WARRANTY OF ANY KIND.  No author
# or distributor accepts any responsibility for the consequences of using it,
# or for whether it serves any particular purpose or works at all, unless he
# or she says so in writing.  Refer to the GSview Licence (the "Licence") 
# for full details.
#  
# Every copy of GSview must include a copy of the Licence, normally in a 
# plain ASCII text file named LICENCE.  The Licence grants you the right 
# to copy, modify and redistribute GSview, but only under certain conditions 
# described in the Licence.  Among other things, the Licence requires that 
# the copyright notice and this notice be preserved on all copies.

# Partial makefile for language and version

# Language is English (en), Deutsch (de), Spanish (es), French (fr),
# Italian (it), Greek (gr) or Dutch (nl)
# This only applies to the utilties, not GSview itself.
LANGUAGE=en

# GSview version
GSVIEW_VERSION=50
GSVIEW_DOT_VERSION=5.0
GSVIEW_DATE=2012-01-17


$(OD)gsvver.h: $(ECHOGSV) $(SRC)gvcver.mak
	$(ECHOGSV) -w $(OD)gsvver.h "/* gsvver.h - automatically generated by gvcver.mak */"
	$(ECHOGSV) -a $(OD)gsvver.h -x 23 "define GSVIEW_VERSION " $(GSVIEW_VERSION)
	$(ECHOGSV) -a $(OD)gsvver.h -x 23 "define GSVIEW_DOT_VERSION " -x 22 $(GSVIEW_DOT_VERSION) -x 22
	$(ECHOGSV) -a $(OD)gsvver.h -x 23 "define GSVIEW_DATE " -x 22 $(GSVIEW_DATE) -x 22
	$(ECHOGSV) -a $(OD)gsvver.h -x 23 "define GSVIEW_DOCPATH " -x 22 $(GSVIEW_DOCPATH) "/gsview-" $(GSVIEW_DOT_VERSION) "/" -x 22
	$(ECHOGSV) -a $(OD)gsvver.h -x 23 "define GSVIEW_ETCPATH " -x 22 $(GSVIEW_ETCPATH) "/gsview/" -x 22
