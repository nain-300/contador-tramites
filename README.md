# ⚡ Contador de Trámites

Aplicación de escritorio mínima para contar trámites laborales procesados por día.  
Se queda siempre visible encima de otras ventanas y registra cada trámite con una hotkey global — sin necesidad de hacer clic ni cambiar de ventana.

---

## Características

| Función | Detalle |
|---|---|
| **Hotkey global** | Presioná **F1** en cualquier momento (sin importar qué ventana tenga el foco) para sumar 1 al contador. |
| **Always on top** | La ventana flota encima de todas las demás aplicaciones. |
| **Persistencia** | Los datos se guardan automáticamente en `data.json`. Si cerrás el programa por accidente, no perdés nada. |
| **Reset diario** | Al abrir un nuevo día, el contador arranca desde cero automáticamente. |
| **Historial** | Cada trámite queda registrado con la hora exacta (HH:MM:SS). |
| **Reset manual** | Botón "↺ Reset" con confirmación para empezar de cero. |
| **Draggable** | Podés mover la ventana arrastrándola a cualquier parte de la pantalla. |

---

## Instalación y Ejecución

### 🪟 En Windows

**Requisito previo:** Necesitás tener Python instalado. Si no lo tenés, descargalo de [python.org](https://www.python.org/downloads/) o de la Microsoft Store. **Importante:** Al instalar, asegurate de marcar la casilla **"Add Python to PATH"**.

**Para usar el programa:**
1. Hacé doble clic en **`Abrir.bat`**.
2. Te pedirá permisos de Administrador (es necesario para que el contador detecte tu tecla aunque no estés usando la ventana del programa).
3. La primera vez, descargará las herramientas necesarias automáticamente y luego se abrirá.

---

### 🐧 En Linux (Ubuntu / Mint / etc.)

**Opción 1: Instalar en el escritorio**
1. Abrí la terminal en la carpeta del proyecto.
2. Ejecutá: `./instalar_lanzador.sh`
3. Ahora tendrás un ícono de calculadora llamado "Contador de Trámites" en tu escritorio. Hacé doble clic para usarlo.

**Opción 2: Ejecutar directamente**
Hacé doble clic en **`ejecutar.py`**. 
*(Si tu sistema no lo abre con doble clic, ejecutá `sudo python3 ejecutar.py` en la terminal).*

---

## Uso

1. Doble clic en `ejecutar.py`. La ventana aparece en la esquina superior derecha.
2. Trabajá normalmente en el navegador.
3. Cada vez que completes un trámite, presioná **F1** — el contador sube.
4. Para resetear el contador, hacé clic en **↺ Reset** y confirmá.
5. Cerrá la ventana con la **✕** en la esquina superior derecha.

---

## Estructura

```
contador-tramites/
├── contador.py      # Lógica principal + UI con Tkinter
├── ejecutar.py      # Lanzador (doble clic para abrir)
├── data.json        # Guardado automático (se crea solo)
├── requirements.txt # Dependencia: keyboard
└── README.md        # Este archivo
```

---

## Formato de `data.json`

```json
{
  "date": "2026-04-25",
  "count": 12,
  "timestamps": [
    "08:15:32",
    "08:22:10",
    "09:01:45"
  ]
}
```

---

## Tecnologías

- **Python 3** + **Tkinter** (incluido en Python)
- **keyboard** — para captura de hotkeys globales
- **threading** — para que el listener no bloquee la UI
