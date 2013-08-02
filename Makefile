##############################
# Makefile for libstr
##############################

SHELL=/bin/sh

CC=gcc

VERSION=0.0.1

LIBNAME=libstr
LIBDIR=lib
SONAME=$(LIBNAME).so
OUTNAME=$(LIBNAME).so.$(VERSION)

PKGNAME=$(LIBNAME)-$(VERSION)
PKGLIST=Makefile src/ include/ 

IDIR=include
LFLAGS=-I$(IDIR) -fPIC -shared -Wl,-soname,$(SONAME) #-g #uncomment for debuging with gdb
CFLAGS=-c #-g #uncomment for debuging with gdb

SRCS=*.c 
SRCDIR=src
SRC:=$(wildcard $(SRCDIR)/$(SRCS))

TSRCS=
TSRCDIR=tst
TSRC=$(patsubst %.c, $(TSRCDIR)/%.c, $(TSRCS))
TOBJ := $(patsubst $(TSRCDIR)/%.c, $(TSRCDIR)/%.o, $(TSRC))

OBJDIR=obj
OBJ := $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: setup clean pkg

all: setup $(OBJ) $(BINDIR)
	$(CC) $(LFLAGS) $(OBJ) -o $(LIBDIR)/$(OUTNAME)

pkg:
	mkdir -p $(PKGNAME)
	cp -r  $(PKGLIST) $(PKGNAME)
	tar -vc -f $(PKGNAME).tar $(PKGNAME)
	gzip $(PKGNAME).tar 
	rm -r $(PKGNAME)	

testing: setup $(TOBJ) $(OBJ)
	$(CC) $(LFLAGS) $(TOBJ) $(OBJ) -o $(TSRCDIR)/tst

setup: 
	mkdir -p $(LIBDIR)
	mkdir -p $(OBJDIR)

clean: 
	rm -rf $(OBJDIR)

$(TSRCDIR)/%.o: $(TSRCDIR)/%.c
	$(CC) $(LFLAGS) $(CFLAGS) $< -o $@

$(OBJDIR)/%.o: $(SRCDIR)/%.c 
	$(CC) $(LFLAGS) $(CFLAGS) $< -o $@

