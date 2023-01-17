# Monday January 16, 2023

## Training JS #7: if..else and ternary operator!

### Description:
In JavaScript, `if..else` is the most basic conditional statement, it consists of three parts:`condition, statement1, statement2`, like this:

```JavaScript
if (condition) statementa
else           statementb
```

It means that if the condition is true, then execute the statementa, otherwise execute the statementb. If the statementa or statementb are more than one line, you need to add `{` and `}` at the head and tail of statements in JS, to keep the same indentation on Python and to put an `end` in Ruby where it indeed ends.

For example, if we want to judge whether a number is odd or even, we can write code like this:

```JavaScript
function oddEven(n){
  if (n % 2 == 1) return "odd number";
  else            return "even number";
}
```

If there is more than one condition to judge, we can use the compound if...else statement. For example:

```JavaScript
function oldYoung(age){
  if (age < 16)      return "children"
  else if (age < 50) return "young man"   //use "else if" if needed
  else               return "old man"
}
```

This function returns a different value depending on the parameter age.

Looks very complicated? Well, JS and Ruby also support the `ternary operator` and Python has something similar too:

```JavaScript
condition ? statementa : statementb
```

Condition and statement separated by "?", different statement separated by ":" in both Ruby and JS; in Python you put the condition in the middle of two alternatives. The two examples above can be simplified with ternary operator:

```JavaScript
function oddEven(n){
  return n%2 == 1 ? "odd number" : "even number";
}
function oldYoung(age){
  return age < 16 ? "children" : age < 50 ? "young man" : "old man";
}
```
#### Task:
Complete function `saleHotdogs`/`SaleHotDogs`/`sale_hotdogs`, function accepts 1 parameter:`n`, n is the number of hotdogs a customer will buy, different numbers have different prices (refer to the following table), return how much money will the customer spend to buy that number of hotdogs.

| number of hotdogs | price per unit (cents) |
| ----------------- | ---------------------- |
| n<5               | 100                    |
| n>=5 and n<10     | 95                     |
| n>=10             | 90                     |

You can use if..else or ternary operator to complete it.

```JavaScript
When you have finished the work, click "Run Tests" to see if your code is working properly.

In the end, click "Submit" to submit your code and pass this kata.
```

### Solution:

This is my solution:

```JavaScript
function saleHotdogs(n){
  let total = 0;
  if(n<5){
    total+= 100*n
  }else if(n>=5 && n < 10){
    total+= 95*n
  }else if(n>=10){
    total+= 90*n;
  }
  return total;
}
```

## Training JS #8: Conditional statement--switch

### Description:

In JavaScript, `switch` can replace multiple if statements.

```JavaScript
switch(n){
  case 1:  
    //code block
    break;
  case 2:
    //code block
    break;
  case ...:
    //code block
    break;

  default:       //default is optional, sometimes it can be omitted
    //code block
                 //The last one does not need break
}
```
`switch` is the keyword and `n` is the variable to switch. `case 1` means when `n===1`. Following the "`:`" you can add your code for what to do in that case. The keyword `break` is used as termination - if you forget `break`, the code will continue running through the other `case` statements and `default` until a `break` appears. If no `case` statements match, `default` is entered.

In some instances, the `switch` statement is clearer than the `if..else` statement.

For example, we can write a function to calculate what day today is, like this:

```JavaScript
function whatDayIsToday(n){
  // getDay() is a method of Date() - we will learn this later
  var day=new Date().getDay(),x; 
  switch (day){
    case 0:
      x="Today it's Sunday";
      break;
    case 1:
      x="Today it's Monday";
      break;
    case 2:
      x="Today it's Tuesday";
      break;
    case 3:
      x="Today it's Wednesday";
      break;
    case 4:
      x="Today it's Thursday";
      break;
    case 5:
      x="Today it's Friday";
      break;
    case 6:
      x="Today it's Saturday";
      break;
  }
  return x;
}
```

#### Task:
Complete the function howManydays. It accepts 1 parameter month, which means the month of the year. Different months have a different number of days as shown in the table below. Return the number of days that are in month. There is no need for input validation: month will always be greater than 0 and less than or equal to 12.

| month               | days |
| ------------------- | ---- |
| 1,3,5,7,8,10,12     | 31   |
| 4,6,9,11            | 30   |
| 2                   | 28   |

Tip: Using `default` for most of the cases can reduce your work.

### Solution:

This is my solution:

```JavaScript
function howManydays(month){
  var days;
  switch (month){
    case 1:
      days = 31;
      break;
    case 2:
      days = 28;
      break;
    case 3:
      days = 31;
      break;
    case 4:
      days = 30;
      break;
    case 5:
      days = 31;
      break;
    case 6:
      days = 30;
      break;
    case 7:
      days = 31;
      break;
    case 8:
      days = 31;
      break;
    case 9:
      days = 30;
      break;
    case 10:
      days = 31;
      break;
    case 11:
      days = 30;
      break;
    case 12:
      days = 31;
      break;
  }
  return days;
}
```

## Basic Calculator

### Description:

Write a function called calculate that takes 3 values. The first and third values are numbers. The second value is a character. If the character is "+" , "-", "*", or "/", the function will return the result of the corresponding mathematical function on the two numbers. If the string is not one of the specified characters, the function should return null (throw an `ArgumentException` in C#).

```JavaScript
calculate(2,"+", 4); //Should return 6
calculate(6,"-", 1.5); //Should return 4.5
calculate(-4,"*", 8); //Should return -32
calculate(49,"/", -7); //Should return -7
calculate(8,"m", 2); //Should return null
calculate(4,"/",0) //should return null
```

Keep in mind, you cannot divide by zero. If an attempt to divide by zero is made, return null (throw an `ArgumentException` in C#)/(None in Python).

### Solution:

This is my solution:

```JavaScript
function calculate(num1, operation, num2) {
 switch(operation){
     case "+":
      return num1 + num2;
      break;
     case "-":
      return num1 - num2;
      break;
     case "*":
      return num1 * num2;
      break;
     case "/":
      if(num2 != 0){
        return num1 / num2;
      }else{
        return null;
      }
      break;
     default:
      return null;
 }
}
```
