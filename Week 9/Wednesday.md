# Wednesday January 25, 2023

## Easy mathematical callback

### Description

Write the processArray function, which takes an array and a callback function as parameters. The callback function can be, for example, a mathematical function that will be applied on each element of this array. Optionally, also write tests similar to the examples below.

#### Example

1. Array `[4, 8, 2, 7, 5]` after processing with function

```JavaScript
var myArray = [4, 8, 2, 7, 5];
myArray = processArray(myArray,function (a) {
  return a * 2;
});
```

will be `[ 8, 16, 4, 14, 10 ]`.

2. Array `[7, 8, 9, 1, 2]` after processing with function

```JavaScript
var myArray = [7, 8, 9, 1, 2];
myArray = processArray(myArray, function (a) {
  return a + 5;
});
```

will be `[ 12, 13, 14, 6, 7 ]`.

### Solution

This is my solution:

```JavaScript
function processArray(arr, callback) {
    var newArr = [];
    for (var i = 0; i < arr.length; i++) {
        newArr.push(callback(arr[i]));
    }
    return newArr;
}
```

## Moving Zeros To The End

### Description

Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

#### Example

```JavaScript
moveZeros([false,1,0,1,2,0,1,3,"a"]) // returns[false,1,1,2,1,3,"a",0,0]
```

### Solution

This is my solution:

```JavaScript
var moveZeros = function (arr) {
    var newArr = [];
    var zeroArr = [];
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] === 0) {
            zeroArr.push(arr[i]);
        } else {
            newArr.push(arr[i]);
        }
    }
    return newArr.concat(zeroArr);
}
```

## Valid Parentheses

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