#!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Sergio A. Vargas


arregloNum=(1 2 3 4 5 6)
arregloCadena=(Andres, Sergio, Aleja, Guada)
arregloRango=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de números:${arregloNum[*]}"
echo "Arreglo de cadenas:${arregloCadena[*]}"
echo "Arreglo de rangos:${arregloRango[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño arreglo de números:${#arregloNum[*]}"
echo "Tamaño arreglo de cadenas:${#arregloCadena[*]}"
echo "Tamaño arreglo de rangos:${#arregloRango[*]}"

#Imprimir la posición 3 del arreglo de números, cadenas y rangos
echo "Posición 3 arreglo de números:${arregloNum[3]}"
echo "Posición 3 arreglo de cadenas:${arregloCadena[3]}"
echo "Posición 3 arreglo de rangos:${arregloRango[3]}"

#Añadir y eliminar valores en un arreglo
arregloNum[7]=20
unset arregloNum[0]
echo "Arreglo números: ${arregloNum[*]}"
echo "Tamaño arreglo de número: ${#arregloNum[*]}"
