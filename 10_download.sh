11_ifElifElse.sh                                                                                    0000775 0001750 0001750 00000000612 14444735756 015673  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           # !bin/bash
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
                                                                                                                      11_ifElse.sh                                                                                        0000775 0001750 0001750 00000001375 14445120604 015057  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           # !bin/bash
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
                                                                                                                                                                                                                                                                   12_ifAninado.sh                                                                                     0000775 0001750 0001750 00000001465 14445124253 015545  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           # !bin/bash
# Programa pra ejemplificar el uso de los if anidados
# Autor: Sergio A. Vargas

#OPERADORES RELACIONALES
#-eq: is equal to // Igual a
#-ne: is not equal to // No es igual a
#-gt: is greater than // Mayor a
#-ge: is greater than or equal to // Mayor o igual a
#-lt: is less than // Menor a
#-le: is less than or equal to // Menor o igual a

notaClase=0
cont=""

echo "<<<Ejemplo sentencia If Else>>>"
read -p "Indicar cuál es su nota (1-9): " notaClase
echo "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "¿Continua estudiando en el siguiente nivel?(s/n) " cont
    if [ $cont = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else 
        echo "Gracias por estudiar con nosotros, mucha suerte."
    fi
else
    echo "El alumno reprueba la materia"
fi

                                                                                                                                                                                                           13_expCondicinales.sh                                                                               0000775 0001750 0001750 00000002334 14445127166 016770  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           # !bin/bash
# Programa pra ejemplificar el uso de expresiones condicionales
# Autor: Sergio A. Vargas

#OPERADORES RELACIONALES
#-eq: is equal to // Igual a
#-ne: is not equal to // No es igual a
#-gt: is greater than // Mayor a
#-ge: is greater than or equal to // Mayor o igual a
#-lt: is less than // Menor a
#-le: is less than or equal to // Menor o igual a

edad=0
pais=""
pathFile=""

read -p "Ingrese la edad: " edad
read -p "Ingrese pais: " pais
read -p "Ingrese ruta del archivo: " pathFile

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un/a infante"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es un adolecente"
else
    echo "La persona es un mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es de Norteamérica"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es de Sudamérica"
else
    echo "Se desconoce la nacionalidad"
fi

#Flag -d es para directorios o rutas de archivos
echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathFile ]; then
    echo "El directorio $pathFile existe"
else
    echo "El directorio $pathFile no existe"
fi

                                                                                                                                                                                                                                                                                                    14_case.sh                                                                                          0000775 0001750 0001750 00000001242 14445131545 014565  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           # !bin/bash
# Programa pra ejemplificar el uso de la sentencia CASE
# Autor: Sergio A. Vargas

#OPERADORES RELACIONALES
#-eq: is equal to // Igual a
#-ne: is not equal to // No es igual a
#-gt: is greater than // Mayor a
#-ge: is greater than or equal to // Mayor o igual a
#-lt: is less than // Menor a
#-le: is less than or equal to // Menor o igual a

opcion=""


echo "<<<Ejemplo sentencia CASE>>>"
read -p "Ingrese una opción de la A - Z: " opcion
echo "\n"

case $opcion in

    "A") echo -e "\nOperación Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No está implementada la operación";;
    *) echo  "Opcion incorrecta";;
esac
                                                                                                                                                                                                                                                                                                                                                              15_arreglos.sh                                                                                      0000775 0001750 0001750 00000001704 14445150521 015467  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Sergio A. Vargas


arregloNum=(1 2 3 4 5 6)
arregloCadena=(Andres, Sergio, Aleja, Guada)
arregloRango=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de números:${arregloNum[*]}"
echo "Arreglo de cadenas:${arregloCadena[*]}"
echo "Arreglo de rangos:${arregloRango[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño arreglo de números:${#arregloNum[*]}"
echo "Tamaño arreglo de cadenas:${#arregloCadena[*]}"
echo "Tamaño arreglo de rangos:${#arregloRango[*]}"

#Imprimir la posición 3 del arreglo de números, cadenas y rangos
echo "Posición 3 arreglo de números:${arregloNum[3]}"
echo "Posición 3 arreglo de cadenas:${arregloCadena[3]}"
echo "Posición 3 arreglo de rangos:${arregloRango[3]}"

#Añadir y eliminar valores en un arreglo
arregloNum[7]=20
unset arregloNum[0]
echo "Arreglo números: ${arregloNum[*]}"
echo "Tamaño arreglo de número: ${#arregloNum[*]}"
                                                            16_forLoop.sh                                                                                       0000775 0001750 0001750 00000001164 14445175303 015277  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración for loop
