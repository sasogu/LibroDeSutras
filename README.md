# Instrucciones para el proyecto de libro de sutras

Este proyecto está diseñado para crear un libro de sutras en japonés antiguo y castellano usando Markdown, con la capacidad de generar un PDF en formato alargado y estrecho, adecuado para publicación en Amazon.

## Estructura sugerida
- `/capitulos/` Carpeta para los capítulos del libro, cada uno en un archivo Markdown.
- `/recursos/` Carpeta para imágenes, fuentes u otros recursos.
- `book.md` Archivo principal que compila todos los capítulos.
- `Makefile` o script para compilar el Markdown a PDF usando Pandoc y una plantilla personalizada.
- `plantilla.latex` Plantilla LaTeX personalizada para formato alargado y estrecho.

## Requisitos
- Soporte para textos bilingües (japonés antiguo y castellano).
- Generación de PDF con formato personalizado (por ejemplo, 11 x 27 cm).
- Instrucciones para compilar el libro.

## Compilación
Se recomienda usar Pandoc con una plantilla LaTeX personalizada. Ejemplo de comando:

```bash
pandoc book.md -o libro.pdf --template=plantilla.latex --pdf-engine=xelatex
```

Asegúrate de tener instalados Pandoc y XeLaTeX.

---

Actualiza este README conforme avances en el proyecto.