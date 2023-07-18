#!/bin/bash
#Ejercicio practico: solicitud número del 1 al 5 y dar premio 
#reaizando validación de expreción regular y de tipo de dato.
#Autor: Sergio A.Vargas

opcionRX='^([1-5]{1})$'

#Solicitud de datos
echo "Por favor, ingrese un valor del 1 al 5: "
read -p "Valor: " valor

#Validacion de valor
if [[ $valor =~ $opcionRX ]]; then
    echo -e "opción valida \U0001F44D"
else
    echo -e "opción invalida \U0001F44E"
fi

#Validacion opción
if [[ $valor == 5 ]]; then
    echo -e "Haz ganado un carro \U0001F699"
elif [ $valor == 4 ]; then
    echo -e "Haz ganado una bici \U0001F6B2"
elif [ $valor == 3 ]; then
    echo -e "Haz ganado una casa \U0001F3E1"
elif [ $valor == 2 ]; then
    echo -e "Haz ganado un dulce \U0001F36C"
elif [ $valor == 1 ]; then
    echo -e "Haz ganado una compu \U0001F4BB"
else 
    echo "Fin del juego."
fi

