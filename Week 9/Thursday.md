# Thursday January 26, 2023

## The hashtag generator

### Description

The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

- It must start with a hashtag (#).
- All words must have their first letter capitalized.
- If the final result is longer than 140 chars it must return `false`.
- If the input or the result is an empty string it must return `false`.

#### Example

```JavaScript
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false
```

### Solution

This is my solution:

```JavaScript
function generateHashtag (str) {
    if (string.trim() === '') return false;

    const stringWithCamelCase = string
        .split(' ')
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join('');

    const stringWithHashtag = `#${stringWithCamelCase.trim()}`;

    return stringWithHashtag.length > 140 ? false : stringWithHashtag;
}
```

## String incrementer

### Description

Your job is to write a function which increments a string, to create a new string.

- If the string already ends with a number, the number should be incremented by 1.
- If the string does not end with a number. the number 1 should be appended to the new string.

#### Examples

```JavaScript
foo -> foo1

foobar23 -> foobar24

foo0042 -> foo0043

foo9 -> foo10

foo099 -> foo100
```

Attention: If the number has leading zeros the amount of digits should be considered.

### Solution

This is my solution:

```JavaScript
function incrementString (strng) {
    return strng.replace(/([0-8]?)(9*)$/, function(s, d, ns) {
        return +d + 1 + ns.replace(/9/g, '0');
    });
}
```