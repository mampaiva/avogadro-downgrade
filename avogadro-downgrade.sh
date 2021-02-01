#!/bin/bash

#author: Mateus Augusto Martins de Paiva
#use sudo or su to run this script

echo "deb http://br.archive.ubuntu.com bionic main restricted" >> /etc/apt/sources.list #add the ubuntu 18.04 LTS repositories

apt update 

echo "Package:  *avogadro*  
Pin: release n=bionic
Pin-Priority: 1001 " > /etc/apt/preferences.d/avogadro1 # change the priority of package versions

apt purge avogadro
apt autoremove
apt install avogadro 
