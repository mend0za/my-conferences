PDF=irmc_on_linux.pdf

GRAPHICS=diagrams/embedded-release-cycle.png diagrams/irmc-components.png

OUTDIR=out

all: $(PDF)

$(GRAPHICS): diagrams.uml
	plantuml $<

uml: $(GRAPHICS)

%.pdf: %.tex  $(OUTDIR) $(GRAPHICS)
	xelatex -mktex=pk -output-directory=$(OUTDIR) -output-format=pdf $<
	xelatex -mktex=pk -output-directory=$(OUTDIR) -output-format=pdf $<
	cp -v "$(OUTDIR)/$@" .

$(OUTDIR):
	mkdir -pv $(OUTDIR)

clean: 
	rm -rvf $(OUTDIR) .depend $(GRAPHICS)

