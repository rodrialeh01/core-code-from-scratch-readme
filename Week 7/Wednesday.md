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

While making a zork-type game, you create an object of rooms. Unfortunately, the game is not working. Find all of the errors in the rooms object to get your game working again.

```JavaScript
var rooms = {
  first: {
    description: 'This is the first room'
    items: {
      chair: 'The old chair looks comfortable',
      lamp: 'This lamp looks ancient'
  },
  second: {
    description: 'This is the second room'
    items: {
      couch: 'This couch looks like it would hurt your back,
      table: 'On the table there is an unopened bottle of water'
    }
  }
}
```

### Solution

This is the solution for the problem:

```JavaScript
var rooms = {
    first: {
        description: 'This is the first room',
        items: {
            chair: 'The old chair looks comfortable',
            lamp: 'This lamp looks ancient'
        }
    },
    second: {
        description: 'This is the second room',
        items: {
            couch: 'This couch looks like it would hurt your back',
            table: 'On the table there is an unopened bottle of water'
        }
    }
}
```