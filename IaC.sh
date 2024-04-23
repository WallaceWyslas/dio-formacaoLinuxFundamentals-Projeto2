#!/bin/bash

# Esse código deve ser ativo pelo user Root

cd /

echo "Atualizando servidor"
sudo apt-get update #verificando atualizações
sudo apt-get upgrade -y #baixando e instalando atualizações
echo "Servidor atualizado"
echo " "

echo "Instalando apache2"
sudo apt-get install apache2 -y #instalando apache2
echo " "

echo "Instalando unzip"
sudo apt-get install unzip -y #instalando unzip
echo " "

echo "Baixando repositório"
cd /tmp
sudo wget -iv https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip #baixando o arquivo
sudo unzip main.zip #extraindo o arquivo baixado
echo " "

echo "Clonando repositório"
sudo cp -fR /tmp/linux-site-dio-main/* /var/www/html #copiando para a exibição html do apache
echo " "

echo "Script finalizado"