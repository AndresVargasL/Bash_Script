#!/bin/bash
#Programa que ejemplifica como capturar la informacion del user
#y validarlautilizandoexpresiones regulares
#Autor: Sergio A.Vargas

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|CO|US$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones Regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un pais [EC, CO, US]:" pais
read -p "Ingresar fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo -e "Identificacion $identificacion valida \U0001F44D"
 else    
    echo -e "Identificacion $identificacion invalida \U0001F44E"
fi


#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo -e "Pais $pais valido \U0001F44D"
 else    
    echo -e  "Pais $pais invalido \U0001F44E"
fi


#Validacion Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo -e "Fecha Nacimiento $fechaNacimiento valida \U0001F44D"
 else    
    echo -e "Fecha Nacimiento $fechaNacimeinto invalida \U0001F44E"
fi
