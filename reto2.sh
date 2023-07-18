#!/bin/bash
#Ejercicio practico: solicitud e impresion de datos personales tipo formulrios
#Autor: Sergio A.Vargas

edadRX='^([1-9]{1,2})$'
nombreRX='^([A-Z]{1})([a-z]*)$'
apellidoRX='^([A-Z]{1})([a-z]*)$'
direccionRX='^([A-Z]{1}*)([a-z]*\s)([0-9]*)$'
telefonoRX='^([0-9]{10})$'

#Solicitud de datos
echo "Por favor, ingresa tus datos personales: "
read -p "Ingresa tu nombre: " nombre
read -p "Ingresa tu apellido: " apellido
read -p "Ingresa tu edad: " edad
read -p "Ingresa tu direccion: " direc
read -p "Ingresa tu numero telefonico: " phone

#Validacion nombre
if [[ $nombre =~ $nombreRX ]]; then
    echo -e "nombre valido \U0001F44D"
else
    echo -e "nombre invalido \U0001F44E"
fi

#Validacion apellido
if [[ $apellido =~ $apellidoRX ]]; then
    echo -e "apellido valido \U0001F44D"
else
    echo -e "apellido invalido \U0001F44E"
fi

#Validacion edad
if [[ $edad =~ $edadRX ]]; then
    echo -e "edad valida \U0001F44D"
else
    echo -e "edad invalida \U0001F44E"
fi

#Validacion telefono
if [[ $phone =~ $telefonoRX ]]; then
    echo -e "telefono valido \U0001F44D"
else
    echo -e "telefono invalido \U0001F44E"
fi

#Validacion direccion
if [[ $direc =~ $direcionRX ]]; then
    echo -e "direccion valida \U0001F44D"
else
    echo -e "direccion invalida \U0001F44E"
fi

echo "#################################"
echo "Tus datos: "
echo "Tu nombre completo es: $nombre $apellido"
echo "Tienes $edad anhos."
echo "Numero telefonico: $phone"
echo "Direccion: $direc"

