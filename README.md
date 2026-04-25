# ⚡ Contador de Trámites

Aplicación de escritorio mínima para contar trámites laborales procesados por día.  
Se queda siempre visible encima de otras ventanas y registra cada trámite con una hotkey global personalizable — sin necesidad de hacer clic ni cambiar de ventana.

---

## ✨ Características

| Función | Detalle |
|---|---|
| **Hotkey personalizable** | Por defecto es **F1**, pero podés cambiarla a cualquier tecla o combinación. Funciona en todo momento, sin importar qué ventana estés usando. Se guarda entre sesiones. |
| **Always on top** | La ventana flota siempre encima de todas las demás aplicaciones. |
| **Persistencia** | Los datos se guardan automáticamente. Si cerrás el programa por accidente, no perdés nada. |
| **Reset diario automático** | Al abrir el programa en un nuevo día, el contador arranca desde cero solo. |
| **Historial y Exportación a Excel** | Cada trámite queda registrado con su hora exacta. Al cerrar la app, se genera/actualiza un archivo `historial_tramites.xlsx` separado por pestañas (DD-MM-YYYY) con columnas de Hora, Cantidad, Acumulado y Totales. También tiene un botón manual de "⬇ Exportar". |
| **Botón Deshacer** | Un botón rojo "Deshacer" resta 1 y elimina el último registro si te equivocaste. Se deshabilita solo cuando el contador está en 0. |
| **Auto-actualización** | Al iniciar, el programa busca si hay una nueva versión en GitHub y se actualiza solo (si no hay internet, inicia normalmente). |
| **Draggable** | Podés mover la ventana arrastrándola a cualquier parte de la pantalla. |

---

## 🚀 Instalación y Ejecución

### 🪟 En Windows

**Para usar el programa:**
1. Descargá el archivo **`Contador de Tramites.exe`**.
2. Hacé doble clic para abrirlo. (No necesitás instalar nada más).

---

### 🐧 En Linux (Ubuntu / Mint / etc.)

**Para usar el programa:**
1. Hacé doble clic en **`Contador de Tramites.sh`** (o clic derecho → ejecutar como un programa).
2. Si la aplicación falla o no detecta la tecla, es porque requiere permisos de superusuario (abrilo desde la terminal con `sudo ./Contador de Tramites.sh`).

---

## 💡 Uso paso a paso

1. **Abrí el programa** con tu lanzador correspondiente (`Contador de Tramites.exe` en Windows o `Contador de Tramites.sh` en Linux). La ventanita aparecerá en la esquina superior derecha.
2. Si querés usar una tecla distinta a F1, hacé clic en el botón azul **"⌨ Tecla: F1"** y presioná la tecla que prefieras.
3. **¡Empezá a trabajar!** Seguí en tu navegador u otros programas.
4. Cada vez que termines un trámite, presioná tu tecla elegida. Vas a ver cómo el contador sube.
5. Si te equivocás y marcás uno de más, hacé clic en el botón rojo **"Deshacer"**.
6. Para guardar un Excel intermedio, hacé clic en **"⬇ Exportar"**.
7. Al final del día, simplemente **cerrá el programa con la ✕**. ¡Tu Excel se actualizará automáticamente con todo el trabajo de hoy!

---

## 📂 Estructura de archivos

```text
contador-tramites/
├── contador.py                # Lógica principal + UI
├── Contador de Tramites.sh                   # Lanzador para Linux (doble clic o clic derecho → ejecutar)
├── Contador de Tramites.exe                  # Ejecutable nativo para Windows
├── generar_exe.sh                            # Script para compilar el .exe con PyInstaller
├── data.json                  # Guardado automático (se genera solo)
├── historial_tramites.xlsx    # Exportación Excel (se genera automáticamente)
├── requirements.txt           # Dependencias: keyboard, openpyxl
└── README.md                  # Este archivo
```
