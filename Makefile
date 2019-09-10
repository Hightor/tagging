# Makefile for tagging package
# -------------------------------------------------------------

LISTA   =   tagging.sty tagging.tex README
LISTB   =   tagging.pdf
SHIPDIR =   tagging

all: clean $(SHIPDIR)/tagging.zip

$(SHIPDIR)/tagging.zip : $(LISTA) $(LISTB)
	for n in $(LISTA) ; do sed -e '1 s/^\xef\xbb\xbf//;s/\r$$//' < $$n > $(SHIPDIR)/$$n ; done
	cp $(LISTB) $(SHIPDIR)/    
	chmod 644 $(SHIPDIR)/*
	zip -ro $@ $(SHIPDIR)

clean:
	-rm -f $(SHIPDIR)/*
