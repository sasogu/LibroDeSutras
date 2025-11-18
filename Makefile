all:
	pandoc book.md -o libro.pdf --template=plantilla.latex --pdf-engine=xelatex --lua-filter=include-files.lua
