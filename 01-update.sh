#!/bin/bash

echo -e "Atualizando as  lista d Apt"
apt update

echo -e "Atualizando os software"
apt -y upgrade

echo -e "Forçando atualização do sistema"
apt -y full-upgrade

echo -e "Forçando atualização de segurança"
apt -y dist-upgrade 

echo -e "Removendo software desnecessários"
apt -y autoremove
apt -y autoclean
apt clean

echo -e "Sistema atualizado, pressione <Enter> para o reboot"
read
sleep 5
reboot