Algoritmo Average_sales_and_comission
	Escribir "Write the total number of sales to enter"
	Leer sales
	contador_ventas = 0
	Para i<-0 Hasta sales-1 Con Paso 1 Hacer
		Escribir "Write the value of the sale number: ", (i+1)
		Leer cantidad
		contador_ventas = contador_ventas + cantidad
	Fin Para
	promedio = contador_ventas/sales
	Escribir "The average sales is: ", promedio
	Si sales > 5 Entonces
		comision = contador_ventas*0.15
		Escribir "The commission received by the seller is: ", comision
	FinSi
	Si sales >= 0 & sales<=5 Entonces
		comision = contador_ventas*0.1
		Escribir "The commission received by the seller is: ", comision
	FinSi
FinAlgoritmo
