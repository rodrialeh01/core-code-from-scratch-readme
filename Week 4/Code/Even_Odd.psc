Algoritmo Even_Odd
	number = 0
	Repetir
		Escribir "Write a number between 1 and 50"
		Leer number
		Si number>0 & number <= 50 Entonces
			Si number%2 == 0 Entonces
				Para n<-2 Hasta number Con Paso 2 Hacer
					Escribir n
				Fin Para
			SiNo
				Para n<-1 Hasta number Con Paso 2 Hacer
					Escribir n
				Fin Para
			FinSi
		SiNo
			Escribir "invalid number"
		FinSi
	Mientras Que number <=0 | number>50
FinAlgoritmo
