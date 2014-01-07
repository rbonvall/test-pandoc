PANDOC := pandoc
#PANDOC := ~/.cabal/bin/pandoc

MD := $(wildcard *.md)
HTML := $(MD:.md=.html)

all: $(HTML)

%.html: %.md
	$(PANDOC) $< -o $@

clean:
	@rm -vf $(HTML)

.PHONY: all clean



