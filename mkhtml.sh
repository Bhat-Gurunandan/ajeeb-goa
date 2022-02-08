#!/usr/local/bin/bash

pandoc -f gfm -t html --template epub/template.xhtml markdown/01cover.md        -o epub/ebook/OEBPS/01cover.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/02info.md         -o epub/ebook/OEBPS/02info.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/03dedication.md   -o epub/ebook/OEBPS/03dedication.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/04foreword.md     -o epub/ebook/OEBPS/04foreword.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/05perspective.md  -o epub/ebook/OEBPS/05perspective.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter01.md      -o epub/ebook/OEBPS/chapter01.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter02.md      -o epub/ebook/OEBPS/chapter02.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter03.md      -o epub/ebook/OEBPS/chapter03.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter04.md      -o epub/ebook/OEBPS/chapter04.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter05.md      -o epub/ebook/OEBPS/chapter05.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter06.md      -o epub/ebook/OEBPS/chapter06.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter07.md      -o epub/ebook/OEBPS/chapter07.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter08.md      -o epub/ebook/OEBPS/chapter08.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter09.md      -o epub/ebook/OEBPS/chapter09.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter10.md      -o epub/ebook/OEBPS/chapter10.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter11.md      -o epub/ebook/OEBPS/chapter11.xhtml
pandoc -f gfm -t html --template epub/template.xhtml markdown/chapter12.md      -o epub/ebook/OEBPS/chapter12.xhtml
cd epub/ebook
rm -rf ebook.zip
rm -rf ebook.epub
zip -X -0 ebook mimetype
zip -9 -r ebook META-INF
zip -9 -r ebook OEBPS
mv ebook.zip ../Ajeeb_Goa_Gajab_Politics.epub
