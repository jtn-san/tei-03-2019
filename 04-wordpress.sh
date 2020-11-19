#!/bin/bash
clear

#Criando a base de dados no MySQL
# sudo mysql -u root -p
# CREATE DATABASE wordpress;
# CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';
# GRANT USAGE ON *.* TO 'wordpress'@'localhost';
# GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
# FLUSH PRIVILEGES;
# exit
#
#Testando o acesso ao banco de dados com o usuário Wordpress
# sudo mysql -u wordpress -p
# SHOW DATABASES;
# exit


echo -e "Atualizando as Listas do Apt"
    apt update

echo -e "Instalando o Gunzip no Ubuntu Server"
    apt -y install unzip

echo -e "Download o Wordpress no Ubuntu Server"
    wget https://wordpress.org/latest.zip

echo -e "Descompactando o Wordpress"
    unzip latest.zip

echo -e "Acessando o diretório do Wordpress"
    cd wordpress

echo -e "Criando o arquivo de configuração do Wordpress"
    cp wp-config-sample.php wp-config.php

