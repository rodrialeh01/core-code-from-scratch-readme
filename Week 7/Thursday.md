# Thursday January 12, 2023

## Convert a String to a Number!

### Description

We need a function that can transform a string into a number. What ways of achieving this do you know?

Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.

Examples:

```JavaScript
"1234" --> 1234
"605"  --> 605
"1405" --> 1405
"-7" --> -7
```

### Solution

This is the solution for the problem:

```JavaScript
const stringToNumber = function(str){
    return Number(str);
}
```

## Convert number to reversed array of digits

### Description

Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

Example(Input=>Output):

```JavaScript
35231 => [1,3,2,5,3]
0 => [0]
```

### Solution

This is the solution for the problem:

```JavaScript
function digitize(n) {
  let str = String(n);
  let numbers = []
  for(let i= str.length; i>=0; i--){
      if(str[i] != null){
        numbers.push(Number(str[i]));
      }
  }
  return numbers;
}
```

## Truthy and Falsy

### Description

In JavaScript there are truthy and falsy values:

- truthy: a value that when evaluated in a boolean context returns true
- falsy: a value that when evaluated in a boolean context returns false

You are given two empty arrays (truthy and falsy) and you have to fill this array with at least 5 elements in each which will evaluate to true or false accordingly.

MDN links:

- https://developer.mozilla.org/en/docs/Glossary/Truthy
- https://developer.mozilla.org/en-US/docs/Glossary/Falsy

### Solution

This is the solution for the problem:

```JavaScript
const truthy = [true,2,"0",12n,"false"];
const falsy = [false, 0,null, undefined, NaN];
```

## Training JS #4: Basic data types--Array

### Description

In javascript, Array is one of basic data types. To define an empty array, you can use `var arr=new Array()` or `var arr=[]`

Array has an attribute: `length`, if there is an array named `arr`, using `arr.length` to know how many elements are contained in the array.

Each element in the array has an `index`, use `arr[index]` to get the value of element.

`index` always start from 0, so the first element of array is `arr[0]`, the last element of array is `arr[arr.length-1]`.

If we want to add new elements to the array, you can use the array method: `push()`. It can add an element to the end of the array. Instead, if we want to remove the last element of the array, you can use the array method: `pop()`. for example:

```JavaScript
var arr=[1,2,3];     //define an array arr contains elements 1 2 3
arr.push(4);         //add element 4 to arr
console.log(arr)     //[1,2,3,4]
arr.pop();           //remove the last element from arr
console.log(arr)     //[1,2,3]
```

I've written five functions. Each function receives a parameter arr which is an array. Complete the functions using arr inside the function bodies.

```JavaScript
1. getLength(arr)    //should return length of arr
2. getFirst(arr)     //should return the first element of arr
3. getLast(arr)      //should return the last element of arr
4. pushElement(arr)  //should push an element to arr, and then return arr
5. popElement(arr)   //should pop an element from arr, and then return arr
```

When you have finished the work, click "Run Tests" to see if your code is working properly.

In the end, click "Submit" to submit your code pass this kata.

### Solution

This is the solution for the problem:

```JavaScript
function getLength(arr){
  //return length of arr
  return arr.length;
}
function getFirst(arr){
  //return the first element of arr
  return arr[0];
}
function getLast(arr){
  //return the last element of arr
  return arr[arr.length-1];
}
function pushElement(arr){
  var el=1;
  //push el to arr
  arr.push(el);
  return arr;
}
function popElement(arr){
  //pop an element from arr
  arr.pop();
  return arr;
}
```