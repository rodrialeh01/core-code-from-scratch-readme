# Monday January 09, 2023

## String: substr()

### Description

Write a function firstWord, taking a string and returning the first word in that string. The first word are all characters up to the first space.

Example: firstWord('see and stop') should return 'see'.

### Solution

```JavaScript
function firstWord(text){
    return text.substr(0, text.indexOf(' '));
}
```

## String: replace()

### Description

Write a function normalize, that replaces '-' with '/' in a date string.

Example: normalize('20-05-2017') should return '20/05/2017'.

### Solution

This is the code for the problem:

```JavaScript
function normalize(date){
    return date.replace(/-/g, '/');
}
```

## Increment

### Description

Which value does x have after execution of the following code?

```let x = 3;
x++;
x = x * 2;
x--;
```

### Solution

This is the solution for the problem:

```
7
```

## Fareheit

### Description

Write a function toFahrenheit that converts a temperature from Celsius to Fahrenheit.

Example: toFahrenheit(0) should return 32.

### Solution

This is the code for the problem:

```JavaScript
function toFahrenheit(celsius){
    return((celsius*(9/5))+32);
}
```

## Boolean

### Description

Write a function nand that takes two Boolean values. If both values are true, the result should be false. In the other cases the return should be true.

I.e.: The call nand(true, true) should return false. The calls nand(true, false), nand(false, true) and nand(false, false) should return true.

### Solution

This is the code for the problem:

```JavaScript
function nand(bool1, bool2){
    return(!(bool1 && bool2));
}
```