#!/bin/bash
read POST
foi(){
cat "/var/www/html/removers.html"
}

foinao(){
cat "/var/www/html/removers.html"
}

item=$(echo $POST | cut -d"=" -f2)
if [[ $(grep -E "(.*:)$item(:.*){4}" estoque ) ]] ; then
        sed -ri "/(.*:)$item(:.*){4}/d" estoque
        #cat estoque2 >> estoque
	foi
else
	foinao
fi

