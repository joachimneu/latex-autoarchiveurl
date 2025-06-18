# Makefile for autoarchiveurl
# Build .sty and documentation from .dtx and .ins

PACKAGE = autoarchiveurl
SRCDIR = $(PACKAGE)
BUILDDIR = build

all: $(BUILDDIR)/$(PACKAGE).sty $(BUILDDIR)/$(PACKAGE).pdf

$(BUILDDIR)/$(PACKAGE).sty: $(SRCDIR)/$(PACKAGE).ins $(SRCDIR)/$(PACKAGE).dtx | $(BUILDDIR)
	cd $(BUILDDIR) && latex ../$(SRCDIR)/$(PACKAGE).ins

$(BUILDDIR)/$(PACKAGE).pdf: $(SRCDIR)/$(PACKAGE).dtx | $(BUILDDIR)
	cd $(BUILDDIR) && pdflatex ../$(SRCDIR)/$(PACKAGE).dtx && pdflatex ../$(SRCDIR)/$(PACKAGE).dtx

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

clean:
	rm -f $(BUILDDIR)/*

.PHONY: all clean
