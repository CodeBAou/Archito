#!/bin/bash
echo ""
#desinstalar paquetes
pacman -R midori --noconfirm
echo "👍"
sudo pacman -R xfce4-screenshooter --noconfirm
echo "👍"


#finalizando
echo " Eliminando idependencias inecesarias..."
sudo pacman -Rsn $(pacman -Qdtq) --noconfirm
echo "👍"
echo "Limpiando cache... "
sudo pacman -Scc --noconfirm
echo "👍"

echo ""
echo "Se han eliminado... "
echo "		† Navegado Midori"
echo "          ٩◔̯◔۶ Eliminacion de dependencias inecesarias"
echo "          ٩◔̯◔۶  "
echo " 		٩◔̯◔۶ Limpieza de cache"
