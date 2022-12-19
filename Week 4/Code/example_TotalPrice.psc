Algoritmo example_TotalPrice
	Imprimir TotalPrice(5000,21)
FinAlgoritmo

Funcion total <- TotalPrice(precio, iva)
	Si precio > 3000 Entonces
		sin_descuento = (precio + (precio*(iva/100)))
		total = sin_descuento-(sin_descuento*0.1)
	SiNo
		total = (precio + (precio*(iva/100)))
	FinSi
FinFuncion