#Autor: Sergio A. Vargas


arregloNum=(1 2 3 4 5 6)

echo "Iterrar en la lista de números"
for num in ${$arregloNum[*]}
do
    echo "Numero$num"
done

echo "Iterrar en la lista de Cadenas"
for nom in "Andres" "Aleja" "Guada"
do
    echo "Nombres: $nom"
done

echo "Iterrar en archivos"
for file in *
do
    echo "Nombre de archivo: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
    echo "Nombre archivo:$file"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero $i"
done

                                                                                                                                                                                                                                                                                                                                                                                                            17_whileLoop.sh                                                                                     0000775 0001750 0001750 00000000337 14445176721 015630  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración while loop
#Autor: Sergio A. Vargas

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done
                                                                                                                                                                                                                                                                                                 18_loopAnidados.sh                                                                                  0000775 0001750 0001750 00000000352 14445201103 016257  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el uso de los loops anidados
#Autor: Sergio A. Vargas

echo "Loops anidados"
for file in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo:$file _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                      19_breakContinue.sh                                                                                 0000775 0001750 0001750 00000000600 14446401505 016442  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el uso de break y continue
#Autor: Sergio A. Vargas

echo "Loops anidados"
for file in $(ls)
do
    for nombre in {1..4}
    do
        if [ $file = "10_download.sh" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue;
        else
            echo "Nombre del archivo:$file _ $nombre"
        fi
    done
done
                                                                                                                                1_utilityPostgres.sh                                                                                0000740 0001750 0001750 00000000207 14441243033 017000  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
# Programa para realizar algunas operaciones utilitarios de postgres
echo "Hola, bienvenido al cusro de programacion bash"
                                                                                                                                                                                                                                                                                                                                                                                         20_menuOpciones.sh                                                                                  0000775 0001750 0001750 00000002325 14446404224 016314  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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
                                                                                                                                                                                                                                                                                                           20_menuOption.sh                                                                                    0000775 0001750 0001750 00000003462 14446411650 016011  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Sergio A. Vargas


menu=$(cat << EOF
1) delete my computer
2) delete your moms' computer
3) delete the internet
4) exit
5) clear screen
EOF
)

while :; do
    echo "$menu"
    echo ""
    read -p "Option: " u_option

    case "$u_option" in

        1|"delete my computer")
            u_os=$(uname)
            echo "Deleting your computer..."
            sleep 0.2
            echo "removing your OS: $u_os"
            sleep 1s
            echo "removing personal files..."
            sleep 1s
            echo "Done!"
            echo ""
            ;;
        2|"delete your moms' computer")
            u_os=$(uname)
            echo "Deleting your moms' computer..."
            sleep 0.2
            echo "removing his/her OS: $u_os"
            sleep 1s
            echo "removing personal files..."
            sleep 1s
            echo "Done!"
            echo ""
            ;;
        3|"delete the internet")
            echo "#the password is not okay#"
            read -sp "Type the password to remove the internet: " u_password

            if [ "$u_password" == "okay" ]; then
                echo "Deleting the internet..."
                sleep 1s
                echo "deleting your dog..."
                sleep 1s
                echo "Done!"
                echo ""
            else
                echo "Incorrect password"
                echo ""
            fi
            ;;
        4|"exit")
            echo "Glad to help!"
            sleep 1s
            echo "exiting..."
            exit
            ;;
        5|clear|"clear screen")
            clear
            ;;
        *)
            echo "Sorry, command not found..."
            echo "try again"
            sleep 1s
            echo ""
            ;;
        esac
done
                                                                                                                                                                                                              21_filesDirectories.sh                                                                              0000775 0001750 0001750 00000000556 14446646250 017163  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar la ceacion de archivos y directorios
#Autor: Sergio A. Vargas

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -ls $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No eiste esa opcion $1"
fi
                                                                                                                                                  22_writeFile.sh                                                                                     0000775 0001750 0001750 00000000336 14446647456 015624  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar como se escribe en un archivo
#Autor: Sergio A. Vargas

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1 

#Adicion multilinea
cat  <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                                                  23_readFile.sh                                                                                      0000775 0001750 0001750 00000000666 14446654410 015400  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar como se lee en un archivo
#Autor: Sergio A. Vargas

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza una variable especial IFS (internal File Separator) para evitar que los espacios en blanco se recorten
echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
                                                                          24_fileOperations.sh                                                                                0000775 0001750 0001750 00000000656 14446656365 016663  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar las operaciones de un archivo
