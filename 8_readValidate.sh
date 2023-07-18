#!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario y validarla
#Autor: Sergio A. Vargas

#-e caracteres especiales
#-p recibe un prompt
#-s silence - no permite ver en pantalla lo que se escribe
#-n numero o cantodad de caracteres permitidos

option=0
backupName=""
clave=""

echo "Programa de utilidades Postgres"
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingrese el nombre del archivo del backup: " backupName
echo -e "\n"
echo "opcion: $option , backupName:$backupName"
read -s -p "Contrasena: " clave
echo "Clave: $clave"

