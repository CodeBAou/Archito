#/bin/bash
clear
echo -e  "\e[0;36m❚█══==============\e[1;36m(☞ ͡° ͜ʖ ͡°)☞ 𝓐𝓡𝓒𝓗𝓘𝓣𝓞 ♥♥ \e[0;36m=============❚█ \e[0;" ;
echo "............drivers - graficos.................."
echo "............................................"
echo "Seleccion del driver:"
	echo " ☻ 0 ☻  👈 salir  "
	echo " ☻ 1 ☻  	٩◔̯◔۶    	AMD GPU - xf86-video-amdgpu (Open Source)"
	echo " ☻ 2 ☻  	٩◔̯◔۶    	AMD ATI - xf86-video-ati (Open Source)"
	echo " ☻ 3 ☻  	٩◔̯◔۶    	AMD GPU - xf86-video-amdgpu (Privativo)"
	echo " ☻ 4 ☻  	٩◔̯◔۶    	Intel   - xf86-video-intel (Open Source)"
	echo " ☻ 5 ☻  	٩◔̯◔۶    	nvidia  - xf86-video-nouveau (Open Source)"
	echo " ☻ 6 ☻  	٩◔̯◔۶    	nvidia  - nvidia (privativo)"
	
	echo "............................................"

read -p "(☞ ͡° ͜ʖ ͡°)☞ " select

salir=0
while [$salir -eq 0]
do
 case <expresión> in
        0)
            salir=1
	    ;;
        1)
            sudo pacman -S xf86-video-amdgpu --noconfirm
            ;;
        2)
            sudo pacman -S xf86-video-ati --noconfirm
            ;;
	3)
            sudo pacman -S xf86-video-amdgpu --noconfirm
            ;;
	4)
            sudo pacman -S xf86-video-intel --noconfirm
            ;;
	5)
            sudo pacman -S xf86-video-nouveau --noconfirm
            ;;
	6)
            sudo pacman -S nvidia --noconfirm
            ;;
        *)
            echo "no se reconoce la peticion"
            ;;
        esac
done
source ./Archito.sh