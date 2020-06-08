#!/bin/bash

dom=$1
otpt=$2

# SOA record
printf "SOA --> " >> $otpt

soarc=$(dig -t SOA +noall +answer +short $dom | awk '{print $1}' | sed 's/\.$//')
printf "$soarc" >> $otpt

printf "\n\n\n" >> $otpt




# NS record
echo "NS" >> $otpt
printf "\n" >> $otpt

nsrc=$(dig -t NS +short $dom | sed 's/\.$//')

printf "$nsrc" >> $otpt

printf "\n\n\n" >> $otpt




# A record
echo "A" >> $otpt
echo "" >> $otpt

arc=$(dig -t A +noall +nottlid +noclass +answer $dom @$soarc)

printf "$arc" >> $otpt