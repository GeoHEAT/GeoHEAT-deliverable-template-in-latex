# GeoHEAT Deliverable Template

A LaTeX template for GeoHEAT project deliverables, with a styled title page
(deliverable number/title, authors, ORCID, beneficiaries, due date,
dissemination level, citation) and EU funding branding.

## Contents

- `main.tex` — the deliverable. Fill in the metadata block
  (`\setdeliverableno`, `\setdeliverabletitle`, `\setauthors`, ...), the
  revision history (`\setrevisionhistory`) and the approval status
  (`\setdeliverableresponsible`, `\setwpleader`, `\setreviewer`,
  `\setprojectcoordinator`), and write the body.
- `geoheatdeliverable.cls` — the document class (layout, title page, branding).
- `references.bib` — bibliography; `elsarticle-num*.bst` — citation styles.
- `geoheat-logo.png`, `geoheat-logo-small.png`, `EU-logo.jpg` — logos.

## Build

```bash
latexmk -pdf main.tex
```

Uses **pdfLaTeX** + **BibTeX** (run automatically by `latexmk`).
