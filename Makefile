# --- Macros ---
FLAGS = -shell-escape -pdf -f 
CV = cv.tex
FILES = ./cv.out ./cv.aux ./cv.fls ./cv.fdb_latexmk
# --- Targets ---
clean:
	@echo "Cleaning..."
	rm -rf ${FILES}

watch: cv.tex cv.cls
	@find . -type f | entr -c xelatex ${FLAGS} ${CV}

.PHONY: clean
