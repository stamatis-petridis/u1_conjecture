LATEXMK := latexmk
TEXFILE := main.tex

.PHONY: all pdf clean

all: pdf

pdf:
	mkdir -p build
	$(LATEXMK) -pdf -interaction=nonstopmode $(TEXFILE)

clean:
	$(LATEXMK) -C $(TEXFILE)
	rm -rf build
