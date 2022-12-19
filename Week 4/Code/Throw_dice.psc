Algoritmo Throw_dice
	contador = 0
	Mientras contador < 10 
		dado1 = Aleatorio(1,6)
		dado2 = Aleatorio(1,6)
		Si dado1 == dado2 Entonces
			Escribir dado1, " ", dado2, " the dice are the same"
			contador = contador+1
		SiNo
			Escribir  dado1, " ", dado2
			contador = contador+1
		FinSi
	FinMientras
	
FinAlgoritmo
