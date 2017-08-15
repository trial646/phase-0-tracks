//RELEASE O

// create a function that takes an array as a parameter. Set up an iteration that goes through each element in the array by incrementing through its index values.-
//Measure the length of each object
//shove the number value of each length into a new array as a collection of integers each with the same index value as its matching array word
// two by two compare the integers in the newArray to find the largest integer in the array
// compare by making a conditional loop that says while array[i - 1] < array[i] , print [i].
// (the problem here is that the incrementer will stop as soon as it hits a number that is higher than the previous - even if later numbers down the pike might be bigger.)
// The biggest number needs something to be compared to in order for this function to work
// return the index value of the integer that is the largest
// enter keyword return to return

var arr = ["pickles", "apricots", "mushrooms"]
var printout = []

  var longestWords = function(list) {

    for (var i = 0; i < list.length; i+= 1) {
       (list[i].length > list[i+=1].length) //&& list[i+=2].length)
        biggerElement = list[i];
        (biggerElement > list[i+1]);
        biggestElement = biggerElement;
        (biggerElement < list[i+1]);
        biggestElement = list[i+1]
        return biggestElement

    }
  }
longestWords(arr)

var flowers = ["roses", "tulips","daisies"]
console.log(longestWords(flowers))

//RELEASE 1

// These both return true because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent.
// Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!

// split the first object's keys into an array. Then its values (#keys,#values)
// merge the two sets of arrays into one long array of keys and values ()
// repeat the process for the second object
// run a loop on the array
// if hash 1 [i] === hash 2[i] return hash 1 [i]

var toolKit = {"hammer": 3, "screwdriver": 2, "tape measure": 1}
var hardwareStore = {"sandpaper": 10, "wrenches": 7, "hammer": 2}
var toolkitArr = []
var hardwareStoreArr = []

var toolkitArr = Object.keys(toolKit)
toolkitArr.push(Object.values(toolKit))
toolkitArr1 = []

for (var i = 0; i < toolkitArr.length; i+= 1)
{
  toolkitArr1 = toolkitArr1.concat(toolkitArr[i])
}

console.log(toolkitArr1)
// ********

var hardwareStoreArr = Object.keys(hardwareStore)
hardwareStoreArr.push(Object.values(hardwareStore))
hardwareStoreArr1 = []

for (var i = 0; i < hardwareStoreArr.length; i+= 1)
{
  hardwareStoreArr1 = hardwareStoreArr1.concat(hardwareStoreArr[i])
}

console.log(hardwareStoreArr1)

function matchingItems() {
for (var i = 0; i < toolkitArr.length; i+= 1) {
  if (toolkitArr1[i] === hardwareStoreArr1[i]);
    return toolkitArr1[i]
}

}

console.log(matchingItems())

// 2 iterations - iterate through object 1, then look at its property (key), the first one.

//RELEASE 2

//RELEASE 2

function randomWord() {
  var str = ''
  var strArr = []
  var letters = "abcdefghijklmnopqrstuvwxyz"
  var length = Math.floor(Math.random() * 10)
  var newstr = ''
  for (var i = 0; i < length; i+= 1) {
  newstr = str += (letters.charAt(Math.floor(Math.random() * 10)))
  }
  strArr.push(newstr)
  console.log(strArr)
}

//randomWord()

function wordBox(int) {
  var wordArr = [];
  //var allArr = []
  {for (var i = 0; i < int; i+= 1)
  console.log(wordArr = randomWord());
  //console.log(wordArr[i] = newWord);
  //
}
  //allArr.concat(wordArr)

}

wordBox(4)


// we need something that generates random words
// define an empty string (which will soon contain your random word)
//define a variable that contains an assortment of letters reflecting the alphabet as list of characters that can go into your random string
//generate a random letter from the alphabet variable
//add that random letter to the empty string.
//repeat random letter generation and fill string in one letter at a time, random number (1 -10) of times


// Next: we need something that generates a random word n number of time and puts them in an array
// function takes input of n. it creates an array. It inserts n number of random words. it returns that array with the words in it.


// take the random array of words generator, print it, then run the longestWords function on them and print result

















//declare a function, arrLength as param which will take a number
//creates at array of arrLength number of empty strings: newArr = [<int number of strings here>]
//creates random collections of letters for the empty strings inside of newArr
//each word string should be of rand length
//each word should be no longer than 10 letters
// adds the words to the empty strings in the array (or adds the words to the array)
//returns the array
//OR
//creates rand words * arrLength number of times
//adds each of those words upon creation into an array

//****

//create a loop that does the following 10 times - generate a random array with the function above, print it, enter that array as a parameter in the longest word function from release 1, print the result

