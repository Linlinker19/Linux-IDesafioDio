#!/bin/bash/

echo "Atenção, script feito para execução a partir de usuário root." 


echo "Atualizando o S.O."
apt update -y
apt upgrade -y

echo "Instalando o apache2 e unzip"
apt install apache2 -y
apt install unzip -y

echo "Baixando e configurando App"
cd /temp/
wget EndereçoDoApp
unzip NomeDoApp.zip
cd ./NomeDoApp
cp -r ./ *.* /var/www/html/

echo "Instalação concluída."
echo "...Fim da execução do Script."