Algoritmo Ascending_Descending
	Escribir "======= Ascending and Descending Numbers ========"
	Escribir "Ingrese un numero"
	Leer number
	Escribir  "Operaciones disponibles:"
	Escribir "1. Imprimir en orden Ascendente"
	Escribir "2. Imprimir en orden Descendente"
	Escribir "Ingrese operacion a ejecutar"
	Leer option
	Segun option Hacer
		1: 
			Para i<-0 Hasta number Con Paso 1 Hacer
				Escribir i
			Fin Para
		2: 
			Para i<-number Hasta 0 Con Paso -1 Hacer
				Escribir i
			Fin Para
	FinSegun
FinAlgoritmo
