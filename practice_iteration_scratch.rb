# letter_string = "abcde"
# letters = letter_string.split('')
# p letters
# new_letters = []
# p new_letters

# puts "original data:"
# #iterate through the array with .each
# letters.each do |letter|
#   new_letters << letter.next
#   end

# puts "after .each calls:"
# p letters
# p new_letters

letter_string = "abcde"
new_letters = letter_string.split('')
p new_letters

puts "original data:"
#iterate through the array with .each
modified_letters = new_letters.map do |letter|
  puts letter
  letter.next

  end

puts "after .map calls:"
p new_letters
p modified_letters


# def say_hello
#   puts "why hello there "
#   yield("Steve", "Tiahna")
# end

# say_hello {|x, y| puts "Great to see you #{x} and #{y}"}

# numbers = {1=> "one", 2=> "two", 3=> "three"}
# #iterate through the hash with .each

# numbers.each do |integer, word| puts "the key is the #{integer} and the value is the #{word}"
#   end









