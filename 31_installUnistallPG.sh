#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Sergio A. Vargas

opcion=0

#funcion para instalar postgres
postgres_install(){
    echo -e "\nVerificando instalacion de PostgreSQL..."
    verifyInstall= $(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostgresQL ya se encuentra instalado en el equipo."
    else
        read -sp $'\nIngresar password de sudo: ' psw
        read -sp $'\nIngrese password para utilizar PostgreSQL: ' pswpg
        echo "$psw" | sudo -S apt update
        echo "$psw" | sudo -S apt -y install postgresql postgresql-contrib
        usdo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$pswpg}':"
        echo "$psw" | sudo -S systemctl enable postgres.service
        echo "$psw" | sudo -S systemctl start postgres.service
    fi
    read -n 1 -s -r -p $'\nPRESIONE [ENTER] para continuar...'
}

#funcion para desinstalar postgres
uninstall_postgres(){
    echo " Desinstalando postgres..."
    read -sp $'\nIngresar password de sudo: ' psw
    echo "$psw" | sudo -S systemctl stop postgres.service
    echo "$psw" | sudo -S pg_dropcluster --stop 12 main
    echo "$psw" | sudo -S apt -y --purge remove postgres\*
   # echo "$psw" | sudo -S rm -r /etc/postgresql-common
   # echo "$psw" | sudo -S rm -r /var/lib/postgresq
    echo "$psw" | sudo -S userdel -r postgres
    echo "$psw" | sudo -S groupdel postgresql
    read -n 1 -s -r -p $'\nPRESIONE [ENTER] para continuar...'
}

#funcion para tomar respaldo
postgres_backup(){
    echo " Tomando respaldo de postgres..."
    echo "Directorio de backup: $1"
}

#Funcion para rstaurar respaldo de postgres
backup_restore(){
    echo " Restaurando respaldo..."
    echo "Directorio restauracion: $1"
}

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
            postgres_install
            sleep 3
            ;;
        2) 
            uninstall_postgres
            sleep 3
            ;;
        3)
            read -p " Ingrese directorio de backup: " BU_Directory
            postgres_backup $BU_Directory
            sleep 3
            ;;
        4)    
            read -p " Ingrese directorio de resoaldo: " BU_Restore
            backup_restore $BU_Restore
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa..."
            exit 0
            ;;
    esac
done
