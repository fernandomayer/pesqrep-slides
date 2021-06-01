#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/pesqrep
read -p 'PORTA: ' PORT

Rscript -e 'rmarkdown::render("pesqrep.Rmd")'
Rscript -e 'xaringanBuilder::build_pdf("pesqrep.Rmd")'
rsync -avz -e "ssh -p $PORT" pesqrep.html ${USER}@${HOST}:~/${DIR}/index.html
rsync -avz -e "ssh -p $PORT" pesqrep.pdf ${USER}@${HOST}:~/${DIR}/pesqrep.pdf

exit 0
