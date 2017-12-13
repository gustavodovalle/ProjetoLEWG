#!/bin/bash
echo "Content-type: text/html"
echo

foi(){
cat '/var/www/html/removerc.html'
}

foinao(){
cat '/var/www/html/removere.html'
}
read POST
usuario=$(echo $POST | cut -d"=" -f2)

grep -Riv $usuario passwd
	if [[ $? == 1 ]]
		then
	foinao
else
grep -Riv $usuario passwd > arq.txt
arq.txt > passwd

#if [[ $(grep "^$usuario\:" passwd) ]] ; then
        #sed -i "/^$usuario\:/d" passwd
	foi
