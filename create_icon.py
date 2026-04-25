from PIL import Image, ImageDraw

def create_icon():
    # Crear imagen de 256x256 con fondo oscuro
    img = Image.new('RGBA', (256, 256), color='#1e1e2e')
    draw = ImageDraw.Draw(img)

    # Dibujar una "T" verde #a6e3a1
    color = '#a6e3a1'
    # Barra horizontal
    draw.rectangle([(64, 50), (192, 90)], fill=color)
    # Barra vertical
    draw.rectangle([(108, 90), (148, 206)], fill=color)

    # Guardar como .ico con múltiples tamaños
    img.save("icono.ico", format="ICO", sizes=[(16, 16), (32, 32), (48, 48), (256, 256)])

if __name__ == "__main__":
    create_icon()
