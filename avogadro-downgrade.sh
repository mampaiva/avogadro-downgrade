#!/bin/bash

#author: Mateus Augusto Martins de Paiva
#use sudo or su to run this script

echo "deb http://old-releases.ubuntu.com/ubuntu/ artful main restricted universe multiverse" >> /etc/apt/sources.list #add the ubuntu 17.10 repositories

apt update 

echo "Package:  *avogadro*  
Pin: release n=artful
Pin-Priority: 1001 " > /etc/apt/preferences.d/avogadro1 # change the priority of package versions

apt purge avogadro
apt autoremove
apt install avogadro 
