#!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario utilizando el comando read, echo $REPLy
#Autor: Sergio A. Vargas

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una opcion: "
read
option=$REPLY
echo -n "Ingrese el nombre del archivo del backup: "
read
backupName=$REPLY
echo "opcion: $option , backupName:$backupName"
