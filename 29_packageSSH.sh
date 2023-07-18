#!/bin/bash
#Programa para ejemplificar la forma de como transferir por la red
#utilizando el comando rsync, con opciones de empaquetamiento optimizando
#velocidad de transferencia 
#Autor: Sergio A. Vargas

echo "Empaquetar todos los scripts de la carpeta y transferirilos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " usuarios
echo -e "\nEn este momento se esta empaquetando y enviando segun los datos ingresados..."
rsync -avz $(pwd) $usuario@$host:/home/platzi/
