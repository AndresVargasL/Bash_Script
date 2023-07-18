#!/bin/bash
#Progrma para revisar para los tipos de operadores
#Autor: Sergio A. Vargas

numA=10
numB=4

echo "Operadores airtmeticos"
echo "Numeros A=$numA y B=$numB"
echo "Sumar A + B = "$((numA + numB))
echo "Restar A - B = "$((numA - numB))
echo "Multiplicar A * B = "$((numA * numB))
echo "Dividir A / B = "$((numA / numB))


echo -e "\nOperadores Relaionales"
echo "Numeros A=$numA y B=$numB"
echo "A > B = "$((numA > numB))
echo "A < B = "$((numA < numB))
echo "A >= B = "$((numA >= numB))
echo "A <= B = "$((numA <= numB))
echo "A == B = "$((numA == numB))
echo "A != B = "$((numA != numB))


echo "Operadores Asignacion"
echo "Numeros A=$numA y B=$numB"
echo "Sumar A += B "$((numA += numB))
echo "Restar A -= B"$((numA -= numB))
echo "Multiplicar A *= B"$((numA *= numB))
echo "Dividir A /= B"$((numA /= numB))
