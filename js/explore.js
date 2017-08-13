// takes the index value of the last number or the .length of the number minus 1, prints index minus 1 for each turn of the loop
// can also add letters to an empty string using +

var str = "hello"
for (var i = str.length; i >= 0; i -= 1) {
  console.log(str[i]);
}

var str = "salutations!"



// At first I contained this while loop inside of a function and assigned that entire function to a variable like below. And then ran var nameAssignment = str.reverse. But that threw an error.

// Instead I assigned a variable OUTSIDE of the function that was an empty string. Then to shove indiviual letter into that string I just added it with the var name += and then the operation that iterated over each letter in the original str string that was being reversed. Noted that I had to do the variable assignment step inside of the same step/line of code in the method that changed each letter. Otherwise I end up only assigning the last letter of the loop because it would reassign again and again each time the loop is run.

// console for debug only

var backwards = ''

function reverse() {
  for (var i = str.length; i >= 0; i -= 1) {
   backwards += str[i];
  }
  return backwards
}

reverse()
console.log(backwards)


if (1 === 1) {
  reverse()
console.log(backwards)
}
