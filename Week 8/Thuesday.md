# Thuesday January 17, 2023

## Even or odd

### Description

Create a function that takes an integer as an argument and returns `"Even"` for even numbers or `"Odd"` for odd numbers.

### Solution

This is my solution:

```JavaScript
function evenOrOdd(number) {
  return number % 2 === 0 ? "Even" : "Odd";
}
```

## A wolf in sheep's clothing

### Description

Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:

```JavaScript
[sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE)
   7      6      5      4      3            2      1
```

If the wolf is the closest animal to you, return `"Pls go away and stop eating my sheep"`. Otherwise, return `"Oi! Sheep number N! You are about to be eaten by a wolf!"` where `N` is the sheep's position in the queue.

Note: there will always be exactly one wolf in the array.

### Solution

This is my solution:

```JavaScript
function warnTheSheep(queue) {
  if(queue[queue.length-1] == "wolf"){
    return "Pls go away and stop eating my sheep";
  }else{
    for(let i = queue.length-1; i>= 0; i--){
      if(i-1 != queue.length-1){
        if(queue[i-1] === "wolf"){
          return "Oi! Sheep number "+(queue.length-i)+"! You are about to be eaten by a wolf!"
        }
      }
    }
  }
}
```

## Decode the morse code

### Description

In this kata you have to write a simple Morse code decoder. While the Morse code is now mostly superseded by voice and digital data communication channels, it still has its use in some applications around the world.

The Morse code encodes every character as a sequence of "dots" and "dashes". For example, the letter `A` is coded as `·−`, letter `Q` is coded as `−−·−`, and digit 1 is coded as `·−−−−`. The Morse code is case-insensitive, traditionally capital letters are used. When the message is written in Morse code, a single space is used to separate the character codes and 3 spaces are used to separate words. For example, the message `HEY JUDE` in Morse code is `···· · −·−−   ·−−− ··− −·· ·`.

NOTE: Extra spaces before or after the code have no meaning and should be ignored.

In addition to letters, digits and some punctuation, there are some special service codes, the most notorious of those is the international distress signal SOS (that was first issued by Titanic), that is coded as `···−−−···`. These special codes are treated as single special characters, and usually are transmitted as separate words.

Your task is to implement a function that would take the morse code as input and return a decoded human-readable string.

For example:

```JavaScript
decodeMorse('.... . -.--   .--- ..- -.. .')
//should return "HEY JUDE"
```

NOTE: For coding purposes you have to use ASCII characters `.` and `-`, not Unicode characters.

### Solution

This is my solution:

```JavaScript
decodeMorse = function(morseCode){
  // Your code here
  // You can use MORSE_CODE[morse]
  let salida = [];
  let palabras = morseCode.trim().split('   ');
  let letras = [];
  for (let i = 0; i < palabras.length; i++) {
    letras = palabras[i].split(' ');
    for (let j = 0; j < letras.length; j++) {
      letras[j] = MORSE_CODE[letras[j]];
    }
    salida.push(letras.join(''));
  }
  return salida.join(' ').trim();
}
```
