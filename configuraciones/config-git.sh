#!/bin/bash

#Instala git cli y jecuta proceso para autentificarse en github
function Autentificacion-Github(){
	clear
	echo "instalando github-cli para autentificacion en el repositorio remoto"
	sudo pacman -Syu github-cli --noconfirm  #paquete autentificacion
	echo "๐ธ"
	echo " ๐ login...."
	gh auth login #hacemos login
}

#configuracion github en el equipo
function configuraGit(){
	clear
	echo "configurar git en el equipo"
	echo "๐ธ"
	read -p "๐ ... ... (โ อกยฐ อส อกยฐ)โ >  git Nombre: " name
	read -p "๐ ... ... (โ อกยฐ อส อกยฐ)โ >  git Email:" email
	
	git config --global user.name $name
	git config --global user.email $email
	#la rama por defecto sera main y no master
	git config --global init.defaultBranch main
	#llistar configuracion
	git config --list
	echo "๐ธ"
	echo "Autentificacion"
	#Desea autentificarse ahora?
	read -p "๐ ...๐  ... ๐ ...(โ อกยฐ อส อกยฐ)โ >  Hacer Login en el servidor git ahora? [ ๐ธ github ]:  S()si N(no)" select
	
	if [[ $select = "SI" || $select = "si" || $select = "Si" || $select = "sI" || $select = "s" || $select = "S" ]]
	then
		#Seleccionar donde autentificar
		echo " โป 0 โป       ๐ Pensandolo mejor no quiero autentificarme ahora..... "
		echo " โป 1 โป       ๐ธ github "
                echo ""
		
		read -p "๐ ...๐  ... ๐ ...(โ อกยฐ อส อกยฐ)โ >  Selecciona servidor para la autentificacion:  S()si N(no)" select
		
		case $select in 
			"0") #salir
			echo " ๐ธ no se ha autentificado..."
			break
			;;
			"1") #servidor github
				Autentificacion-Github  #LLama a autentificar el usuario en github
			;;
		esac
	    	
	   	echo "๐ธ"
	fi
}


#Menu configuracion por indicacion del usuario
function configuracion_menu(){
	salir="0"
	while [ $salir -eq "0" ]
	do
		clear
		echo -e  "\e[0;36mโโโโ==============\e[1;36m(โ อกยฐ อส อกยฐ)โ ๐๐ก๐๐๐๐ฃ๐ โฅโฅ \e[0;36m=============โโ \e[0;" ;
		echo "                 configuraciones       "
		echo "โป 0 โป  ๐ volver..."
		echo "โป 1 โป  ูฉโฬฏโ?ถ   Configurar git en el equipo y autentificacion(Opcional)"
		echo ""

		read -p "๐ (โ อกยฐ อส อกยฐ)โ > " select

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

