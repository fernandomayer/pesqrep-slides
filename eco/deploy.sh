#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/pesqrep-eco
read -p 'PORTA: ' PORT

Rscript -e 'rmarkdown::render("pesqrep-eco.Rmd")' && rsync -avz -e "ssh -p $PORT" pesqrep-eco.html ${USER}@${HOST}:~/${DIR}/index.html

exit 0
