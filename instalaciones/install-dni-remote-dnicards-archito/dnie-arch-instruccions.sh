#!/bin/bash
echo "........... (☞ ͡° ͜ʖ ͡°)☞  PREPARANDO EQUIPO PARA EL DNI ELECTRONICO"
#Este script prepara el equipo para lectura del dni electronico, para lectores de dni
# y DNI remote que permite utilizar un mobil con NFC como lector de dni
#VERSION 1.0

#reinstalar mozilla - para evitar malas configuraciones que interfieran en el funcionamiento de dni
sudo pacman -R firefox-i18n-es-es 
sudo pacman -S firefox-i18n-es-es 

#PAQUETES PARA INSTALAR - PARA LECTORES DE DNI
sudo pacman -S pcsclite pcsc-tools --noconfirm
sudo pacman -S opensc-opendnie-git --noconfirm
sudo yay -S opensc --noconfirm
sudo yay -S ccid --noconfirm

#Se reemplaza una modificacion de un fichero de configuracion que funciona (/etc/opensc.conf)
sudo mv opensc.conf /etc/opensc.conf

#levantar servicio pcscd y al inicio
systemctl start pcscd.service
systemctl enable pcscd.service

#SCAN - COMPROBAR # para lectores de targetas
#pcsc_scan

#para navegadores instalar 
yay -S icedtea-web --noconfirm

#INSTALAR LIBRERIA PARA DNI REMOTE
sudo pacman -S openssl-1.1 --noconfirm #Necesario para que se lance correctament dni remote 
yay -S libpkcs11-dnie --noconfirm
yay -S dnieremote-bin ca-certificates-dnie --noconfirm
yay -S autofirma   #Necesario para que mozilla reconozca de forma automatica la firma para acceder a la web

