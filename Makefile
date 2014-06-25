LATEX=resume.tex
PDF=resume.pdf

.PHONY: clean preview

all: clean pdf

clean:
	rm -f *.pdf *.aux *.log *.out

$(PDF): $(LATEX)
	pdflatex $(LATEX)

pdf: $(PDF)

preview: pdf
	xpdf $(PDF) &
