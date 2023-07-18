#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración for loop
#Autor: Sergio A. Vargas


arregloNum=(1 2 3 4 5 6)

echo "Iterrar en la lista de números"
for num in ${$arregloNum[*]}
do
    echo "Numero$num"
done

echo "Iterrar en la lista de Cadenas"
for nom in "Andres" "Aleja" "Guada"
do
    echo "Nombres: $nom"
done

echo "Iterrar en archivos"
for file in *
do
    echo "Nombre de archivo: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
    echo "Nombre archivo:$file"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero $i"
done

