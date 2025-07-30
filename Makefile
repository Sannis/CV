PDFLATEX ?= pdflatex

PDFLATEXFLAGS ?= --shell-escape

CLEAN_LOGS ?= *.aux *.toc *.idx *.ind *.ilg *.log *.out *.lof *.lot *.lol \
  *.blg *.bak *.dvi *.ps
CLEAN_ALL ?= $(CLEAN_LOGS) *.bbl *.pdf

all: cv

cv: Oleg_Efimov_CV.pdf
	rm -f $(CLEAN_LOGS)

Oleg_Efimov_CV.pdf: Oleg_Efimov_CV.tex
	$(PDFLATEX) $(PDFLATEXFLAGS) Oleg_Efimov_CV
	$(PDFLATEX) $(PDFLATEXFLAGS) Oleg_Efimov_CV

clean:
	rm -f $(CLEAN_ALL)

