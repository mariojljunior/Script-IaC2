#!/bin/bash

echo "Atualizando o servidor"

apt-get update
apt-get ugrade -y

echo "===================================================================="
echo "Instalando os programas"

apt-get install apache2 -y
apt-get install unzip -y

echo "===================================================================="
echo "Baixando e descompactando os arquivos do site"

cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "===================================================================="
echo "Acessando os arquivos descompactados e copiando para a pasta html"

cd linux-site-dio-main
cp -R * /var/www/html/