#!/bin/bash
pandoc \
--template template-penulisan.tex \
--variable mainfont="Droid Serif" \
--variable sansfont="Droid Sans" \
--variable fontsize=12pt \
--variable version=1.0 \
--latex-engine=xelatex \
--toc -N \
-V documentclass=report -o output.pdf 00-cover.md 01-teori.md 02-perancangan.md 03-implementasi.md 04-uji-coba.md
