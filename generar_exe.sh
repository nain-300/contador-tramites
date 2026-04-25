#!/bin/bash

echo "Preparando entorno para generar el ejecutable..."
pip install pyinstaller -r requirements.txt

# Verifica si hay un ícono disponible para usar
ICON_ARG=""
if [ -f "calculator.ico" ]; then
    ICON_ARG="--icon=calculator.ico"
    echo "Usando ícono: calculator.ico"
elif [ -f "icon.ico" ]; then
    ICON_ARG="--icon=icon.ico"
    echo "Usando ícono: icon.ico"
fi

echo "Generando 'Contador de Tramites.exe'..."
pyinstaller --onefile --windowed --name "Contador de Tramites" $ICON_ARG contador.py

echo ""
echo "¡Proceso terminado!"
echo "Tu archivo .exe se encuentra dentro de la carpeta 'dist/'."
