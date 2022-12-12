#!/bin/bash
clear 
salir="0"
while [ $salir -eq "0" ]
do
	echo -e  "\e[0;36m❚█══==============\e[1;36m(☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ \e[0;36m=============❚█ \e[0;" ;
	echo -e "\e[0;36m-"
	echo "    ٩◔̯◔۶       INDICADORES"
	echo "                  		desinstalacion †"
	echo "			     instalacion ✚"
	echo "           finalicacion  👍  "

	# 👉  👆  👉  👈  ✌  🍸  ✚  †


	echo "Preparando..."

	echo ""
	echo "............................................"
	echo " ☻ 0 ☻  👈 salir  "
	echo " ☻ 1 ☻  	٩◔̯◔۶    	Modificar arch [Inicio]"
	echo " ☻ 2 ☻  	٩◔̯◔۶    	Instalar algun paquete"
	echo " ☻ 3 ☻  	٩◔̯◔۶    	Desinstalar algun paquete"
	echo " ☻ 4 ☻  	✚🍸✌  		Soluccionar problemas"
	echo " ☻ 5 ☻  	٩◔̯◔۶    	Configurar"
	echo "............................................"
	echo ""
	echo -e "\e[0;36m"

	read -p "...(☞ ͡° ͜ʖ ͡°)☞ > "  select 
	echo ""

	case $select in 
		"0")
		 	$salir="1"
		 	break
		;;
		"1")
			sudo pacman -Syu --noconfirm
			source ./instalaciones/desinstalar-paquetes-arch.sh
			source ./instalaciones/instalaciones-iniciales/install-oficial.sh
			source ./instalaciones/instalaciones-iniciales/install-aur.sh
			source ./install-dni-remote-dnicards-archito/dnie-arch-instruccions.sh
			source ./mantenimiento/mantenimiento.sh
			clearCachePackage
		;;
		"2")
			#Instalar Algun paquete
			source ./instalaciones/main-install.sh
			source ./mantenimiento/mantenimiento.sh
	                clearCachePackage
		;;
		"3")
			#Desinstalar algun paquete
			source ./mantenimiento/mantenimiento.sh
	                clearCachePackage
		;;
		"4")
			source ./problemas/error_main.sh
			clearCachePackage
		;;
		"5")
			echo "....5"
			source ./configuraciones/config-git.sh
                        configuracion_menu
			read -s -n 1 -p "Press any key to continue . . ."
		;;
	esac

done
	
