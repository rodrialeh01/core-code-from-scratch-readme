Algoritmo example_ReverseDirectionAndSize
	Imprimir ReverseDirectionAndSize("Hello")
FinAlgoritmo

Funcion reversa <-  ReverseDirectionAndSize(texto)
	Definir reversa Como Caracter
	reversa = ''
	Para i = Longitud(texto) Hasta 0 Con Paso -1 Hacer
		letra = Subcadena(texto,i,i)
		Si letra == Mayusculas(letra) Entonces
			letra = Minusculas(letra)
		SiNo 
			letra = Mayusculas(letra)
		FinSi
		reversa = Concatenar(reversa, letra)
	FinPara
FinFuncion
	