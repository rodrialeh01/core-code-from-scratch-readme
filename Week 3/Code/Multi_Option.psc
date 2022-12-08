Algoritmo Multi_Option
	Escribir '========= Multi Opcion ==========='
	Escribir 'Opciones Disponibles:'
	Escribir '1. Suma de dos numeros'
	Escribir '2. Imprimir día de la semana'
	Escribir '3. Calcular longitud de texto'
	Escribir 'Ingrese la opcion seleccionada:'
	Leer opcion_usuario
	Segun  opcion_usuario Hacer
		1:
			Escribir 'Ingrese el primer numero:'
			Leer numero_1
			Escribir  'Ingrese el segundo numero:'
			Leer numero_2
			total = numero_1+numero_2
			Imprimir 'El total de la suma es: ', total
		2:
			Escribir 'Ingrese el dia de la semana en numeros (1-7):'
			Leer dia
			segun dia Hacer
				1:
					Imprimir 'Lunes'
				2: 
					Imprimir 'Martes'
				3:
					Imprimir 'Miercoles'
				4:
					Imprimir 'Jueves'
				5:
					Imprimir 'Viernes'
				6:
					Imprimir 'Sabado'
				7:
					Imprimir 'Domingo'
			FinSegun
		3:
			Imprimir 'Ingrese un texto:'
			Leer text
			Imprimir 'La Longitud del texto es:', ConvertirATexto(Longitud(text))
	FinSegun
FinAlgoritmo