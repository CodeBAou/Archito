#!/bin/bash
clear 
#LISTA ERROR 
# ## Error 1
# ########### Al actualizar pacman (pacman -Syu) sale el error "No se ha podido actualizar la base de datos"



# Error : 1
function Resolve_Err_01(){
	#Borramos el archivo con la lista de repositorios
	sudo rm /var/lib/pacman/db.lck 
	#Volvemos generar la lista de de repositorios
	sudo pacman-mirrors -g --noconfirm
	#Actualizamos 
	sudo pacman -Syyu --noconfirm
}


