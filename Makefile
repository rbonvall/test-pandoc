PANDOC := pandoc
#PANDOC := ~/.cabal/bin/pandoc

MD := $(wildcard *.md)
HTML := $(MD:.md=.html)
TEMPLATE := templates/template.html

all: $(HTML)

%.html: %.md $(TEMPLATE)
	$(PANDOC) $< -o $@ --template="$(TEMPLATE)"

clean:
	@rm -vf $(HTML)

.PHONY: all clean



