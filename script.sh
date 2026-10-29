#!/usr/bin/bash

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

carpeta=$(cd -- "$carpeta" && pwd -P) || exit 1

buscar_archivos() {
    find "$carpeta" -type f -print0
}

buscar_archivos | tr '\0' '\n'
