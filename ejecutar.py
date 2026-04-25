#!/usr/bin/env python3
"""
Lanzador del Contador de Trámites.
Doble clic en este archivo para iniciar la aplicación.
Instala dependencias automáticamente si es necesario.
"""

import subprocess
import sys
import os

# Ir a la carpeta del script
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Instalar dependencias si falta 'keyboard'
try:
    import keyboard  # noqa: F401
except ImportError:
    print("Instalando dependencias...")
    subprocess.check_call([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"])

# Ejecutar la app
subprocess.call([sys.executable, "contador.py"])
