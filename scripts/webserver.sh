#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando os pacotes necessários..." 
apt-get install apache2 unzip -y

echo "Baixando o projeto padrão..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o projeto padrão..."
unzip main.zip

echo "Copiando projeto para o diretório do servidor..."
cd linux-site-dio
cp -R * /var/www/html/