#!/bin/bash

# Leer el parámetro y guardarlo en la variable GITHUB_USER
GITHUB_USER=$1

# Obtener la fecha actual para crear el directorio de log
DATE=$(date +%Y-%m-%d)
LOG_DIR="/tmp/$DATE"
mkdir -p "$LOG_DIR"

# Ubicación del archivo de log con la salida del mensaje
LOG_FILE="$LOG_DIR/saludos.log"

# Realizar una petición HTTP GET a la API de GitHub y almacenar la respuesta en una variable
URL="https://api.github.com/users/${GITHUB_USER}"
JSON_RESPONSE=$(curl -s "$URL")

# Extraer los parámetros 'id' y 'created_at' del JSON y almacenarlos en variables
ID=$(echo "$JSON_RESPONSE" | grep -o '"id": *"[^"]*"' | grep -o '"[^"]*"$' | tr -d '"')
CREATED_AT=$(echo "$JSON_RESPONSE" | grep -o '"created_at": *"[^"]*"' | grep -o '"[^"]*"$' | tr -d '"')

# Generar mensaje
MESSAGE="Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${CREATED_AT}."

# Guardar el mensaje en el archivo de log
echo "$MESSAGE" >> "$LOG_FILE"

