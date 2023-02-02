#+/bin/bash

for url in $(cat urls)
do
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --no-parent \
     $url
done
