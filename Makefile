MD_FILES=$(wildcard ??-Policy.md)
PDF_FILES=$(patsubst %.md, %.pdf, $(MD_FILES))

## all         : make all the PDFs
.PHONY : all
all: $(PDF_FILES)

## pdf         : generate a single PDF
%.pdf: %.md
	m4 -I./ $< > _tmp.md
	pandoc -o $@ _tmp.md -V colorlinks=true -V linkcolor=blue -V urlcolor=blue -V toccolor=gray
	rm _tmp.md
		
## clean       : rm PDF and temp files
clean:
	rm *pdf *tmp.md

## variables   : Print variables.
.PHONY : variables
variables:
	@echo MD_FILES: $(MD_FILES)
	@echo PDF_FILES: $(PDF_FILES)

.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<

