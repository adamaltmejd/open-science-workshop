# Makefile to build slides

## Source and output files
# Because we have citations we need pandoc to build html file (rather than Jekyll)
sources := $(wildcard *.Rmd)
targets := $(patsubst %.Rmd, %.html,$(sources))

# Settings
CSL = assets/chicago-author-date.csl
BIB = assets/bibliography.bib

all: $(targets)

%.md: %.Rmd
	Rscript -e 'knitr::knit(input = "$<", output = "$@")'

# Revealjs slides
%.html: %.md
	pandoc \
		--from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash-implicit_figures \
		--to revealjs \
		--standalone \
		--bibliography=$(BIB) \
		--csl=$(CSL) \
		--slide-level=2 \
		--highlight-style=pygments \
		--metadata-file _settings.yml \
		--template assets/revealjs.template \
		--output $@ $<

.PHONY: git clean

git:
	git add $(sources) $(targets)
	git commit -m "Slide autocomit."
	git push

clean:
	rm -f open_science.md open_science.html
