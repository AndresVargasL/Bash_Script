# !bin/bash
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
