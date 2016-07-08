all: setup build-ebook build-print clean
ebook: setup build-ebook clean
print: setup build-print clean

setup:
	mkdir -p .build
	cp -rv sl.bib sl*.tex chapters files images .build


build-ebook:
	cd .build && \
	  latexmk -pdf sl-ebook.tex && \
	  cp sl-ebook.pdf ..

build-print:
	cd .build && \
	  latexmk -pdf sl-print.tex && \
	  cp sl-print.pdf ..

clean:
	rm -rf .build
