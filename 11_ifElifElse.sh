# !bin/bash
# Programa pra ejemplificar el uso de la sentencia de decisión if else
# Autor: Sergio A. Vargas

edad=0

echo "<<<Ejemplo sentencia If Else>>>"

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18  ]; then
    echo "La persona no puede votar"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then 
    echo "La persona es adulta."
else 
    echo "la persona es adulta mayor"
fi
