LATEXMK := latexmk
TEXFILE := main.tex

.PHONY: all pdf clean

all: pdf

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode $(TEXFILE)

clean:
	$(LATEXMK) -C $(TEXFILE)
