// takes the index value of the last number or the .length of the number minus 1, prints index minus 1 for each turn of the loop
// can also add letters to an empty string using +

var str = "hello"
for (var i = str.length; i >= 0; i -= 1) {
  console.log(str[i]);
}

var str = "salutations!"


// to assign the output to a variable will I need to somehow assign each individual letter to a string?
// Or contain this while loop inside of a function and assign that entire function to a variable like below? And then run var nameAssignment = str.reverse?

// how will I shove indiviual letter into one string? I do not want to  initialize it as a string
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




// for (var i = str.length; i >= 0; i -= 1) {
//   var backwards = console.log(str[i]);
// }


// console.log(backwards)

// if (1 == 1)
//   console.log(backwards)
