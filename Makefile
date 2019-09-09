# Makefile for tagging package
# -------------------------------------------------------------

LIST    =   tagging.sty tagging.tex tagging.pdf README
SHIPDIR =   tagging

all: $(SHIPDIR)/tagging.zip

$(SHIPDIR)/tagging.zip : $(LIST)
	-rm -f $(SHIPDIR)/*
	cp $^ $(SHIPDIR)/
	chmod 644 $(SHIPDIR)/*
	zip -ro $@ $(SHIPDIR)
