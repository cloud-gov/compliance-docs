%.pdf: %.md
	m4 -I./ $< > _tmp.md
	pandoc -o $@ _tmp.md -V colorlinks=true -V linkcolor=blue -V urlcolor=blue -V toccolor=gray
	rm _tmp.md
		
clean:
	rm *pdf *tmp.md
