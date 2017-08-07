#GPS 2.2 Golden Bears

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # SPLIT the grocery items into separate elements in a data structure
  # Change the data structure to be organized as each grocery item paired up with its quantity
  # pair each grocery item with a corresponding VALUE that defaults to 1
  # print the data structure containing the list to the console ITERATING through each element so that it prints out one item at a time and is easier for user to read
# output: hash, grocery item as KEY, quantity 1 as VALUE

# Method to add an item to a list
# input: list, item name, and optional quantity (parameters)
# steps: add new element to the list mapping list to the data structures name, the item to the key and the optional quantity to the value. The quantity parameter can default to 1 so that method runs even if no quantity is entered).
# output: the data structure that now includes the element we just added

# Method to remove an item from the list
# input: key of the element we want to remove from the list
# steps: states the name of the list, tells the list to DELETE and item, names the key (item name) to remove from the list
# output: the data structure that now excludes the element we just removed

# Method to update the quantity of an item
# input: the updated item quantity (should this still be defaulted to 1? Or can this start with any value? will find out when I code it)
# steps: states the name of the list and indicates item or its index value then REASSIGNS that keys value to the new quantity
# output: the data structure with a change in VALUE to the element we selected

# Method to print a list and make it look pretty
# input: hash name
# steps: ITERATES over the hash printing each element in turn
# output:data structure printed out to the console in easy to read list format

# First, you'll want to determine which data structure you should use for your grocery list based on these requirements. Does an array or a hash make the most sense and why?

# When breaking down the problem into pseudocode, consider what is passed in to and what is returned from each method. (HINT: methods can accept other methods as arguments or be called within other methods.)

# Remember to keep your pseudocode in plain English and write it so that it's easy to translate to your initial solution. Identify the input and output. Your pseudocode should also avoid using language-specific words, include proper indentation, and capitalize keywords like IF, WHILE, etc. *I did not understand the expectation of indentation in pseudo nor other than control flow condition words, which words should be capitalized. ALSO where are we passing a method as arguement (when passing a block?) and calling a method within other methods?*

#*********
#RELEASE 1 - first pass

# Method to create a list


# def make_list(items_str)
# grocery_arr = items_str.split

# grocery_hash = {}
#   p grocery_hash =  grocery_arr.map do |arr_items| grocery_hash.store(arr_item, 1)
#   end
# #p grocery_hash
# end

# ingredients.map do |arr_items|
#   groceries.store(arr_items, 1)
# end
# My first attempt to convert an array into a hash using iteration to assign the array items to be hash keys with a default value of one was totally garbled code. I acheived the above with help from research but really I am not getting the peices of the puzzle to fit together when trying to combine the #store hash method with the #map array method and manage the variable assignments and the hash creation all at once.
# def make_list(items_str)
# grocery_arr = items_str.split

# grocery_hash = {}
#   p grocery_hash =  grocery_arr.map do |arr_items| grocery_hash.store(arr_item, 1)
#   end
# end
#make_list("apple grapes oranges")
#This returns #<Enumerator: ["apple", "grapes", "oranges"]:map> which I dont understand


#RELEASE 1 - Second pass
# Method to create a list

def make_list(list_str)
groceries = {}
ingredients = list_str.split
#p groceries
p ingredients

ingredients.map do |arr_items|
  groceries.store(arr_items, 1)
end
p groceries

end

#make_list("eggs rice milk cereal")

# # Method to add an item to a list

def add_item(new_item)
groceries = make_list("eggs rice milk cereal")
groceries[new_item] = 1
p groceries
end

#groceries = add_item("cheese")

# Method to remove an item from the list

def remove_item(removed_item)
groceries = add_item("cheese")
#removed_item = "eggs"
groceries.delete(removed_item)
p groceries
end

#groceries = remove_item("eggs")

# Method to update the quantity of an item
def update_item(updated_item)
#update_item = "bacon"
groceries = remove_item("eggs")
groceries[updated_item] = 3
p groceries
end

#groceries = update_item("bacon")

# Method to print a list and make it look pretty
def print_groceries
groceries = update_item("bacon")
groceries.each do |key_and_value|
  p key_and_value
end
end

print_groceries

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


