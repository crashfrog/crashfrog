# CV rendering pipeline.
#
#   make            build every output into build/
#   make cv.adoc    regenerate the flattened, GitHub-rendered source
#   make html pdf docx
#   make check      verify the committed cv.adoc is current
#   make clean
#
# Requires: asciidoctor, asciidoctor-pdf, asciidoctor-reducer, pandoc (>= 2.11).
# Run `make deps` to see what is missing.

SRC        := src/cv.adoc
DATA       := src/publications.json
CSL        := src/ama-cv.csl
FILTERS    := src/csl-flatten.lua src/bold-author.lua
THEME      := src/pdf-theme.yml
BUILD      := build

# The flattened single-file source. This is the artifact GitHub renders, so it
# is committed. It is generated: edit src/cv.adoc, never this file.
FLAT       := cv.adoc

ASCIIDOCTOR := asciidoctor
REDUCER     := asciidoctor-reducer
PANDOC      := pandoc

# Use src/reference.docx for Word styling if it has been committed; otherwise
# fall back to pandoc's built-in styling.
REFDOC := $(wildcard src/reference.docx)
REFDOC_FLAG := $(if $(REFDOC),--reference-doc=$(REFDOC),)

.PHONY: all html pdf docx check clean deps
.DEFAULT_GOAL := all

all: html pdf docx

# --- data -> AsciiDoc -------------------------------------------------------
# Publications are data, not prose. citeproc formats them against a CSL style;
# the Lua filter re-bolds the CV owner's name, which citeproc emits as plain text.
$(BUILD)/publications.adoc: $(DATA) $(CSL) $(FILTERS) | $(BUILD)
	printf -- '---\nnocite: |\n  @*\nlink-bibliography: false\n---\n' > $(BUILD)/_bib.md
	$(PANDOC) --citeproc --csl=$(CSL) --bibliography=$(DATA) \
	    $(addprefix --lua-filter=,$(FILTERS)) -t asciidoc --wrap=none -o $@ $(BUILD)/_bib.md
	@rm -f $(BUILD)/_bib.md

# --- flattening -------------------------------------------------------------
# GitHub renders AsciiDoc in secure mode, where include:: directives are NOT
# resolved -- they render as a bare link. So the committed file has to be a
# single flattened document with the generated sections already inlined.
$(FLAT): $(SRC) $(BUILD)/publications.adoc
	$(REDUCER) -o $@ $(SRC)

# --- outputs ----------------------------------------------------------------
html: $(BUILD)/cv.html
$(BUILD)/cv.html: $(FLAT) | $(BUILD)
	$(ASCIIDOCTOR) -b html5 -a toc=left -a stylesheet! -o $@ $(FLAT)

pdf: $(BUILD)/cv.pdf
$(BUILD)/cv.pdf: $(FLAT) $(THEME) | $(BUILD)
	$(ASCIIDOCTOR) -r asciidoctor-pdf -b pdf \
	    -a pdf-theme=$(THEME) -a pdf-fontsdir=GEM_FONTS_DIR \
	    -o $@ $(FLAT)

# DocBook is the high-fidelity bridge to Word: pandoc cannot READ AsciiDoc
# (its asciidoc support is output-only), but it reads DocBook well, and DocBook
# preserves the section/title structure that a Markdown round-trip would flatten.
docx: $(BUILD)/cv.docx
$(BUILD)/cv.docx: $(FLAT) | $(BUILD)
	$(ASCIIDOCTOR) -b docbook -o $(BUILD)/cv.xml $(FLAT)
	$(PANDOC) -f docbook -t docx $(REFDOC_FLAG) -o $@ $(BUILD)/cv.xml

$(BUILD):
	mkdir -p $(BUILD)

# --- housekeeping -----------------------------------------------------------
# CI can run this to catch a cv.adoc that was edited by hand or left stale.
check: $(BUILD)/publications.adoc
	@$(REDUCER) -o $(BUILD)/cv.flat.check $(SRC)
	@if diff -q $(FLAT) $(BUILD)/cv.flat.check >/dev/null 2>&1; then \
	    echo "OK: $(FLAT) is up to date with src/"; \
	else \
	    echo "STALE: $(FLAT) does not match src/ -- run 'make $(FLAT)'"; \
	    diff -u $(FLAT) $(BUILD)/cv.flat.check | head -40; \
	    exit 1; \
	fi

deps:
	@for t in $(ASCIIDOCTOR) $(REDUCER) $(PANDOC) asciidoctor-pdf; do \
	    printf '%-22s ' "$$t"; \
	    command -v $$t >/dev/null 2>&1 && echo present || echo MISSING; \
	done

clean:
	rm -rf $(BUILD)
