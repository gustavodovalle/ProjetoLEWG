#!/bin/bash
instalar(){
	echo "Iniciando Instalação"
	apt-get update
	apt-get install apache2 -y
	echo "AddDefaultCharset UTF-8" >> /etc/apache2/conf-enabled/charset.conf
	a2enmod cgid
	service apache2 restart

mkdir /var/www/html.bkp
mv /var/www/html/* /var/www/html.bkp
cp /ProjetoLEWG/LEWG/html/* /var/www/html
ln -s /usr/lib/cgi-bin /var/www/html/cgi-bin
cp /ProjetoLEWG/LEWG/cgi-bin/* /usr/lib/cgi-bin

read -p "O programa foi instalado. Pressione [enter] para sair."
exit 0

}
naoinstalar(){
echo
echo "OK, aceitamos a sua decisão."
echo "Caso queira instalar depois: # bash instalacaoapache2.sh"
echo
sleep 4
exit 0
clear
}
echo
echo "Bem-Vindo ao sistema de instalação do projeto inventario!"
echo "O programas a ser instalados serão:"
echo "- Apache2"
echo
read -p "Deseja realizar a instalação?(s ou n)" OPCAO
case $OPCAO in
        [sS][Ss][Yy][Ee][Ss]|[Yy][Ii][Mm]) instalar ;;
        [Nn][Ãã][Oo]|[Nn][Aa][Oo]|[Nn]|[Nn][Oo]) naoinstalar ;;

*) read -p "Opção inválida. Pressione [ENTER] para sair..."
esac
