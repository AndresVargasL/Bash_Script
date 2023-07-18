# !bin/bash
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

