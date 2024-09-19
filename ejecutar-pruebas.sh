#!/bin/bash

# Redirigir toda la salida a /dev/null
exec > /dev/null 2>&1

find . -mindepth 1 ! -name "$(basename "$0")" -delete

# Ejecutar comandos de Git
git init
touch archivo1
touch archivo2
git add -A
git commit -m "C1"
git tag C1

echo "Hola Mundo desde archivo1" >> archivo1
git add -A
git commit -m "C2"
git tag C2

echo "Hola Mundo desde archivo2" >> archivo2
git add -A
git commit -m "C3"
git tag C3

echo "Hola Mundo desde archivo3" >> archivo3
git add -A