MD_FILES=$(wildcard ??-Policy.md)
PDF_FILES=$(patsubst %.md, %.pdf, $(MD_FILES))

## all         : make all the PDFs
.PHONY : all
all: $(PDF_FILES)

## bq_tts.md   : generate the intermediate blockquoted TTS commmon policy
bq_tts.md: TTS-Common-Control-Policy.md
	cat $< | sed -e 's/^/> /' > $@

## pdf         : generate a single PDF
%.pdf: %.md bq_tts.md
	m4 -I./ $< > tmp_$<
	cat tmp_$< | sed -e 's/<!-- x//' -e 's/x -->//' | pandoc -o $@ -V colorlinks=true -V linkcolor=blue -V urlcolor=blue -V toccolor=gray
#	rm tmp_$<.md
		
## clean       : rm PDF and temp files
clean:
	rm -f *pdf *tmp.md tmp*md bq_tts.md

## variables   : Print variables.
.PHONY : variables
variables:
	@echo MD_FILES: $(MD_FILES)
	@echo PDF_FILES: $(PDF_FILES)

.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<

