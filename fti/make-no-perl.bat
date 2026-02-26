@echo off
REM Build tesis tanpa latexmk/Perl: pakai pdflatex + bibtex saja.

REM clean
if exist build rmdir /S /Q build
if exist output rmdir /S /Q output

REM install
if not exist output mkdir output

cd src

echo [1/4] pdflatex pertama...
pdflatex -interaction=nonstopmode thesis.tex
if errorlevel 1 exit /b 1

echo [2/4] bibtex...
bibtex thesis
if errorlevel 1 exit /b 1

echo [3/4] pdflatex kedua...
pdflatex -interaction=nonstopmode thesis.tex
if errorlevel 1 exit /b 1

echo [4/4] pdflatex ketiga...
pdflatex -interaction=nonstopmode thesis.tex
if errorlevel 1 exit /b 1

cd ..

copy src\thesis.pdf output\thesis.pdf
if errorlevel 1 exit /b 1

echo Menghapus file hasil kompilasi di src...
del /q src\thesis.aux src\thesis.bbl src\thesis.blg src\thesis.log src\thesis.toc src\thesis.lof src\thesis.lot src\thesis.out src\thesis-blx.bib src\thesis.run.xml src\thesis.pdf 2>nul
del /q src\thesis.bcf src\thesis.fls src\thesis.fdb_latexmk src\thesis.synctex.gz 2>nul

echo.
echo Selesai. PDF: output\thesis.pdf