#Autor: Sergio A. Vargas

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt
                                                                                  25_tar.sh                                                                                           0000775 0001750 0001750 00000000304 14446721551 014443  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar
#Autor: Sergio A. Vargas

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellcourse.tar *.sh
                                                                                                                                                                                                                                                                                                                            26_gzip.sh                                                                                          0000775 0001750 0001750 00000000531 14446723360 014631  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando gzip
#Autor: Sergio A. Vargas

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
#Cuando comprimimos con gzip el tar anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_options.sh
                                                                                                                                                                       27_pbzip2.sh                                                                                        0000775 0001750 0001750 00000000473 14446725063 015076  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip
#Autor: Sergio A. Vargas

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                     2_variables_2.sh                                                                                    0000775 0001750 0001750 00000000171 14441753677 015774  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
# Programa para revisar la declaracion de variables

echo "Opcion nombre pasada del script anterior $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                       2_variables.sh                                                                                      0000775 0001750 0001750 00000000451 14441754500 015536  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Andres

echo "Opcion:  $opcion y nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export $nombre

#Lamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                       3_tipoOperadores.sh                                                                                 0000775 0001750 0001750 00000001465 14442424305 016572  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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
                                                                                                                                                                                                           4_argumentos.sh                                                                                     0000775 0001750 0001750 00000000375 14442425233 015760  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
HorarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario $horarioCurso"
echo "El numero de parametros es: $#"
echo "Los parametros enciados son: $*"
                                                                                                                                                                                                                                                                   5_subtitucionCommand.sh                                                                             0000775 0001750 0001750 00000000474 14442432444 017446  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Progrma para revisar como ejecutar comandos dentro de un programa y almacenar en una variable
#para su posterior utilizacion
#Autor: Sergio A. Vargas

ubicacionActual=`pwd`
infoeKernel=$(uname -sr)

echo "La ubicaci[on actual es la siguiente: $ubicacionActual"
echo "Informacion del Kernel $infoKernel"
                                                                                                                                                                                                    6_readEcho.sh                                                                                       0000775 0001750 0001750 00000000575 14442477330 015317  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario utilizando el comando read, echo $REPLy
#Autor: Sergio A. Vargas

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una opcion: "
read
option=$REPLY
echo -n "Ingrese el nombre del archivo del backup: "
read
backupName=$REPLY
echo "opcion: $option , backupName:$backupName"
                                                                                                                                   7_read.sh                                                                                           0000775 0001750 0001750 00000000530 14442500112 014471  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario utilizando el comando read
#Autor: Sergio A. Vargas

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingrese el nombre del archivo del backup: " backupName
echo "opcion: $option , backupName:$backupName"
                                                                                                                                                                        8_readValidate.sh                                                                                   0000775 0001750 0001750 00000001105 14442632060 016153  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Progrma para ejemplificar como capturar informacion del usuario y validarla
#Autor: Sergio A. Vargas

#-e caracteres especiales
#-p recibe un prompt
#-s silence - no permite ver en pantalla lo que se escribe
#-n numero o cantodad de caracteres permitidos

option=0
backupName=""
clave=""

echo "Programa de utilidades Postgres"
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingrese el nombre del archivo del backup: " backupName
echo -e "\n"
echo "opcion: $option , backupName:$backupName"
read -s -p "Contrasena: " clave
echo "Clave: $clave"

                                                                                                                                                                                                                                                                                                                                                                                                                                                           9_options.sh                                                                                        0000775 0001750 0001750 00000001136 14446723605 015300  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Progrma para ejemplificar como realizar el paso de opciones con o sn parametros
#Autor: Sergio A. Vargas

#-e caracteres especiales
#-p recibe un prompt
#-s silence - no permite ver en pantalla lo que se escribe
#-n numero o cantodad de caracteres permitidos

echo "Programa opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar los valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a opcion utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$! no es una opcion";;
esac
shift
done
                                                                                                                                                                                                                                                                                                                                                                                                                                  ExpresionesRegulares.sh                                                                             0000775 0001750 0001750 00000002074 14442507457 017536  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    reto2.sh                                                                                            0000775 0001750 0001750 00000002706 14442701515 014404  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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

                                                          reto3.sh                                                                                            0000775 0001750 0001750 00000001517 14444745254 014416  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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

                                                                                                                                                                                 reto4_2.sh                                                                                          0000775 0001750 0001750 00000006025 14446427337 014640  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
# RETO 4: Creacion de menú con opción de agregar nueva opción
#Autor: Serio A. Vargas

