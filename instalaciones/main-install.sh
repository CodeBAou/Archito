#!/bin/bash
clear

salir="0"

while [ $salir -eq "0" ]
do
	echo -e  "\e[0;36m❚█══==============\e[1;36m(☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ \e[0;36m=============❚█ \e[0;" ;
	echo "                 Instalar paquetes "

	echo " ☻ 0 ☻  	👈        volver...  "
	echo " ☻ 1 ☻  	٩◔̯◔۶      wine  "
	echo ""

	read -p "...(☞ ͡° ͜ʖ ͡°)☞ > " select 
	
	echo ""

	case $select in
		"0")
		 	salir="1"
		;;
		"1")
			source ./instalaciones/wine-install.sh
		;;

	esac
done

source ./Archito.sh

