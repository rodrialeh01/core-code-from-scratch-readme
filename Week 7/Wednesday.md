# Wednesday January 11, 2023

## Count strings in objects

### Description
Create a function strCount (takes an object as argument) that will count all string values inside an object. For example:

```JavaScript
strCount({
  first: "1",
  second: "2",
  third: false,
  fourth: ["anytime",2,3,4],
  fifth:  null
  })
  //returns 3
```

### Solution

This is the solution for the problem:

```JavaScript
function strCount(obj){
  let count = 0;
  for(let key in obj){
    if(typeof obj[key] === 'string'){
      count++;
    }else if(typeof obj[key] === 'object'){
      count+= strCount(obj[key]);
    }
  }
  return count;
}
```

## Extending JavaScript Objects: Get First & Last Array Element

### Description

Your task is to extend JavaScript Array object, with methods `.first()` and `.last()`, so you can get respectively first or last element of the array.

```JavaScript
var a = [2, 5, 7, 3 ,4];

a.first();  // 2
a.last();   // 4

```

### Solution

This is the solution for the problem:

```JavaScript
Array.prototype.first = function(){
  if(this.length === 0){
    return undefined;
  } else{
    const copy = [...this];
    return copy[0];
  }
}

Array.prototype.last = function(){
  if(this.length === 0){
    return undefined;
  } else{
    const copy = [...this];
    return copy[copy.length-1];
  }
}
```

## Object Oriented Piracy

### Description

Ahoy matey!

You are a leader of a small pirate crew. And you have a plan. With the help of OOP you wish to make a pretty efficient system to identify ships with a heavy booty on board.

Unfortunately for you, people weigh a lot these days, so how do you know if a ship is full of gold and not people?

You begin with writing a generic Ship class / struct:

```JavaScript
function Ship(draft,crew) {
  this.draft = draft;
  this.crew = crew;
}
```

Every time your spies see a new ship enter the dock, they will create a new ship object based on their observations:

- draft - an estimate of the ship's weight based on how low it is in the water
- crew - the count of crew on board

```JavaScript
var titanic = new Ship(15, 10);
```

You have access to the ship "draft" and "crew". "Draft" is the total ship weight and "crew" is the number of humans on the ship.

Each crew member adds 1.5 units to the ship draft. If after removing the weight of the crew, the draft is still more than 20, then the ship is worth looting. Any ship weighing that much must have a lot of booty!

Add the method

```JavaScript
isWorthIt
```

to decide if the ship is worthy to loot. For example:

```JavaScript
titanic.isWorthIt() // return false
```

This Kata teaches you the very basics of method creation.

Good luck!

### Solution

This is the solution for the problem:

```JavaScript
function Ship(draft,crew) {
  this.draft = draft;
  this.crew = crew;
  this.isWorthIt = function (){
    return (this.draft - this.crew * 1.5) > 20;
  }
}
```