Algoritmo exampleSumOfPairs
	Imprimir sumOfPairs()
FinAlgoritmo

Funcion numero <- sumOfPairs()
	num = 0
	Repetir
		Escribir "Escribe un numero entre 1 y 100"
		Leer n
		Si (n>=0 & n<=100) & n%2 == 0 Entonces
			num = num + n
		FinSi
	Mientras Que num>=0 & num<=100 
	numero = num
FinFuncion
