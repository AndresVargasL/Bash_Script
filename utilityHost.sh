backupScripts/#!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable
#Autor: Sergio A. Vargas

rutaAcual=`pwd`
fecha=$(date)

echo "Estas en el directorio : $rutaActual"
echo "Esta es la fecha actual $fecha"
echo "Ingrese su nombre: "
read name
echo "Ingrese su edad: "
read age
echo "Te llamas $name y tu edad es $age"
