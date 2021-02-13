#!/bin/bash

#author: Mateus Augusto Martins de Paiva
#use sudo or su to run this script

echo "deb http://br.archive.ubuntu.com/ubuntu/ bionic main restricted universe" >> /etc/apt/sources.list #add the ubuntu 18.04 LTS repositories
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
apt update 


echo "Package:  *avogadro*  
Pin: release n=bionic
Pin-Priority: 1001 " > /etc/apt/preferences.d/avogadro # change the priority of package versions

apt purge avogadro
apt autoremove
apt install avogadro 
