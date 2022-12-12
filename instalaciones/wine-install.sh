#!/bin/bash
clear 
echo "Instalando wine..."
sudo pacman -S wine --noconfirm
wine --version

echo "Instalando librerias para wine..."
sudo pacman -S lib32-libldap lib32-gnutls wine-gecko wine-mono --noconfirm

echo "Instalando librerias de audio..."
sudo pacman -S lib32-alsa-plugins lib32-alsa-lib --noconfirm

echo "Instalando Librerias para medios de 32bits..."
sudo pacman -S lib32-gst-plugins-base  lib32-gst-plugins-good samba --noconfirm
yay lib32-gst-plugins-bad lib32-gst-plugins-ugly  --noconfirm

echo "Instalando Libreria para impresora"
pacman -S lib32-libcups --noconfirm 

echo "Instalando  winetricks "
pacman -S  winetricks --noconfirm
winetricks

#vino /ruta/a/3d_game.exe -opengl - forzar opengl para lanzar un juego

echo "Configurando wine..."
winetrics corefonts
cd ${WINEPREFIX:-~/.wine}/drive_c/windows/Fonts && for i in /usr/share/fonts/**/*.{ttf,otf}; do ln -s "$i" ; done #Configurando fuentes del sistema
FREETYPE_PROPERTIES="truetype:intérprete-versión=35"

#configura acceso a la red para wine
setcap cap_net_raw+epi /usr/bin/wine-preloader

#instalar una bifurcacion de vulkan para direct x12    
yay -S vkd3d-proton-bin --noconfirm
WINEPREFIX=your-prefix setup_vkd3d_proton install  # --- configuracion direct x 12

#Directx9
#yay -S dxvk-bin --noconfirm
#WINEPREFIX=your-prefix setup_dxvk install   ---configuracion direct x 9



#Librerias para resolucciones de pantalla con wine
sudo pacman -S lib32-libxrandr lib32-libxinerama --noconfirm
clear