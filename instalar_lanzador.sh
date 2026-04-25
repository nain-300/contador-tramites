#!/bin/bash
# Instala el lanzador "Contador de Trámites" en el escritorio del usuario.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DESKTOP_FILE="$SCRIPT_DIR/Contador de Trámites.desktop"
DEST="$HOME/Desktop/Contador de Trámites.desktop"

# Verificar que existe el .desktop
if [ ! -f "$DESKTOP_FILE" ]; then
    echo "❌ No se encontró el archivo .desktop en: $DESKTOP_FILE"
    exit 1
fi

# Crear carpeta Desktop si no existe
mkdir -p "$HOME/Desktop"

# Copiar al escritorio
cp "$DESKTOP_FILE" "$DEST"

# Dar permisos de ejecución
chmod +x "$DEST"

# Marcar como confiable (GNOME)
gio set "$DEST" metadata::trusted true 2>/dev/null

echo ""
echo "✅ Lanzador instalado en el escritorio."
echo "   Buscá el ícono 'Contador de Trámites' en tu escritorio."
echo "   Hacé doble clic para iniciar la aplicación."
echo ""
