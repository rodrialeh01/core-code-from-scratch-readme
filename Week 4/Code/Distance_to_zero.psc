Algoritmo Distance_to_zero
	Escribir "Ingresa un numero"
	Leer numero1
	Escribir "Ingresa un numero"
	Leer numero2
	Escribir "Ingresa un numero"
	Leer numero3
	Escribir "Ingresa un numero"
	Leer numero4
	Escribir "Ingresa un numero"
	Leer numero5
	max = numero1
	Si abs(numero2) > abs(max) Entonces
		max = numero2
		Si abs(numero3) > abs(max) Entonces
			max = numero3
			Si abs(numero4) > abs(max) Entonces
				max = numero4
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			SiNo
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			FinSi
		SiNo
			Si abs(numero4) > abs(max) Entonces
				max = numero4
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			SiNo
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			FinSi
		FinSi
	SiNo
		Si abs(numero3) > abs(max) Entonces
			max = numero3
			Si abs(numero4) > abs(max) Entonces
				max = numero4
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			SiNo
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			FinSi
		SiNo
			Si abs(numero4) > abs(max) Entonces
				max = numero4
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			SiNo
				Si abs(numero5) > abs(max) Entonces
					max = numero5
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir max
FinAlgoritmo
