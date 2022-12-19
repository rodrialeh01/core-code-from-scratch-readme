Algoritmo Full_name
	Escribir "Escribe tu primer nombre:"
	Leer first_name
	Escribir "Escribe tu apellido"
	Leer last_name
	Escribir Mayusculas(Subcadena(first_name,0,0)), Minusculas(Subcadena(first_name,1,Longitud(first_name)-1)), " ", Mayusculas(Subcadena(last_name,0,0)), Minusculas(Subcadena(last_name,1,Longitud(last_name)-1))
FinAlgoritmo
