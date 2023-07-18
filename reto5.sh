#!/bin/bash
#Reto 5: Creacion de archivo log para cada ejecucion del programa
#Autor: Sergio A. Vargas

rutaAcual=`pwd`
fecha=$(date)
logDate=$(date +"%Y-%m-%d_%H:%M:%S")

echo "Estas en el directorio : $rutaActual"
echo "Esta es la fecha actual $fecha"
echo "Ingrese su nombre: "
read name
echo "Ingrese su edad: "
read age
echo "Te llamas $name y tu edad es $age, fecha de ejecucion $logDate" >> log_$logDate.txt


