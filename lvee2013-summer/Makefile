HTML=abstracts.html
PDF=xmpp_from_jabber_org_by_point_of_view.pdf

OUTDIR=out

all: $(PDF) $(HTML)

%.html: %.md
	markdown $< >$@


%.pdf: %.tex  $(OUTDIR) part*.tex
	xelatex -mktex=pk -output-directory=$(OUTDIR) -output-format=pdf $<
	xelatex -mktex=pk -output-directory=$(OUTDIR) -output-format=pdf $<
	cp -v "$(OUTDIR)/$@" .

$(OUTDIR):
	mkdir -pv $(OUTDIR)

clean: 
	rm -rvf $(OUTDIR) .depend

