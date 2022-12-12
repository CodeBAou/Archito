#!/bin/bash

#SPLIT w  - sacar usuario __________________________________________
function GetUsuarioActual(){
	datausersystem=`w --no-header --no-current -s -o -i` #obtiene datos del usuario actual
	IFS=' ' #delimiter
	read -ra newarr <<< "$datausersystem"; #crea array a partir del IFS
	username=${newarr[0]}  #Guardar valor 0 en variable
	echo $username
} 

# > GetNombreUsuarioActual

#.....................................................................

#Se le pasa una cadena y retorna true si encuentra la palabra error
function ExistErrorWord(){
	IFS=' '
	read -ra newarr <<< "$1"   #$1 (PARAM1), $2 (PARAM2), ... , ..., ETC
	for word in ${newarr[@]} 
	 do
		if($word = 'Error' || $word = 'error' || $word = 'ERROR')
		  then
			echo 0 #true
		  fi
	done

	echo 1 #false

}

# > ExistErrorWord "Envia una cadena"
#
#if ExistErrorWord "hay error" 
#then
#	echo "Se econtro la palabra error"
#else
#	echo "No se encontro la palabra error"
#fi