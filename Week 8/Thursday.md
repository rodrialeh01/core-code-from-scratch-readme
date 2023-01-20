# Thursday January 19, 2023

## Counting duplicates

### Description

Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

#### Example

"abcde" -> 0 `# no characters repeats more than once`

"aabbcde" -> 2 `# 'a' and 'b'`

"aabBcde" -> 2 `# 'a' occurs twice and 'b' twice ('b' and 'B')`

"indivisibility" -> 1 `# 'i' occurs six times`

"Indivisibilities" -> 2 `# 'i' occurs seven times and 's' occurs twice`

"aA11" -> 2 `# 'a' and '1'`

"ABBA" -> 2 `# 'A' and 'B' each occur twice`

### Solution

This is my solution:

```JavaScript

function duplicateCount(text){
  return text.toLowerCase().split('').filter((x, i, a) => a.indexOf(x) !== i && a.lastIndexOf(x) === i).length;
}

```

## Encrypt this!

### Description

Encrypt this!

You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:

1. Your message is a string containing space separated words.
2. You need to encrypt each word in the message using the following rules:
    - The first letter must be converted to its ASCII code.
    - The second letter must be switched with the last letter
3. Keepin' it simple: There are no special characters in the input.

#### Example

```JavaScript
encryptThis("Hello") === "72olle"
encryptThis("good") === "103doo"
encryptThis("hello world") === "104olle 119drlo"
```

### Solution

This is my solution:

```JavaScript
var encryptThis = function(text) {
  let words = text.split(' ');
  let result = "";
  for(let i = 0; i < words.length; i++){
    result+= String(words[i].charCodeAt(0));
    let letters = words[i].split('');
    if(letters.length>1){
      result+= letters[letters.length-1];
      if(letters.length>2){
        for(let j = 2; j <letters.length-1; j++){
          result+= letters[j];
        }
        result+= letters[1];
      }
    }
    if(i != words.length-1){
      result+= " ";
    }
  }
  return result;
}
```

## Valid parentheses

### Description

Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return `true` if the string is valid, and `false` if it's invalid.

#### Example

```JavaScript
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
```

### Solution

This is my solution:

```JavaScript
function validParentheses(parens){
  let count = 0;
  for(let i = 0; i < parens.length; i++){
    if(parens[i] == "("){
      count++;
    }else{
      count--;
    }
    if(count < 0){
      return false;
    }
  }
  return count == 0;
}
```

## Convert string to camel case

### Description

Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case). The next words should be always capitalized.

#### Example

`"the-stealth-warrior"` gets converted to `"theStealthWarrior"`
`"The_Stealth_Warrior"` gets converted to `"TheStealthWarrior"`

### Solution

This is my solution:

```JavaScript

function toCamelCase(str){
  let words = str.split(/[-_]/);
  let result = words[0];
  for(let i = 1; i < words.length; i++){
    result+= words[i][0].toUpperCase() + words[i].slice(1);
  }
  return result;
}

```