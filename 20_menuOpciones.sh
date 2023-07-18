#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Sergio A. Vargas

opcion=0

while :
do
    #Limpiar pantalla
    clear
    #Desplegar el menu de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"    
    echo "_________________________________________"
    echo "             MENU PRINCIPAL              " 
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - Capturar informacion
    read -n1 -p "Ingrese opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo -e "\nInstalar Postgres..."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalar Postgres..."
            sleep 3
            ;;
        3) 
            echo -e "\nSacar respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa..."
            exit 0
            ;;
    esac
done
