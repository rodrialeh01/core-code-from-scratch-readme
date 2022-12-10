Algoritmo Greetings
	Escribir "======== Cheers ========"
	continuar = "Si"
	contador_saludos = 0
	Mientras(continuar == "Si") Hacer
		Escribir "Ingrese la hora actual (0-23):"
		Leer hora
		Si hora > 0 & hora <=12 Entonces
			Escribir "Buenos Días!"
			contador_saludos = contador_saludos+1
		FinSi
		Si hora > 13 & hora <=18 Entonces
			Escribir "Buenos Tardes!"
			contador_saludos = contador_saludos+1
		FinSi
		Si hora > 19 & hora <=23 Entonces
			Escribir "Buenos Noches!"
			contador_saludos = contador_saludos+1
		FinSi
		Escribir "Desea continuar? (Si/No)"
		Leer continuar
		Si continuar == "No" Entonces
			Escribir  "Cantidad de saludos realizados: ", contador_saludos
		FinSi
	FinMientras
FinAlgoritmo
