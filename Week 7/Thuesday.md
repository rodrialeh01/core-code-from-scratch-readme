# Thuesday January 10, 2023

## Objects

### Description

Give you a function `animal`, accept 1 parameter:obj like this:

```JavaScript
{name:"dog",legs:4,color:"white"}
```
and return a string like this:

```JavaScript
"This white dog has 4 legs."
```
When you have finished the work, click "Run Tests" to see if your code is working properly.

In the end, click "Submit" to submit your code pass this kata.

### Solution

This is the code for the problem:

```JavaScript
function animal(obj){
  return "This " + obj.color + " " + obj.name + " has " + obj.legs + " legs.";
}
```

## Return to sanity

### Description

This function should return an object, but it's not doing what's intended. What's wrong?

```JavaScript
function mystery() {
  var results =
    {sanity: 'Hello'};
  return
    results;
}
```

### Solution

This is the solution for the problem:

```JavaScript
function mystery() {
    var results = {sanity: 'Hello'};
    return results;
}
```

## Object syntax debug

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