# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
# extinct_animals.each do |animal, year|
#   p "#{animal} - #{year}"
#   p "*"
#   end



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
# #delete_if works but does not use #each
  # extinct_animals.delete_if {|animal, year| year > 2000}
  #   p extinct_animals

#solution using #each - iterate through the values and return the index number for values greater than 2000,  remove a key from the hash at those index values


# extinct_animals.each do |animal, year| #would we still have key and value for param if #keys called?
#   if  year > 2000
#     p index
#   end
# end

#nope. There is a simpler solution in fewer steps:
extinct_animals.each do |animal, year|
  if year > 2000
    extinct_animals.delete(animal)
    p extinct_animals
  end
end







# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
#
# extinct_animals.each do |animal, year|
#   year = year - 3
#   new_hash = {animal => year}
#   extinct_animals.update(new_hash)
#   # new hash has to run inside of the method in which it was created, cant be read outside of it
#  end
#  p extinct_animals #.update(new_hash)

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")

# is_extinct? method:
# what built in method will help it look for condition? equivalet to .include
#searches each item in the hash to see if it contains/includes the given value
#returns whether that condition is true or false
#What params will method take? Will we need to define the varibles of those params? No they will be defined by the arguement.

#Option a - just run extinct_animals.include? on each animal I want to search

#Option b - build a method from scratch. Is the purpose of this (apart from the exercise asking it of us) to make the command more easily reusable throughout the code? There are a number of purposes, one is to keep from clogging up the global environment with lines of code that you do not want to run until/unless you execute them. You should not use the global environment to do what your driver code is supposed to do, which is to test run the code and try it out in different use cases according to what the question is asking of us. Second, when code is written in the global scope (ie outside of a method definition but not in the driver code), if you change any aspect of the code or any condition, you would have to rewrite the code from scratch.

# def is_extinct?(hash_name, search_animal)
# p hash_name.each do |key, value|
#   if key == search_animal
#   p "true"
#   end
# end
# end

#is_extinct?(extinct_animals, "Dodo")
# This returns the following. why? What does enumerator mean in this context?
#<Enumerator: {"Passenger Pigeon"=>1914, "Tasmanian Tiger"=>1936, "Eastern Hare Wallaby"=>1890, "Dodo"=>1662, "Pyrenean Ibex"=>2000, "Laysan Crake"=>1923}:each>

#Option c

def is_extinct?(hash_name, search_animal)
  hash_name.each do |key, value|
    if key == search_animal
    p "true"
  # else
  #   p "false"
    end
  end
end

is_extinct?(extinct_animals, "Andean Cat")

#false returns 6 times, one for instance iteration that evaluates to false. How do I get it to just return false once if the condition is false for everything in the statement? Repeated attempts include comments on 129, 130

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

#p extinct_animals.shift("Passenger Pigeon")

#Could #shift be used to remove any item other than the first item of the hash
