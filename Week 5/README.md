# Week 5

## Monday December 19, 2022

### Time Converter

#### Description

Create a function called timeConverter that receives a positive number of seconds and returns a string based on the number. "Days: 1, Hours: 5, Minutes: 40 and seconds: 5"

4000 --> "days: 0, hours: 1, minutes: 6, and seconds: 4"

40000 --> "days: 0, hours: 11, minutes: 6, and seconds: 4"

150000 --> "days: 1, hours: 17, minutes: 40, and seconds: 0"

#### Solution

```python
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
```

The result of the program is as follows:

![time_conveerter](./Images/P1.png)

You can find the code for this problem [here](./Code/exampleTimeConverter.psc).

---

### Compare distances

#### Description

Create a function called compareDistances that asks for 5 numbers, these can be positive or negative, add the positives with positives and negatives with negatives, the function should return true if there is more distance to 0 with positives or false if the distance is greater with negatives .

4, 12 , 100, 8, -60 --> true

40, 120 , 10, -80, -91 --> false

#### Solution

```python
Algoritmo ComparaDistancias
	Imprimir CompararDistancias()
FinAlgoritmo

Funcion respuesta <- CompararDistancias()
	contador = 0
	contador_positivos = 0
	contador_negativos = 0
	Mientras contador< 5 Hacer
		Escribir "Escribe un numero:"
		Leer num
		Si num < 0 Entonces
			contador_negativos = contador_negativos + num
		SiNo
			contador_positivos = contador_positivos + num
		FinSi
		contador = contador+1
	FinMientras
	Si contador_positivos > ABS(contador_negativos) Entonces
		Escribir "hi"
		respuesta = Verdadero
	SiNo
		respuesta = Falso
	FinSi
FinFuncion
```

The result of the program is as follows:

![compare_distances](./Images/P2.png)

You can find the code for this problem [here](./Code/ComparaDistancias.psc).

---

## Thuesday December 20, 2022

### Sum of pairs

#### Description

write a function called sumOfPairs that asks for a number from 1 to 100 indefinitely, if a negative number or greater than 100 is entered, it stops asking for more numbers and returns the sum of all the even numbers entered.

4, 12 , 100, 11, -60 --> 116

40, 121 --> 40

#### Solution

This is the code for the problem:

```python
Algoritmo exampleSumOfPairs
	Imprimir sumOfPairs()
FinAlgoritmo

Funcion number <- sumOfPairs()
	num = 0
	n = 0
	Repetir
		Escribir "Escribe un numero entre 1 y 100"
		Leer n
		Si (n>=0 & n<=100) & n%2 == 0 Entonces
			num = num + n
		FinSi
	Mientras Que n>=0 & n<=100 
	number = num
FinFuncion
```

The result of the program is as follows:

![sum_of_pairs](./Images/P3.png)

You can find the code for this problem [here](./Code/exampleSumOfPairs.psc).

---

### Mid point

#### Description

Write a function called midpoint that given 2 values ​​(can be negative) does not return the value of the midpoint between them

-50,50 --> 0

40, 80 --> 60

#### Solution

This is the code for the problem:

```python
Algoritmo exampleMidpPoint
	Imprimir midPoint(-50,50)
FinAlgoritmo

Funcion resultado <- midPoint(num1,num2)
	Si num1>0 & num2>0 Entonces
		resultado = (num1+num2)/2
	SiNo
		resultado = 0
	FinSi
FinFuncion
```

The result of the program is as follows:

![mid_point](./Images/P4.png)

You can find the code for this problem [here](./Code/exampleMidpPoint.psc).