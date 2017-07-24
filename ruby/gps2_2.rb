# Goals: passing data between different methods and solidify how methods can interact with one another

# RELEASE 1
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Separate the individual grocery items into individual elements
  #
  #assign each element a quantity of 1 by *creating a structure* that pairs up each #item with its corresponding amount.
  #the structure will make each grocery item element into a key with the quantity #of 1 as the value for each of the keys.
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: the name we have given to the structure that contains the list, item names, and optional quantities
# steps: push a new element (both key and value) onto the list
# output: updated list that includes this newest element

# Method to remove an item from the list
# input: name and/or location of the item you want to remove
# steps: point to that element and tell the list to remove it
# output:updated list that excludes the deleted element

# Method to update the quantity of an item
# input: name the key that you want to change the value for
# steps: enter the new value that will replace the existing value
# output: updated list showing the new value for that key instead of the old one

# Method to print a list and make it look pretty
# input: list item name and quantity
# steps: change the way the list displays by making the item and quantity show up side by side and the pairs read down the page as one long list rather than clustered like a paragraph
# output: same grocery list reading from top to bottom so easy on the eyes

# Method to create a list
groceries = {}
ingredients = "eggs bacon milk cereal juice".split
#p groceries
p ingredients

ingredients.map do |arr_items|
  groceries.store(arr_items, 1)
end

p groceries

# Method to add an item to a list

added_item = "cheese"
groceries[added_item] = 1
p groceries

# Method to remove an item from the list

removed_item = "eggs"
groceries.delete(removed_item)
p groceries

# Method to update the quantity of an item
update_item = "bacon"
groceries[update_item] = 3
p groceries

# Method to print a list and make it look pretty
groceries.each do |key_and_value|
  p key_and_value
end

#RELEASE 2
# Create a new list.
# Add the following items to your list.
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list.
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?
# If any of your methods didn't work as expected, go back and fix them. Make sure the code works as expected before moving on.

second_list = {}

products = ["lemonade", "tomatoes", "onions", "ice_cream"]
item_quantities = ["2", "3", "1", "4"]

products.each do |product|
   second_list.store(product, 1)
   end

p second_list

# item_quantities.each do |quantity|
#   second_list.store(products, quantity)
# end

# p second_list
# I cound not get a dry iterative way of assigning the quantities as values in the hash to run

change_quantity = "lemonade"
second_list[change_quantity] = 2
change_quantity = "tomatoes"
second_list[change_quantity] = 3
change_quantity = "ice_cream"
second_list[change_quantity] = 4
p second_list

change_quantity = "ice_cream"
second_list[change_quantity] = 1
p second_list


products.delete("lemonade")
p products

# RELEASE 3 REFACTOR

# Created iterative solution to updating quantity!
second_list = {}

products = ["lemonade", "tomatoes", "onions", "ice_cream"]
item_quantities = ["2", "3", "1", "4"]

arr_of_foods = products.zip(item_quantities)


arr_of_foods.each do |pair_item1, pair_item2|
second_list.store(pair_item1, pair_item2)
end

p second_list

# RELEASE 4
# What did you learn about pseudocode from working on this challenge?
# At first because gps was timed I was worried that the pseudo code was a becoming a time suck and that thinking about it too hard meant I was doing something wrong. Now I see that the more I can separate out the steps in pseudo code, the more I can actually see what I am doing, especially when I get lost and need a way 'back in' to working on the problem. It re-orients my mind and keeps my thinking methodical.

# What are the tradeoffs of using arrays and hashes for this challenge?
# For a long time I was unsure of how to find an iterative way to update both key and value portion of a hash. Also when using a hash, it seems like it helps to have a same number of keys and values, else you would need to ALSO add on a default value that works whenever there is no pair and that could get complicated. Whereas with arrays if the pairing of the item types need to be correct, with out the 'key' designation of the second item in the pairing, its seems like it could get confusing which quantity number went with which food item. Again it works fine if the have the exact same number of items but I am unsure of how that would work if they were not as symetrical.

# What does a method return?
# the value that was returned from the last evaluated statement.

# What kind of things can you pass into methods as arguments?
#strings and numbers. I am uncertain of whether/how you can pass an actually variable or a data structure in as an arguement. Will need to experiment with that further.

# How can you pass information between methods?
# not 100% clear on what this question is asking but here's what I think. Normally variable values and anything else that is defined inside a method is only recogized in the context of that method. If you wanted another, outside method to interact with that data you could assign a variable to the result of that method and then use that output variable in a different context?

# What concepts were solidified in this challenge, and what concepts are still confusing?

# I could use more context for what is meant by passing info between methods since this is an important idea.
