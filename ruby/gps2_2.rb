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
