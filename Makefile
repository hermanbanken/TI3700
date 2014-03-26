all: paper pres

paper:
	mkdir -p build
	pdflatex -halt-on-error -file-line-error -interaction=batchmode -output-directory=build paper.tex || ( cat build/paper.log && exit -1 )
	bibtex build/paper
	pdflatex -halt-on-error -file-line-error -interaction=batchmode -output-directory=build paper.tex || ( cat build/paper.log && exit -1 )
pres:
	mkdir -p build
	cd Presentation && pdflatex -halt-on-error -interaction=batchmode -file-line-error -output-directory=../build presentation.tex || ( cat presentation.log && exit -1 )
	
.PHONY: all
