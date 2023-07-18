# !bin/bash
# Programa pra ejemplificar el uso de la sentencia de decisión if else
# Autor: Sergio A. Vargas

#OPERADORES RELACIONALES
#-eq: is equal to // Igual a
#-ne: is not equal to // No es igual a
#-gt: is greater than // Mayor a
#-ge: is greater than or equal to // Mayor o igual a
#-lt: is less than // Menor a
#-le: is less than or equal to // Menor o igual a

notaDeClase=0
edad=0

echo "<<<Ejemplo sentencia If Else>>>"
read -p "Indicar cuál es su nota (1-9): " notaClase
echo "\n"
if (( $notaClase >=7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18  ]; then
    echo "La persona no puede votar"
else 
    echo "La persona puede votar."
fi
