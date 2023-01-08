# Thursday January 05, 2023

## Strings

### Description
Write a function greet having one parameter and returning 'Hello <parameter>!'.

Example: greet('Ada') should return 'Hello Ada!' and greet('Grace') should return 'Hello Grace!'.

### Solution

This is the code for the problem:

```JavaScript
function greet(name){
    return 'Hello ' + name + '!'; 
}
```

---

## String: length

### Description

Write a function length that takes a string and returns the number of characters of the string.

Example: length('sun') should return 3.

### Solution

This is the code for the problem:

```JavaScript
function length(text){
    return text.length
}
```

## String: toUpperCase

### Description

Write a function toCase that takes a string and returns that string in lowercase and uppercase with - as delimiter.

Example: toCase('Mthatha') should return 'mthatha-MTHATHA'.

### Solution

This is the code for the problem:

```JavaScript
function toCase(text){
    let text2 = text.toUpperCase();
    let text3 = text.toLowerCase();
    return text3 + '-' + text2;
}
```

---

## String: charAt()

### Description

Write a function shortcut that takes two strings and returns the initial letters of theses strings.

Example: shortcut('Amnesty', 'International') should return 'AI'.

### Solution

This is the code for the problem:

```JavaScript
function shortcut(text1,text2){
    return text1.charAt(0) + text2.charAt(0);
}
```

---

## String: indexOf()

### Description

Write a function indexOfIgnoreCase taking two strings and determining the first occurrence of the second string in the first string. The function should be case insensitive.

Example: indexOfIgnoreCase('bit','it') and indexOfIgnoreCase('bit','IT') should return 1.

### Solution

This is the code for the problem:

```JavaScript
function indexOfIgnoreCase(text1, text2){
    let text1l = text1.toLowerCase();
    let text2l = text2.toLowerCase();
    return text1l.indexOf(text2l);
}
```