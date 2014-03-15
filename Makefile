all: paper

paper:
	mkdir -p build
	bibtex paper
	pdflatex -halt-on-error -file-line-error -interaction=batchmode -output-directory=build paper.tex || ( cat build/paper.log && exit -1 )
	
.PHONY: all