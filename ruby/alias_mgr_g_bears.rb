#Release 0 Pseudo
#Take the first and last name and reverses the order
#Take the two words and separates the letters into individual strings
#makes a container for all of the individual letters in the spy name
#Compares each letter of the collection to a separate collection of containing the 5 vowels
#If the letter matches one of the vowels
  # prints the index value inside of the spy name of the vowel match letter (name_vowel)
  #it looks at (prints) the index value inside the 'aeiou series' of the matching vowel
  #it finds (prints) the index value of the next vowel in the aeiou series (vowel index plus 1)
  #it takes this vowel letter in the next vowel position (replacement_vowel) (at vowel index plus 1)
  #It pastes replacement_vowel into the word collection, replacing the original vowel in the original spy name index position where match was found with the replacement_vowel.

name = "Felicia Torres".split(' ').reverse
name2 = name.join
name_arr = name2.split('')
p name_arr
vowels = ["a","e","i","o","u"]

vowels.each_with_index do |vowel, index_position|
  if name_arr.include?(vowel)
   new_position = index_position + 1
   replacement_vowel = vowels[new_position]
   replacement_vowel
   vowels
 end
  # I want the following code to say: for the name array do the following: if the vowel array has of the name arrays letters, replace those letters in the name array with each of the replacement letters in turn.

  name_arr.each_with_index do |letter, letter_index|
    if letter.include?(vowel)



      name_vowels_index_arr = []
      name_vowels_index_arr << letter_index #<< replacement_vowel
      p letter_index
      #name_arr[letter_index] = replacement_vowel
      name_vowels_index_arr.each do |vowel_index_num|
      p name_arr[vowel_index_num] = replacement_vowel
      p name_arr
    end
  end
 end
end

  # I want to assign each of the replacement vowel letters to the index value of the spy letter vowels
  # (I need a find and replace function for the spy name)
  # The above code does appear to change the vowels to the next vowel but repeats the process twice and the second time returns nil in place of the vowels (why?)

# Release 0 - simpler version


def name_encrypt(spy_name)
  #p spy_name = "Felicia Torres"
   spy_name_split_words = spy_name.split(' ')
   spy_name_split_words
   spy_name_split_words.reverse!
   spy_name_split_words
   spy_name_split_words.join
   spy_name_letters = spy_name_split_words.join

  index = 0
    while spy_name_letters.length > index
    p spy_name_letters[index] = spy_name_letters[index].next!
    index += 1
  end
  puts spy_name_letters
end



#name_encrypt("Felicia Torres")

#loop do
  spy_name = #{spy_name}
  until spy_name == 'quit'
  puts "what name would you like to encrypt?"
  spy_name = gets.chomp
  p name_encrypt(spy_name)
  spy_name = [spy_name]

  if
  spy_name == ['quit']
  break
  exit

  end

end
puts "end program"
#end
#







