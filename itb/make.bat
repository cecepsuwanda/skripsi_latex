REM clean
if exist build rmdir /S /Q build
if exist output rmdir /S /Q output

REM install
if not exist output mkdir output
if not exist build mkdir build
latexmk -pdf -bibtex -outdir=../build -cd src/thesis.tex
move build\thesis.pdf output
