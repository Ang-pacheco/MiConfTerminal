#!/bin/bash

echo "Hola y bienbenido a mi instalador de mi fastfetch con bash :D"

echo "a continuacion se reemplazara el fastfet conf por el mio"

read 

#Instalar Fastfetch luego reemplazar el .config con mi .config (miff.conf)
#instalacion
sudo pacman -S fastfetch
 
#agarro miff y lo reemplazo

cp recursos/miff.jsonc ~/.config/fastfetch/ 
mv ~/.config/fastfetch/config.jsonc configOLD.jsonc
mv ~/.config/fastfetch/Miff.jsonc config.jsonc 
#esto hace una copia de miff.conf, lo mueve a la carpeta de FF, cambia el nombre del .conf y lo reemplaza con
# el mio.



#ya tengo mi .conf asignado falta las imagenes. voy a crear una carpeta en imagenes donde las pondre ahi...


mkdir -pv imgff ~/ #creamos el directorio en Home

cp -r recursos/imagenes/*  ~/imgff/ #pegamos el contenido a la nueva carpeta
# Ya tendriamos hecho mi fastfetch
#ahora hace falta zsh




# intalacion de OhMyZsh

sudo pacman -S  zsh git




echo "######################################"
echo ""
echo "se hara un curl a la pagina Oh My Zsh"
echo ""
echo "######################################"
sleep 4

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "######################################"
echo ""
echo "ahora se instalara y configurara zsh"
echo ""
echo "######################################"





sudo chsh -s 'which zsh'

