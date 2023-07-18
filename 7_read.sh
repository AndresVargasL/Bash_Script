#!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario utilizando el comando read
#Autor: Sergio A. Vargas

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingrese el nombre del archivo del backup: " backupName
echo "opcion: $option , backupName:$backupName"
