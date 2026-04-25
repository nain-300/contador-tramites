@echo off
:: Cambiar al directorio donde está el script
cd /d "%~dp0"

:: 1. Comprobar si Python está instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ========================================================
    echo ERROR: Python no esta instalado o no esta en el PATH.
    echo ========================================================
    echo.
    echo Para usar esta aplicacion necesitas tener Python instalado.
    echo.
    echo Pasos para instalar:
    echo 1. Descargalo desde la Microsoft Store o desde python.org
    echo 2. MUY IMPORTANTE: Durante la instalacion, asegurate de 
    echo    marcar la casilla "Add Python to PATH".
    echo.
    pause
    exit /b
)

:: 2. Comprobar permisos de Administrador (necesario para la tecla F1)
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Solicitando permisos de Administrador para capturar el teclado...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~nx0' -WorkingDirectory '%~dp0' -Verb RunAs"
    exit /b
)

:: 3. Instalar dependencias (se salta rápido si ya están)
echo Preparando dependencias...
pip install -r requirements.txt >nul 2>&1

:: 4. Iniciar la aplicación
echo Iniciando Contador de Tramites...
start pythonw contador.py
exit /b
