#!/bin/bash
clear

salir=0

while [ $salir -eq 0 ]
do

	echo "❚█══============== (☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ =============❚█"
	echo "        ---------- Soluccionador de problemas -----------"
	echo ""
	echo "           ☻ 0 ☻  👈  volver "
	echo "           .................................................................................."
	echo "           ☻ 1 ☻  ٩◔̯◔۶  Error> pacman update "
	echo "                      DESCRIPCION : sale el error No se ha podido actualizar la base de datos"
	echo "           .................................................................................."
	echo ""

	read -p "...(☞ ͡° ͜ʖ ͡°)☞ > "  select

	case $select in 
		0)
			salir=1
			;;	
		1)
			source ./problemas/pacman_Errors.sh
			Resolve_Err_01
			;;
		2)
			
			;;
		esac

done

source ./Archito.sh