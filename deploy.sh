#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/pesqrep
read -p 'PORTA: ' PORT

Rscript -e 'rmarkdown::render("pesqrep.Rmd")' && rsync -avz -e "ssh -p $PORT" pesqrep.html ${USER}@${HOST}:~/${DIR}/index.html

exit 0
