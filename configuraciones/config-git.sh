#!/bin/bash

#Instala git cli y jecuta proceso para autentificarse en github
function Autentificacion-Github(){
	clear
	echo "instalando github-cli para autentificacion en el repositorio remoto"
	sudo pacman -Syu github-cli --noconfirm  #paquete autentificacion
	echo "🍸"
	echo " 👆 login...."
	gh auth login #hacemos login
}

#configuracion github en el equipo
function configuraGit(){
	clear
	echo "configurar git en el equipo"
	echo "🍸"
	read -p "👆 ... ... (☞ ͡° ͜ʖ ͡°)☞ >  git Nombre: " name
	read -p "👆 ... ... (☞ ͡° ͜ʖ ͡°)☞ >  git Email:" email
	
	git config --global user.name $name
	git config --global user.email $email
	#la rama por defecto sera main y no master
	git config --global init.defaultBranch main
	#llistar configuracion
	git config --list
	echo "🍸"
	echo "Autentificacion"
	#Desea autentificarse ahora?
	read -p "👆 ...👆  ... 👆 ...(☞ ͡° ͜ʖ ͡°)☞ >  Hacer Login en el servidor git ahora? [ 🍸 github ]:  S()si N(no)" select
	
	if [[ $select = "SI" || $select = "si" || $select = "Si" || $select = "sI" || $select = "s" || $select = "S" ]]
	then
		#Seleccionar donde autentificar
		echo " ☻ 0 ☻       👈 Pensandolo mejor no quiero autentificarme ahora..... "
		echo " ☻ 1 ☻       🍸 github "
                echo ""
		
		read -p "👆 ...👆  ... 👆 ...(☞ ͡° ͜ʖ ͡°)☞ >  Selecciona servidor para la autentificacion:  S()si N(no)" select
		
		case $select in 
			"0") #salir
			echo " 🍸 no se ha autentificado..."
			break
			;;
			"1") #servidor github
				Autentificacion-Github  #LLama a autentificar el usuario en github
			;;
		esac
	    	
	   	echo "🍸"
	fi
}


#Menu configuracion por indicacion del usuario
function configuracion_menu(){
	salir="0"
	while [ $salir -eq "0" ]
	do
		clear
		echo -e  "\e[0;36m❚█══==============\e[1;36m(☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ \e[0;36m=============❚█ \e[0;" ;
		echo "                 configuraciones       "
		echo "☻ 0 ☻  👈 volver..."
		echo "☻ 1 ☻  ٩◔̯◔۶   Configurar git en el equipo y autentificacion(Opcional)"
		echo ""

		read -p "👆 (☞ ͡° ͜ʖ ͡°)☞ > " select

		case $select in 
			"0") #volver
				salir="1"
			;;
			"1") #configurar git y autentificacion
				configuraGit
			;;
		esac
	done
	source ./Archito.sh	
}

