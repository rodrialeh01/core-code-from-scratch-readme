Algoritmo exampleCashier
	Imprimir cashier()
FinAlgoritmo

Funcion number <- cashier()
	saldo = 1000
	opcion = "d"
	Mientras opcion <> "c" hacer
		Escribir "Selecciona una opcion:"
		Escribir "a. Depositar"
		Escribir "b. Retirar"
		Escribir "c. Salir"
		Leer opcion
		Si opcion == "a" Entonces
			saldo = saldo + depositar()
		FinSi
		Si opcion == "b" Entonces
			saldo = saldo - retirar()
		FinSi
	FinMientras
	Escribir "Tu saldo es: ", saldo
FinFuncion

Funcion salida <- depositar()
	Escribir "¿Cuánto quiere depositar?"
	Leer salida
FinFuncion

Funcion salida <- retirar()
	Escribir "¿Cuánto quiere retirar?"
	Leer salida
FinFuncion