LATEX=resume.tex
PDF=resume.pdf

.PHONY: clean preview

all: clean preview

clean:
	rm -f *.pdf *.aux *.log *.out

$(PDF): $(LATEX)
	pdflatex $(LATEX)

preview: $(PDF)
	xpdf $(PDF) &
