Algoritmo Multiplication_Tables
	Escribir '======= MULTIPLICATION TABLES ======='
	Escribir 'Ingrese la tabla a multiplicar'
	Leer number
	Escribir '@ Tabla de ', number, ' @'
	numbers = 1
	Mientras numbers <= 10 Hacer
		total = number*numbers
		Escribir number, ' * ' numbers, ' = ', total
		numbers = numbers + 1
	FinMientras
FinAlgoritmo
