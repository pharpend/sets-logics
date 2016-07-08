all: clean build

build:
	mkdir .build
	cp -r sl.tex sl.bib chapters images .build
	cd .build && \
	  latexmk -pdf sl.tex && \
	  cp sl.pdf ..

clean:
	rm -rf .build
