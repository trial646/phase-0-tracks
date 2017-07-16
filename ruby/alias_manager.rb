spy_name = "Felicia Torres"

def name_encrypt(spy_name)

   spy_name_split_words = spy_name.split(' ')
   spy_name_split_words
   spy_name_split_words.reverse!
   spy_name_split_words
   spy_name_split_words.join
   spy_name_letters = spy_name_split_words.join


 end

p name_encrypt(spy_name)

spy_name_letters = name_encrypt(spy_name)


aeiou = "aeiou".split('')
p aeiou

# spy_name_letters do |name|
#   name.include?(aeiou)
# end

#p spy_name_letters.include?(aeiou) wont run

# either use .any here or make a loop that goes through each letter and asks spy_name_letters if it includes that loop item(vowel)

#name the object you want to search
#choose a method to use to search that object
#declare the object with .include at the end of it
#pass in a string as a parameter - can not be a variable must be the string itself
#you may need to pass another loop in as a parameter to get this to work
new_name = ""
spy_name_letters.each_char do |name_letter|
   if aeiou.include? name_letter
     p name_letter
     #now that we know the letters that match we can ask for their index values so that we can issue a command for those index values
     #p name_letter.index  returns error wrong number of arguments (given 0, expected 1..2)
     current_vowel_index = aeiou.index(name_letter)
     p current_vowel_index
     next_vowel_index = current_vowel_index + 1
     p next_vowel_index
     next_vowel = aeiou[next_vowel_index]
     p next_vowel
     new_name += next_vowel
     #this prints 3 after "o" but I thought 'o' was at index 1?

    # aeiou.index(name_letter) + 1
     #how do I reassign the relevant index numbers

   else
     new_name += name_letter


   end

   p new_name
 end

# how can I compare string (spy_name_letters) to array (aeiou) and return only the ones that overlap/ appear in both objects ?