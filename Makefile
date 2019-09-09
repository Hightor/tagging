# Makefile for tagging package
# -------------------------------------------------------------

LIST    =   tagging.sty tagging.tex tagging.pdf README
SHIPDIR =   tagging

all: clean $(SHIPDIR)/tagging.zip

$(SHIPDIR)/tagging.zip : $(LIST)
	cp $^ $(SHIPDIR)/
	chmod 644 $(SHIPDIR)/*
	zip -ro $@ $(SHIPDIR)

clean:
	-rm -f $(SHIPDIR)/*
