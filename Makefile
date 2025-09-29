PANDOC=pandoc

rapport.pdf: metadata.yaml 0-introduction.md 1-identification-collection.md 2-examination.md 3-analysis.md 4-conclusion.md links.md
	$(PANDOC) --pdf-engine=lualatex --metadata-file=metadata.yaml links.md 0-introduction.md 1-identification-collection.md 2-examination.md 3-analysis.md 4-conclusion.md -o rapport.pdf
