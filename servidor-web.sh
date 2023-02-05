#!/bin/bash

echo ".........Atualizando o sistema........."

sudo apt-get update
sudo apt-get upgrade -y

echo "..........Baixando os softwares nescessários........."

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo ".........Baixando arquivos da aplicação........."

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo ".........Descompactando arquivos da aplicação........."

unzip -q /tmp/main.zip -d /tmp/

echo ".........Movendo os arquivos para o destino........."

mv -f /tmp/linux-site-dio-main/* /var/www/html

echo ".........Apagando aquivos que não são necessários........."

rm -rf /tmp/*

echo ".........Ambiente pronto para produção........."
