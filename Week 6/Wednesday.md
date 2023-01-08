# Wednesday January 04, 2023

## Functions

### Description

Define a function hello that returns 'Hello world!'.

### Solution

This is the code for the problem:

```JavaScript
function hello(){
    return 'Hello world!';
}
```

---

## Multiple functions

### Description

Define two functions. The first function a should return 'Hello a!' and the second function b should return 'Hello b!'.

### Solution

This is the code for the problem:

```JavaScript
function a(){
    return 'Hello a!';
}

function b(){
    return 'Hello b!';
}
```

---

## Function calls

### Description

1. Define a function greet returning the value 'Haydo!'.
2. Declare a variable salutation. Call the function greet and assign the result of the call to the variable salutation.

### Solution

This is the code for the problem:

```JavaScript
function greet(){
    return 'Haydo!';
}

var salutation;
salutation = greet();
```

---

## What is x? (function version)

### Description

Which value does x have after execution of the following code?

```JavaScript
function reply(phrase) {
  return phrase;
}

let x = reply('How do you do?');
```

### Solution

This is the code for the problem:

```JavaScript
'How do you do?'
```

---

## Parameters

### Description

Write a function echo that also returns the passed parameter. echo('Greta') should return 'Greta' and echo('CO2') should return 'CO2'

### Solution

This is the code for the problem:

```JavaScript
function echo(text){
    return text;
}
```