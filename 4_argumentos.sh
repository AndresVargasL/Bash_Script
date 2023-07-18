#!/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
HorarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario $horarioCurso"
echo "El numero de parametros es: $#"
echo "Los parametros enciados son: $*"
