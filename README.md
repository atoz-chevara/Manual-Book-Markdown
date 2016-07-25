# Manual Book Markdown

Buku panduan ini dibuat dengan menggunakan Markdown dan [Pandoc](http://johnmacfarlane.net/pandoc/index.html)

## Cara Menggunakan

Walaupun format markdown didesain untuk bisa dibaca apa adanya, kadangkala kita butuh format lain seperti PDF agar buku ini bisa dicetak. Untuk mengkonversi Markdown menjadi PDF, kita menggunakan aplikasi yang bernama Pandoc.

Sebelum melakukan konversi, install terlebih dahulu paket berikut:

    $ sudo apt-get install pandoc texlive-latex-base \
    texlive-xetex latex-beamer \
    texlive-lang-other fonts-droid fonts-inconsolata

### Cara konversi ke PDF

Untuk mengkonversi buku menjadi PDF, gunakan perintah berikut:

    $ bash build.sh
    
atau

    $ pandoc \
    --template template-penulisan.tex \
    --variable mainfont="Droid Serif" \
    --variable sansfont="Droid Sans" \
    --variable fontsize=12pt \
    --variable version=1.0 \
    --latex-engine=xelatex --toc -N \
    -V documentclass=report \
    -o output.pdf \
    00-cover.md 01-teori.md 02-perancangan.md 03-implementasi.md 04-uji-coba.md

Buka berkas `output.pdf` dengan aplikasi pdf viewer.

### FAQ

Q: Setelah saya menjalankan perintah `bash build.sh` menampilkan output seperti berikut:


    ! Package babel Error: Unknown option `bahasa'. Either you misspelled it
    (babel)                or the language definition file bahasa.ldf was not found
    .
    
    See the babel package documentation for explanation.
    Type  H <return>  for immediate help.
    ...                                              
                                                      
    l.299 \ProcessOptions*

Apa yang harus saya lakukan?

A: Silahkan menginstall paket `texlive-lang-other`:

    $ sudo apt-get install -y texlive-lang-other
