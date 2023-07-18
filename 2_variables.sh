#!/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Andres

echo "Opcion:  $opcion y nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export $nombre

#Lamar al siguiente script para recuperar la variable
./2_variables_2.sh
