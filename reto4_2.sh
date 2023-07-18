#!/bin/bash
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

