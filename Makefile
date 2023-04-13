# --- Macros ---
FLAGS = -shell-escape -pdf -f 
CV    = cv.tex
FILES = ./cv.out ./cv.aux ./cv.fls ./cv.fdb_latexmk
TARGET = ~/{dox/blog/content/cv.pdf,CV_Zakaria_Kebairia_2023.pdf}
# --- Targets ---
clean:
	@echo "Cleaning..."
	rm -rf ${FILES}

build: cv.tex cv.cls
	xelatex ${FLAGS} ${CV} && cp ~/dox/work/latex/cv/cv.pdf ~/CV_Zakaria_Kebairia_2022.pdf &&  cp ~/dox/work/latex/cv/cv.pdf 	~/dox/blog/content/files


watch: cv.tex cv.cls
	@find . -type f | entr -c xelatex ${FLAGS} ${CV} && cp ~/dox/wrk/latex/cv/cv.pdf ~/CV_Zakaria_Kebairia_2022.pdf  &&  cp ~/dox/work/latex/cv/cv.pdf 	~/dox/blog/content/files

.PHONY: clean
