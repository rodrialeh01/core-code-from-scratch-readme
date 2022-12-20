Algoritmo exampleTimeConverter
	Imprimir timeConverter(4000)
FinAlgoritmo

Funcion resultado <- timeConverter(segundos)
	segs = segundos % 60
	mins = TRUNC(segundos/60) % 60
	hours = TRUNC(segundos/3600)%24
	days = TRUNC(segundos/86400)
	cadena = 'days:' + ConvertirATexto(days) + ', hours:'+ ConvertirATexto(hours) + ', minutes:' + ConvertirATexto(mins) + ', and seconds:' + ConvertirATexto(segs)
	resultado = cadena
FinFuncion
	