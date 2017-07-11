=begin:
Create hash with key value pairs for: client name age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).
use the :key name format rather than a string unless you run into a good reason to do otherwise
  - print a series of questions prompting for the answers to each key value pair in the hash
  then print the hash value right afterward

- Convert any user input to the appropriate data type.
- Print the hash back out to the screen when the designer has answered all of the questions.
- Print "Would you like to update a key? If so enter key name and update. If not, type 'none'" - Giving the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes!
- Make the conditional that unless they put "none" (in which case you move on) allow them to enter "decor_theme" (for example), then ask them for the new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
=end

p "What is client name?"
name_value = gets.chomp
p "Client name is #{name_value}"

p "How many children do you have"
children_number = gets.chomp.to_i
p "Number of children is #{children_number}"

p "What is the decor_theme?"
theme_name = gets.chomp
p "The theme name is #{theme_name}"

p "Do you like wallpaper? y/n"
wall_preference = gets.chomp
p "Wall paper preference: #{wall_preference}"
  if wall_preference == "yes"
    wall_preference = true
  else
    wall_preference = false
  end

p "Would you like to update any field? If so, enter field name here. Otherwise write 'none'"
update_field = gets.chomp
  if update_field =="none"
    p "Form completed"
  elsif
    update_field == "name_value"
    p "What is client name?"
    name_value = gets.chomp
    #p "Client name is #{name_value}"
  elsif
    update_field == "children_number"
    p "How many children do you have"
    children_number = gets.chomp.to_i
    #p "Number of children is #{children_number}"
  elsif
    update_field == "theme_name"
    p "What is the decor_theme?"
    theme_name = gets.chomp
    #p "The theme name is #{theme_name}"
  else
    update_field == "wall_preference"
    p "Do you like wallpaper? y/n"
  wall_preference = gets.chomp
  p "Wall paper preference: #{wall_preference}"
  if wall_preference == "yes"
    wall_preference = true
  else
    wall_preference = false
  end
  end


designer_hash = {
  name: name_value,
  number_of_children: children_number,
  decor_theme: theme_name,
  likes_wallpaper: wall_preference
}

puts designer_hash

#.intern changes string to symbol

abort("end of program")
