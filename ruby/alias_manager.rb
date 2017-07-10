#letters = "hello world".split(' ')
#letters.class
#letters.map! { |letter| letter.next }
#letters
#new_string = letters.join('')

#"hello world".split(' ')

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



=begin
find all vowel letters and iterate through them changing them to the + 1 index value of "aeiou". Similar to decrypt in 4.6 . Create a string of all consonants create and else statement for the consonants that iterates through changing each letter to the next consonant.

Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end
