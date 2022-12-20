Algoritmo ComparaDistancias
	Imprimir CompararDistancias()
FinAlgoritmo

Funcion respuesta <- CompararDistancias()
	contador = 0
	contador_positivos = 0
	contador_negativos = 0
	Mientras contador< 5 Hacer
		Escribir "Escribe un numero:"
		Leer num
		Si num < 0 Entonces
			contador_negativos = contador_negativos + num
		SiNo
			contador_positivos = contador_positivos + num
		FinSi
		contador = contador+1
	FinMientras
	Si contador_positivos > ABS(contador_negativos) Entonces
		Escribir "hi"
		respuesta = Verdadero
	SiNo
		respuesta = Falso
	FinSi
FinFuncion
	