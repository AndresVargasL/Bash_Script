#!/bin/bash
#Reto 4: ofrecer un menu en el cual se pueden agregar opciones
#Autor: Sergio A. Vargas

opcion=0
newop=""

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
    echo "1. Procesos actuales"
    echo "2. Memoria disponible"
    echo "3. Espacio en disco"
    echo "4. Informacion de red"
    echo "5. Variables de entorno"
    echo "6. Informcion programa"
    echo "7. Backup informacion"
    echo "8. Ingrese opcion"
    echo "9. Salir"

    #Leer los datos del usuario - Capturar informacion
    read -n1 -p "Ingrese opcion [1-9]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo -e "\nOpción 1..."
            ps ax
            sleep 3
            ;;
        2) 
            echo -e "\nOpcion 2..."
            free -h
            sleep 3
            ;;
        3) 
            echo -e "\nOpcion 3..."
            sudo df -h
            sleep 3
            ;;
        4) 
            echo -e "\nOpcion 4..."
            ifconfig
            sleep 3
            ;;
        5)
            echo -e "\nOpcion 5..."
            env
            sleep 3
            ;;
        6)
            echo -e "\nOpcion 6..."
            sleep 3
            cat readme.txt
            ;;
        7)
            echo -e "\nOpcion 7..."
            echo "Creando respaldo..."
            sleep 3
            echo "Respaldo creado!"
            sleep 1
            ;;    
        8)
            echo -e "\nOpcion 8..."
            read -p "Ingrese nueva opcion: " newop 
            echo -e "\nSe ha creado la opcion $newop en el menu."
            sleep 3
            ;;
        9) 
            echo -e "\nSalir del programa..."
            exit 0
            ;;
    esac
done