# Declarar un arreglo para almacenar las opciones del menú
opciones=("Procesos Actuales" "Memoria Disponible" "Espacio en disco" "Informacion de red" "Variables de entorno" "Información programa" "Agregar nueva opción" "Salir")

# Función para mostrar el menú
mostrar_menu() {
  clear
  echo "========== RETO 4 =========="
  echo "____________________________"
  echo "_______MENU_PRINCIPAL_______"
  echo
  for ((i=0; i<${#opciones[@]}; i++)); do
    echo "$(($i+1)). ${opciones[$i]}"
  done
  echo
  echo "Ingrese el número de opción:"
}

# Función para agregar una nueva opción
agregar_opcion() {
  echo
  echo "Ingrese el nombre de la nueva opción:"
  read nueva_opcion
  opciones=("${opciones[@]:0:${#opciones[@]}-2}" "$nueva_opcion" "Agregar nueva opción" "Salir")
  echo
  echo "La opción \"$nueva_opcion\" se ha agregado al menú."
  sleep 2
}

# Función para ejecutar el comando correspondiente a la opción elegida
ejecutar_comando() {
  opcion_elegida=$1

  case $opcion_elegida in
    1)
      # Comando correspondiente a la Opción 1
      echo "Ejecutando el comando de la Opción 1."
      ps ax
      ;;
    2)
      # Comando correspondiente a la Opción 2
      echo "Ejecutando el comando de la Opción 2."
      free -h
      ;;
    3)
      # Comando correspondiente a la Opción 3
      echo "Ejecutando el comando de la Opción 3."
      sudo df -h
      ;;

    4)
      # Comando correspondiente a la Opción 4
      echo "Ejecutando el comando de la Opción 4."
      ifconfig
      ;;
    5)  
      # Comando correspondiente a la Opción 5
      echo "Ejecutando el comando de la Opción 5."
      env
      ;; 
    6)  
      # Comando correspondiente a la Opción 6
      echo "Ejecutando el comando de la Opción 6."
      cat readme.txt
      ;;
    7)  
      # Comando correspondiente a la Opción 7
      echo "Ejecutando el comando de la Opción 7."
      sudo df -h
      ;;
    8)  
      # Comando correspondiente a la Opción 8
      echo "Ejecutando el comando de la Opción 8."
      # #########################################
      ;;
    *)
      echo "Opción inválida. No se ejecutará ningún comando."
      ;;
  esac

  sleep 2
}


# Función principal del script
main() {
  while true; do
    mostrar_menu
    read opcion_elegida

    case $opcion_elegida in
      $((${#opciones[@]}-1)))
        agregar_opcion
        ;;
      ${#opciones[@]})
        echo "Saliendo..."
        sleep 2
        break
        ;;
      *)
        if [[ $opcion_elegida =~ ^[0-9]+$ ]]; then
          if ((opcion_elegida >= 1 && opcion_elegida <= ${#opciones[@]}-2)); then
            echo "Ha elegido la ${opciones[$(($opcion_elegida-1))]}."          
          else
            echo "Opción inválida. Por favor, ingrese un número válido."
          fi
        else
          echo "Opción inválida. Por favor, ingrese un número válido."
        fi
        sleep 2
        ;;
    esac
  done
}

# Llamada a la función principal
main

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           reto4.sh                                                                                            0000775 0001750 0001750 00000003736 14446443520 014415  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
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
                                  reto5.sh                                                                                            0000775 0001750 0001750 00000000641 14446720076 014412  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           #!/bin/bash
#Reto 5: Creacion de archivo log para cada ejecucion del programa
#Autor: Sergio A. Vargas

rutaAcual=`pwd`
fecha=$(date)
logDate=$(date +"%Y-%m-%d_%H:%M:%S")

echo "Estas en el directorio : $rutaActual"
echo "Esta es la fecha actual $fecha"
echo "Ingrese su nombre: "
read name
echo "Ingrese su edad: "
read age
echo "Te llamas $name y tu edad es $age, fecha de ejecucion $logDate" >> log_$logDate.txt


                                                                                               utilityHost.sh                                                                                      0000775 0001750 0001750 00000000565 14446661156 015725  0                                                                                                    ustar   andresvargas                    andresvargas                                                                                                                                                                                                           backupScripts/#!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable
#Autor: Sergio A. Vargas

rutaAcual=`pwd`
fecha=$(date)

echo "Estas en el directorio : $rutaActual"
echo "Esta es la fecha actual $fecha"
echo "Ingrese su nombre: "
read name
echo "Ingrese su edad: "
read age
echo "Te llamas $name y tu edad es $age"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           