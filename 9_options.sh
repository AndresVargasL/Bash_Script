#!/bin/bash
#Progrma para ejemplificar como realizar el paso de opciones con o sn parametros
#Autor: Sergio A. Vargas

#-e caracteres especiales
#-p recibe un prompt
#-s silence - no permite ver en pantalla lo que se escribe
#-n numero o cantodad de caracteres permitidos

echo "Programa opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar los valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a opcion utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$! no es una opcion";;
esac
shift
done
