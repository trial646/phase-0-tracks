//RELEASE O

// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.

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
