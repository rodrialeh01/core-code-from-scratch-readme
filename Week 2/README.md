# Week 2
## Monday, November 28, 2022
### Logic problem

#### Description

The teacher asks his 5 students if they studied mathematics yesterday.

Alice: "Nobody studied math yesterday".<br>
Bob: "1 person studied math yesterday".<br>
Charlie: "2 people studied math yesterday".<br>
Dan: "3 people studied mathematics yesterday".<br>
Eva: "4 people studied mathematics yesterday".<br>

The teacher knows that only those who studied would be telling the truth and those who didn't would be lying. Who is telling the truth?

#### Solution

```
Bob is telling the truth.
```
---
### Which comes first, cereal or milk?

#### Description
Create an algorithm to prepare a bowl of cereal with milk. Represent the result in pseudocode and in a flowchart.

#### Solution
The algorithm is the following:
```
1. Start
2. Get a bowl, cereal and milk.
3. Put cereal in the bowl.
4. Put milk in the bowl.
5. Finish.
```

The pseudocode of the algorithm is the following:
```
si bowl, cereal, milk diferente de vacío entonces
    insertar cereal en bowl
    insertar leche en bowl
de lo contrario
    encontrar bowl, cereal, leche
    insertar cereal en bowl
    insertar leche en bowl
fin si
```

The flowchart of the algorithm is the following:<br>
![Cereal](./Diagram1.png)

---
## Tuesday, November 29, 2022
### Print my name

The pseudocode of the algorithm is the following:
```python
Algoritmo my_Name
	Imprimir 'Rodrigo Hernández'
FinAlgoritmo
```

The result of the algorithm is the following:

![Result1](./PS1.png)

You can also view the pseudocode in PSeInt by opening the PSeInt file: [my_Name](./my_Name.psc)

---

### Print my name & age

The pseudocode of the algorithm is the following:
```python
Algoritmo my_Name_and_age
	Imprimir 'Rodrigo Hernández'
	Imprimir '21'
FinAlgoritmo
```

The result of the algorithm is the following:

![Result1](./PS2.png)

You can also view the pseudocode in PSeInt by opening the PSeInt file: [my_Name_and_age](./my_Name_and_age.psc)

---

## Wednesday, November 30, 2022

### Algorithm game

I complete 15 levels of this [game](https://www.w3schools.com/codegame/).

This is my progress:

![Level15](./Algorithm_Game.png)

---

### Mod

#### Description

The challenge for you now is to create a PSeInt program that will receive a number from the user and add the mod operator using the even/odd case ( X % 2 ) where X is the user input.

#### Solution
The pseudocode of the algorithm is the following:
```python
Algoritmo Modulo
	Definir x Como Entero
	Imprimir 'Ingrese un número:'
	Leer x
	Imprimir x%2
FinAlgoritmo
```
The result of the algorithm is the following:
- For even numbers:

![Result1](./W_C2.png)
- For odd numbers:

![Result2](./W_C1.png)

You can also view the pseudocode in PSeInt by opening the PSeInt file: [Modulo](./Modulo.psc)

---

### Register Form
#### Description
You are given the task to create a registration form for new users, this form should ask the user for the following information:

- First name
- Last name
- Age
- Email
- Address

At the end of the program, you should print all the information added from the user in a friendly way

#### Solution

The pseudocode of the algorithm is the following:
```python
Algoritmo Register_Form
	Imprimir '========= USER FORM ========='
	Imprimir 'First Name:'
	Leer first_name
	Imprimir 'Last Name:'
	Leer last_name
	Imprimir 'Edad:'
	Leer age
	Imprimir 'Email:'
	Leer email
	Imprimir 'Address:'
	Leer address
	Imprimir '========================= USER DATA ========================='
	Imprimir 'Full name: ' + first_name + ' ' + last_name
	Imprimir 'Age: ' + age
	Imprimir 'Email: ' + email
	Imprimir 'Address: ' + address
	Imprimir '============================================================='
FinAlgoritmo
```

Input:

![Input](./W_C3.png)

Output:

![Output](./W_C4.png)

You can also view the pseudocode in PSeInt by opening the PSeInt file: [Register_Form](./Register_Form.psc)

---

## Thursday, December 1, 2022
### Truth tables
You are going to learn about three main logical operations used in programming, these operations are called AND, OR, and NOT. Each of the operations uses booleans as operands, and when applying the operations a result is generated, which is also a boolean, this is easier to check using the Truth Tables for each of the operations, now your task is for you to learn, and add the Truth Tables for each of the operations add them to your README and check if the following operations are correct by answering ✅ or ❌ at the end of each operation.

|Operation | Answer|
|----------|-------|
| T `&` T = T | ✅ |
| T `&` F = F | ✅ |
| F `&` T = T | ❌ |
| F `&` F = F | ✅ |
| T `OR` T = T | ✅ |
| T `OR` F = F | ❌ |
| F `OR` T = T | ✅ |
| F `OR` F = F | ✅ |
| `~`T = T | ❌ |
| `~`F = T | ✅ |
| (T `&` F) `OR` (`~`F) = T | ✅ |
| (T `OR` F ) `&` (F `OR` F) = T | ❌ |
| `~`((T `OR` F ) `&` (F `OR` F)) `&` F = T | ✅ |
| `~`((T `OR` F ) `&` (F `OR` F)) `&` T = F | ✅ |

---

### Boolean results
#### Description
You have been assigned to verify and explain a code created by one of your colleagues, the idea is that you can describe the value that each variable has within the code as well as what was done for each line. What is expected of you is that you add comments below each line showing the value that the variable would have and a short explanation of how that value is reached.

This is the code:
```python
Algoritmo boolean
	a <- 5 == 3
	b <- 4 <> 3
	c <- 7 > 7
	d <- 4 < 4
	e <- 100 <= 90
	f <- 40 >= 40
FinAlgoritmo
```
#### Solution
```python
Algoritmo boolean
	a <- 5 == 3
	//False, because 5 is not equal to 3
	b <- 4 <> 3
	//True, because 4 is not equal to 3
	c <- 7 > 7
	//False, because 7 is not greater than 7
	d <- 4 < 4
	//False, because 4 is not less than 4
	e <- 100 <= 90
	//False, because 100 is not less than or equal to 90
	f <- 40 >= 40
	//True, because 40 is equal to 40
FinAlgoritmo
```

---

### Identify odd and even numbers
#### Description
Remember the last challenge about the Mod operator? well, today your task will be to create a program that will be able to detect based on the user input if the number is odd or even. The process should be the following:

1. The user enters a number
2. Your algorithm detects if the number is odd or even (remember to use conditional statements Si...Entonces)
3. Print ‘Número: x es par’ if the number is even (x is the number the user enters)
4. Print ‘Número: x es impar’ if the number is odd (x is the number the user enters)

#### Solution

The pseudocode of the algorithm is the following:
```python
Algoritmo Par_o_Impar
	Imprimir 'Ingresa un número:'
	Leer number
	si number%2 == 0 Entonces
		Imprimir 'Número: ' , number , ' es par'
	SiNo
		Imprimir 'Número: ' , number , ' es impar'
	FinSi
FinAlgoritmo
```
The result of the algorithm is the following:
- For even numbers:

![Result1](./T_C1.png)

- For odd numbers:

![Result2](./T_C2.png)

You can also view the pseudocode in PSeInt by opening the PSeInt file: [Par_o_Impar](./Par_o_Impar.psc)