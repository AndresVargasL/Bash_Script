#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Sergio A. Vargas

opcion=0
fechaActual=`date +%Y%m%d`

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
echo "Listar las bases de datos..."
sudo -u postgres psql -c "\l"
read -p "Elegir la BD a respaldar: " bddRespaldo
echo -e "\n"
if [ -d "$1" ]; then
    echo "Establecer permisos directorio"
    echo "$password" | sudo -S chmod 755 $1
    echo "Realizando respaldo..."
    sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
    echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"
else
    echo -e  "\nEl directorio $1 No Existe"
    echo -e "\n"
    read -n1 -p "Desea crear el directorio $1 (s/n)" respbdd
    if [ $respbdd = "s" ]; then
        sudo mkdir $1
        echo "$password" | sudo -S chmod 755 $1
        echo -e "\nRealizando respaldo..."
        sleep 3
        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
        echo "Respaldo realizado Correctamente en la ubicacion: $1/bddRespaldo$fechaActual.bak"
    else
        echo -e "\nSaliendo sin realizar Respaldo..."
        sleep 3
    fi
fi

read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

#Funcion para rstaurar respaldo de postgres
backup_restore(){
read -p "Ingresar el directorio donde se encuentran los respaldos   " directorioBackup
if [ -d $directorioBackup ]; then
    echo "Listando los archivos de Respaldos..."
    sleep 3
    ls -la $directorioBackup
    read -p "Ingresar el archivo .bak a restaurar:  " respaldoRestaurar
    #echo -e "\n"
    if [ -f "$directorioBackup/$respaldoRestaurar" ]; then
        read -p "Ingresar nombre BD destino:  " bdDestino
        verifyBdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bdDestino)
        if [ $? -eq 0 ]; then
            echo "Restaurando en la Base de Datos destino...$bdDestino"
            sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"
            echo "Listar Bases de datos..."
            sudo -u postgres psql -c "\l"
        else
            echo  "La BD destino no se encuentra..."
            echo  "Creando Base de Datos destino..."
            sleep 4
            sudo -u postgres psql -c "CREATE DATABASE $bdDestino"
            sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"
            echo "Listar Bases de datos..."
            sudo -u postgres psql -c "\l"
          fi

    else
        echo "No se encuentra el archivo de Respaldo Ingresado"
        echo "Verifique nuevamente el nombre y vuelva a intentarlo..."
    fi
else
   echo "No se encuentra el directorio de Respaldos ingresado..."
   echo "Verifique nuevamente el nombre y vuelva a intentarlo..."
fi
read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

lista_de_BD(){
echo -e  "\Las Bases de Datos Actuales: "
sudo -u postgres psql -c "\l"
read -n 1 -s -r -p "Presione [ENTER] para continuar..."
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
