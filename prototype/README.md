# CV rendering pipeline (prototype)

A working prototype of an AsciiDoc-based CV toolchain, covering **two sections**
of `../cv.md`: *Professional Experience* and *Publications*. `../cv.md` remains
the canonical, complete CV and is untouched by this directory.

The point of the prototype is to answer three questions with artifacts rather
than argument: does AsciiDoc render on GitHub, does bibliographic data survive
being treated as data, and is the PDF/DOCX output actually good.

## Build

```sh
make deps     # check for asciidoctor, asciidoctor-pdf, asciidoctor-reducer, pandoc
make          # build/cv.html, build/cv.pdf, build/cv.docx
make check    # verify the committed cv.adoc matches src/ (for CI)
```

Requires Ruby (`gem install asciidoctor asciidoctor-pdf asciidoctor-reducer`) and
pandoc ≥ 2.11 for its built-in citeproc.

## Layout

| Path | Role |
|---|---|
| `src/cv.adoc` | **Authored source.** Prose lives here. |
| `src/publications.json` | **Publication data** in CSL-JSON — 21 records. |
| `src/ama-cv.csl` | Citation style: AMA, locally modified (see below). |
| `src/csl-flatten.lua` | Unwraps citeproc's `second-field-align` spans. |
| `src/bold-author.lua` | Re-bolds the CV owner's name in the bibliography. |
| `src/pdf-theme.yml` | PDF page setup, fonts, running footer — plain YAML. |
| `cv.adoc` | **Generated, committed.** The file GitHub renders. |
| `build/` | Generated outputs. Not committed. |

## Why `cv.adoc` is generated and committed

GitHub renders AsciiDoc in Asciidoctor's *secure* mode, in which `include::`
directives are **not** resolved — they render as a bare link to the missing
file. Verified locally:

```
$ asciidoctor -S secure -e -o - main.adoc
<p><a href="part.adoc" class="bare include">part.adoc</a></p>
```

So the file at the canonical URL has to be a single flattened document.
`asciidoctor-reducer` produces it from `src/cv.adoc` with the generated
bibliography inlined. **Edit `src/cv.adoc`, never `cv.adoc`.** `make check`
fails if the committed copy has drifted, which is the CI guard against someone
(or some agent) editing the generated file by hand.

## What treating publications as data actually bought

- **The author list stopped being retyped.** 21 records, one JSON file.
- **Truncation became a policy, not a fate.** Upstream AMA sets
  `et-al-min="7" et-al-use-first="3"`, which on this CV would have replaced the
  owner's name with "et al" in **15 of 21 entries** — he is rarely in the first
  three authors. `src/ama-cv.csl` is upstream AMA with those two attributes
  removed and the style title/id marked as a local variant. Restyling to
  Vancouver or APA is a one-file swap.
- **Name emphasis became mechanical.** `bold-author.lua` bolds the owner's name
  in whatever form the active style renders it (`Payne J` or `Justin Payne`),
  so it survives a style change instead of being 21 hand-applied `**` pairs.

## Known issues and open questions

1. **Missing publication year.** The Bootsie paper (`payne-bootsie`) has no year
   anywhere in `cv.md` — only "Pak. Entomol. 36(2):79-81". It is currently
   carried in the JSON with a `note` field flagging the gap, and citeproc
   renders it with no date. This is the schema doing its job: the gap was
   invisible in Markdown. **Needs the real year.**
2. **"Published online <month year>".** Ten *Genome Announcements* entries have
   only a month and year in `cv.md` — no volume, issue, or pages — so AMA
   formats them as ahead-of-print. Supplying the missing bibliographic fields
   (or pulling them from the DOIs) fixes it.
3. **Full given names, not AMA initials.** Pandoc 3.1.3's citeproc renders
   "Justin Payne" rather than AMA's "Payne J" for this style; setting
   `initialize-with` on the style, bibliography, or name element did not change
   it in testing. The current output matches `cv.md`'s existing convention, so
   this is left as-is rather than worked around.
4. **`prototype/` is a staging area.** Promoting it means `git mv`-ing the
   contents to the repo root and migrating the remaining ten sections.

## What this replaces

`.formats/` held a WeasyPrint-style paged-media stylesheet and a
`contact-information.md` carrying a Dutch software agency's office addresses —
leftovers from a third-party CV template, unreferenced by anything in the repo.
`src/pdf-theme.yml` supersedes the stylesheet.
