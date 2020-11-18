#!/bin/bash
clear

echo -e "Atualizando as Listas do Apt"
apt update

echo -e "Instalando o LAMP Server no Ubuntu Server"
#obs: utilizar a expressão regular ^que casa com todas opções
#referente ao LAMP (Linux, Apache2, MySQL e PHP7.x)
apt -y install lamp-server^ perl python

