#!/bin/bash

# 1. Validación de argumentos.
validar_argumentos() {
    if [ "$#" -ne 2 ]; then
        echo "Error: debes proporcionar exactamente dos argumentos." >&2
        echo "Uso: bash script.sh \"palabra o frase\" \"carpeta\"" >&2
        exit 1
    fi

    if [ -z "$1" ]; then
        echo "Error: la palabra o frase no puede estar vacía." >&2
        exit 1
    fi

    if [ ! -d "$2" ]; then
        echo "Error: '$2' no existe o no es un directorio." >&2
        exit 1
    fi
}

validar_argumentos "$@"

palabra="$1"
carpeta="$2"

# Obtener la ruta absoluta de la carpeta.
carpeta=$(cd -- "$carpeta" && pwd -P) || exit 1

# 2. Búsqueda recursiva de archivos.
buscar_archivos() {
    find "$carpeta" -type f -print0
}

# 3. Conteo y presentación de resultados.
encontrados=0

while IFS= read -r -d '' archivo; do

    frecuencia=$(
        set -o pipefail
        grep -aFo -- "$palabra" "$archivo" | wc -l
    )
    estado=$?

    if [ "$estado" -gt 1 ]; then
        printf 'No se pudo analizar: %s\n' "$archivo" >&2
        continue
    fi

    if [ "$frecuencia" -gt 0 ]; then
        printf 'Archivo: %s\n' "$archivo"
        printf 'Frecuencia: %d\n\n' "$frecuencia"
        encontrados=$((encontrados + 1))
    fi

done < <(buscar_archivos)

if [ "$encontrados" -eq 0 ]; then
    echo "No se encontraron coincidencias en los archivos analizados."
else
    printf 'Total de archivos con coincidencias: %d\n' "$encontrados"
fi
