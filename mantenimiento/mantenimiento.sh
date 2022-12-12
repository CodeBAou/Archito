#!/bin/bash
clear
echo ""
echo ""
echo "❚█══============== (☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ =============❚█"
echo "    Mantenimiento  "

#Listar paquetes instalados de forma explicita en el sistema
function listaPKGinstalados(){
 	pacman -Qe
}

#Listar paquetes originales instalados
function listaPKGoriginales(){
	pacman -Qent
}

#Listar paquetes externos instalados descargados o instalados manualmente
function listaPKGexternos(){
	pacman -Qm
}

#Lista por su expresion regular
function listaPKGregExp(){
	pacman -Qs $re
}

#Limpiar la memoria caché de los paquetes
function clearCachePackage(){
	paccache -r
}

#Menu para ejecutar por eleccion del usuario
function menu-Mantenimiento(){
	echo "☻ 0 ☻  👈  volver   "
	echo "☻ 1 ☻  ٩◔̯◔۶   Listar paquetes instalados de forma explicita"
	echo "☻ 2 ☻  ٩◔̯◔۶   Listar paquetes originales del sistema "
	echo "☻ 3 ☻  ٩◔̯◔۶   Listar paquetes externos (Instalados a parte) "
	echo "☻ 4 ☻  ٩◔̯◔۶   Listar paquetes por expresion regular ( 4 <RegExp> ) "
	echo "☻ 5 ☻  ٩◔̯◔۶   Limpiar la memoria cache de los paquetes"
	echo ""
	read -p "...(☞ ͡° ͜ʖ ͡°)☞ > "  select

	case $select in
		"0")
			source ./Archito.sh
		;;
		"1")
			listaPKGinstalados
		;;
		"2")
			listaPKGoriginales
		;;
		"3")
			listaPKGexternos
		;;
		"4")
			echo "Funcion no implementada aun"
			#listaPKGregExp $userdice
		;;
		"5")
			clearCachePackage
		;;
	esac
}
