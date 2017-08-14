var colors = ["blue", "red", "green", "yellow"]
var horse_names = ["Ed", "Bubbles", "Godfather", "Katy Perry"]
colors.push("orange")
horse_names.push("Bucky")

console.log(colors)
console.log(horse_names)


// RELEASE 1
var colors = ["blue", "red", "green", "yellow"]
var horse_names = ["Ed", "Bubbles", "Godfather", "Katy Perry"]
horses = {};
for (var i = 0; i < horse_names.length; i++ ) {
     {
    horses[horse_names[i]] = colors[i]
    }
}

console.log(horses)

//For this case I learned not to do a nested loop. The second loop kept reassigning all of the values in turn, and so the final value is the only one that was actually inputted into the data structure in this case making all horses 'yellow'.
// Instead just had one loop and used the same matching index value to determine what property AND what value was being attached to the horses object.

// RELEASE 2

// write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(type, color) {
 this.type = type
 this.color = color
 this.drive = function() {console.log("Vrooom!");};
}
 var createdCar = new Car('van','red')
 console.log(createdCar)
 console.log(createdCar.drive())

 var nextCar = new Car ('scooter', 'black')
 console.log(nextCar)


