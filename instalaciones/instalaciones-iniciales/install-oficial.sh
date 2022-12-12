#!/bin/bash
clear
source ../../lib/codebaou-lib-bash.sh
echo "Instalando paquetes del repositorio oficial arch Linux"

#git y git-cli
sudo pacman -S git qgit gitk --noconfirm
sudo pacman -S github-cli --noconfirm

echo ""
echo ""

#> gh auth login    #autentificarse
echo ""
clear

read -p "...(☞ ͡° ͜ʖ ͡°)☞ >  Desea configurar git en el equipo? : S(si) N(no)> "  select 

function setConfig(){
	 source ./config-git.sh
	 read -p "... ... (☞ ͡° ͜ʖ ͡°)☞ >  git Nombre: " name
	 read -p "... ... (☞ ͡° ͜ʖ ͡°)☞ >  git Email:" email
	 configuraGit $name $email
}

case $select in 
	"S")
	 config-Git
	;;
	"s")
	 setConfig
	;;
	"si")
	 setConfig
	;;
	"SI")
	 setConfig
	;;
esac
clear



#navegadores
sudo pacman -S chromium firefox-i18n-es-es --noconfirm 
clear

#offimatica
sudo pacman -S libreoffice-still libreoffice-still-es --noconfirm
clear

#Maria db y configuracion 
sudo pacman -S mariadb --noconfirm
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mariadb
sudo systemctl enable mariadb --now 
clear

#Gestor de paquetes AUR - yay
sudo pacman -Sy yay --noconfirm
clear

#shutter
sudo pacman -Sy shutter --noconfirm
clear

#manjaro printer
sudo pacman -Sy manjaro-printer --noconfirm #paquete para la impresion
nombreUser=${GetNombreUsuarioActual} #se obtiene nombre de usuario
sudo gpasswd -a su nombreUser sys #se añade usuario al grupo sys
clear

#Se habilitan las capacidades para el sistema de impresion
sudo systemctl enable --now cups.service 
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path 
clear

#detección fácil de las impresoras de red
pamac install avahi
sudo systemctl enable --now avahi-daemon.service
echo " Abrir CUPS en http://localhost:631/ | desde menu de escritorio  [Sistema de Impresion]"
sudo pacman -Sy simple-scan --noconfirm
clear

#kcalc
sudo pacman -Su kcalc --noconfirm
clear

#nodejs y npm 
sudo pacman -S nodejs npm --noconfirm
clear

echo ""
echo ""
echo " 👍 Se añadieron los siguientes paquetes"
echo "        ✚ ٩◔̯◔۶ git         ٩◔̯◔۶ qgit     ٩◔̯◔۶ gitk    +3 paquetes"
echo "        ✚ ٩◔̯◔۶ chromium    ٩◔̯◔۶ firefox-i18n-es-es    +2 paquetes"
echo "        ✚ ٩◔̯◔۶ libre office    +1 paquete               "
echo "        ✚ ٩◔̯◔۶ mariadb    +1 paquete                      "
echo "        ✚ ٩◔̯◔۶ Yay      +1 paquete "
echo "        ✚ ٩◔̯◔۶ shutter             "
echo "        ✚ ٩◔̯◔۶ manjaro-printer + configuracion"
echo "        ✚ ٩◔̯◔۶ simple-scan "
echo "        ✚ ٩◔̯◔۶ nodejs & npm "

source ../Archito.sh