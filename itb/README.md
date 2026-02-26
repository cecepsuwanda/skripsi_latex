# Template Tesis LaTeX IF ITB

Build: dari folder `itb/` jalankan `make install` (Unix) atau `make.bat` (Windows). PDF hasil di `output/thesis.pdf`.

Jika `latexmk` gagal karena Perl tidak terpasang, gunakan **`make-no-perl.bat`** (Windows): skrip yang memakai hanya `pdflatex` dan `bibtex`, tanpa Perl.

## Struktur

- `src/thesis.tex` — dokumen utama
- `src/config/` — style (`if-itb-thesis.sty`), hyphenation (`hypenation-id.tex`), informasi umum (`informations.tex`)
- `src/chapters/` — bab, abstrak, lampiran
- `src/references.bib` — daftar pustaka

## File opsional

- `src/chapters/instruction.tex` — placeholder; tidak di-include di `thesis.tex`
- `src/paper.tex` — placeholder; tidak di-include di `thesis.tex`
- `src/chapters/appendix-3.tex` — kosong; tambahkan `\input{chapters/appendix-3}` di `thesis.tex` bila akan diisi
