#!/bin/bash
#hecho por chatgpt xd
# Ruta de la carpeta de la que deseas obtener un archivo aleatorio
carpeta="$HOME/.config/wallpaper"

if [ -d "$carpeta" ]; then
    archivos=("$carpeta"/*)
    if [ ${#archivos[@]} -eq 0 ]; then
        echo "No hay wallpapers."
        exit 1
    fi
    num_archivos=${#archivos[@]}
    num_aleatorio=$((RANDOM % num_archivos))
    archivo_aleatorio="${archivos[num_aleatorio]}"
    feh --bg-fill "$archivo_aleatorio"
else
    echo "Cree una carpeta .config/wallpaper/ y ponga ahi los fondos."
    exit 1
fi

