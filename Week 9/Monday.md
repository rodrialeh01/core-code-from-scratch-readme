# Monday January 23, 2023

## "this" is a problem

### Description

We want to create a constructor function 'NameMe', which takes first name and last name as parameters. The function combines the first and last names and saves the value in "name" property.

We already implemented that function, but when we actually run the code, the "name" property is accessible, but the "firstName" and "lastName" is not accessible. All the properties should be accessible. Can you find what's wrong with it? A test fixture is also available

```JavaScript
function NameMe(first, last) {
    this.firstName = first;
    this.lastName = last;
    return {name: this.firstName + ' ' + this.lastName};
}

var n = new NameMe('John', 'Doe');
n.firstName //Expected: John
n.lastName //Expected: Doe
n.name //Expected: John Doe
```

### Solution

This is my solution:

The function only return name, so can't access the firstName and the lastName, and this is a alternative to the solution to access the data:

```JavaScript
function NameMe(first, last) {
    this.firstName = first;
    this.lastName = last;
    this.name = this.firstName + ' ' + this.lastName;
}

var n = new NameMe('John', 'Doe');
n.firstName //Expected: John
n.lastName //Expected: Doe
n.name //Expected: John Doe
```

## Thinkful - List and Loop Drills: Lists of lists

### Description

You have a two-dimensional list in the following format:

```JavaScript
data = [[2, 5], [3, 4], [8, 7]]
```

Each sub-list contains two items, and each item in the sub-lists is an integer.

Write a function `process_data()`/`processData()` that processes each sub-list like so:

- `[2, 5]` --> `2 - 5` --> `-3`
- `[3, 4]` --> `3 - 4` --> `-1`
- `[8, 7]` --> `8 - 7` --> `1`

and then returns the product of all the processed sub-lists: 

`-3 * -1 * 1` --> `3`.

For input, you can trust that neither the main list nor the sublists will be empty.

### Solution

This is my solution:

```JavaScript
function processData(data){
  return data.map(function(ar){
      return ar[0]-ar[1];
  }).reduce(function(a, b){ return a * b; });
}
```

## Stop gninnipS My sdroW!

### Description

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples:

```JavaScript
spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
spinWords( "This is a test") => returns "This is a test" 
spinWords( "This is another test" )=> returns "This is rehtona test"
```

### Solution

This is my solution:

```JavaScript
function spinWords(string){
  let words = string.split(' ');
  return words.map(function(s){
    return s.length >=5? s.split("").reverse().join(""): s;
  }
  ).join(" ");
}
```