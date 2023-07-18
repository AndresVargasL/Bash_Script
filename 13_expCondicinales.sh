# !bin/bash
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

