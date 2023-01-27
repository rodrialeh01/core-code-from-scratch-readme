# Thuesday January 24, 2023

## "this" is an other problem

### Description

Having created a function `NamedOne` which takes `first` & `last` names as parameters and returns an object with `firstName`, `lastName` and `fullName` ( = `firstName` + a space + `lastName` ) properties which should be all accessibles, we discovered that "accessible" also means "mutable".

If, for example, we've got a "NamedOne" like this :

```JavaScript
var namedOne = new NamedOne("Naomi","Wang")
namedOne.firstName // -> "Naomi"
namedOne.lastName  // -> "Wang"
namedOne.fullName  // -> "Naomi Wang"
```

...properties may be changed :

```JavaScript
namedOne.firstName = "John"
namedOne.firstName // -> "John"
namedOne.lastName = "Doe"
namedOne.lastName  // -> "Doe"
```

...but all properties are not updated !

```JavaScript
namedOne.fullName  // -> "Naomi Wang" 
//-- Oh no ! we want fullName == "John Doe" now !
```

So the purpose of this kata is to create an object with accessible and "updatable" (can i say that?) properties.

If `.firstName` or `.lastName` are changed, then `.fullName` should also be changed
If `.fullName` is changed, then `.firstName` and `.lastName` should also be changed.
Note : "input format" to `.fullName` will be `firstName + space+ lastName`. If given fullName isn't valid then no property is changed.

#### Example:

```JavaScript
var namedOne = new NamedOne("Naomi","Wang")

namedOne.firstName = "John"
namedOne.lastName = "Doe"
// ...then...
namedOne.fullName // -> "John Doe"

// -- And :
namedOne.fullName = "Bill Smith"
// ...then...
namedOne.firstName // -> "Bill"
namedOne.lastName  // -> "Smith"

// -- But :
namedOne.fullName = "Tom" // -> no : lastName missing
namedOne.fullName = "TomDonnovan" // -> no : no space between first & last names
namedOne.fullName // -> "Bill Smith" (unchanged)
```

Can you change our function to create such a `NamedOne` object ?

### Solution

This is my solution:

```JavaScript
function NamedOne(first, last) {
// -- SHOULD be changed --
    this.firstName = first;
    this.lastName = last;
    this.fullName = this.firstName + ' ' + this.lastName;
}

NamedOne.prototype = {
    get firstName() {
        return this._firstName;
    },
    set firstName(value) {
        this._firstName = value;
        this.fullName = this._firstName + ' ' + this._lastName;
    },
    get lastName() {
        return this._lastName;
    },
    set lastName(value) {
        this._lastName = value;
        this.fullName = this._firstName + ' ' + this._lastName;
    },
    get fullName() {
        return this._fullName;
    },
    set fullName(value) {
        var names = value.split(' ');
        if (names.length === 2) {
            this._firstName = names[0];
            this._lastName = names[1];
            this._fullName = this._firstName + ' ' + this._lastName;
        }
    }
};
```

## "Who likes it?"

### Description

You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

```JavaScript
[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
```

Note: For 4 or more names, the number in `"and 2 others"` simply increases.

### Solution

This is my solution:

```JavaScript
function likes(names) {
  switch(names.length){
      case 0:
        return "no one likes this";
      case 1:
        return names[0] + " likes this";
      case 2:
        return names[0] +" and "+ names[1] + " like this"
      case 3:
        return names[0] + ", " + names[1] + " and " + names[2] + " like this";
      default:
        return names[0] + ", " + names[1] + " and " + (names.length-2) + " others like this";
  }
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
