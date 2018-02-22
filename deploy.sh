#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/pesqrep

Rscript -e 'rmarkdown::render("pesqrep.Rmd")' && rsync -avz pesqrep.html ${USER}@${HOST}:~/${DIR}/index.html

exit 0
