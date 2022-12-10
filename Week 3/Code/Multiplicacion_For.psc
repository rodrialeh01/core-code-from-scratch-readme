Algoritmo Multiplicacion_For
	Escribir "======================= CALCULADORA ====================="
	Escribir "Ingrese la tabla de multiplicar"
	Leer numero_user
	Escribir "@ Tabla de ", numero_user, " @"
	Para i<-1 Hasta 11 Con Paso 1 Hacer
		total = i*numero_user
		Escribir numero_user, " * ", i, " = ", total
	Fin Para
FinAlgoritmo
