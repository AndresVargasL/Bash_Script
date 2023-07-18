#!/bin/bash
#Programa para ejemplificar como se lee en un archivo
#Autor: Sergio A. Vargas

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza una variable especial IFS (internal File Separator) para evitar que los espacios en blanco se recorten
echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
