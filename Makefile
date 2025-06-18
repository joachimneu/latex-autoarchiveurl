# Makefile for autoarchiveurl
# Build .sty and documentation from .dtx and .ins

PACKAGE = autoarchiveurl
PKGDIR = $(PACKAGE)

all: $(PKGDIR)/$(PACKAGE).sty $(PKGDIR)/$(PACKAGE).pdf

$(PKGDIR)/$(PACKAGE).sty: $(PKGDIR)/$(PACKAGE).ins $(PKGDIR)/$(PACKAGE).dtx
	cd $(PKGDIR) && latex $(PACKAGE).ins

$(PKGDIR)/$(PACKAGE).pdf: $(PKGDIR)/$(PACKAGE).dtx
	cd $(PKGDIR) && pdflatex $(PACKAGE).dtx && pdflatex $(PACKAGE).dtx

clean:
	rm -f $(PKGDIR)/*.aux $(PKGDIR)/*.log $(PKGDIR)/*.toc $(PKGDIR)/*.out $(PKGDIR)/*.glo $(PKGDIR)/*.gls $(PKGDIR)/*.idx $(PKGDIR)/*.ilg $(PKGDIR)/*.ind $(PKGDIR)/*.lof $(PKGDIR)/*.lot

.PHONY: all clean
