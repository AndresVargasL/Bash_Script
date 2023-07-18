#!/bin/bash
#Programa para ejemplificar la ceacion de archivos y directorios
#Autor: Sergio A. Vargas

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -ls $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No eiste esa opcion $1"
fi
