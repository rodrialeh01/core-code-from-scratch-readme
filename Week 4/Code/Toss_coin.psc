Algoritmo Toss_coin
	Escribir "Ingresa el nombre del primer jugador:"
	Leer name_1
	Escribir "Ingresa el valor:"
	Leer amount_1
	Escribir "Ingresa el nombre del segundo jugador:"
	Leer name_2
	Escribir "Ingresa el valor:"
	Leer amount_2
	Si amount_1 < 1 & amount_2 < 1 Entonces
		Escribir "Game cancelled"
	FinSi
	Si amount_1 < 1 & amount_2 >= 1 Entonces
		Escribir "player wins: ", Mayusculas(name_2), " amount won: ", amount_2
	FinSi
	Si amount_1 >= 1 & amount_2 < 1 Entonces
		Escribir "player wins: ", Mayusculas(name_1), " amount won: ", amount_1
	FinSi
	Si amount_1 >= 1 & amount_2 >= 1 Entonces
		Si Aleatorio(1,2) == 1 Entonces
			Escribir "player wins: ", Mayusculas(name_1), " amount won: ", amount_1
		SiNo
			Escribir "player wins: ", Mayusculas(name_2), " amount won: ", amount_2
		FinSi
	FinSi
FinAlgoritmo
