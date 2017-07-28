# In initialize have number of attempts (num_attempts) start at zero -
# In initialize, have *an empty array assigned to an index variable for guess_word and for secret_word* -
# In initialize conditional is_over = false -

# Create an instance of the class Guessing_game -
#Prompt user 1 to enter a secret word -
#Assign the secret word entered to a variable named secret_word -
#take the secret word inputted and make it be the value of the secret word variable secret_word = gets chomp -
#convert secret_word into an array of letters (if experiment above did not work) -
#(IF NOT ALREADY CREATED ON INITIALIZATION, create an empty array called
#guess_word) -
# shovel the same number of spaces into guess_word_arr as there are letters in secret_word so that it is the same length as secret word -
# make guess_word_arr be an array of strings with one character "_" that has secret_word.length number of elements -



# Prompt user 2 to input a guess of what letters might be in the word and include an interpolation print out of guess_word_arr (ie print the string of '---' in the prompt).
# User2 tries to guess word by inputting letters that the word might contain
# If that guess matches letters contained in the word, return the matching letters(.include?)
# guess_word will have elements added to it at specific index values that will replace the blank space currently there.
#The replacement letter will replace the dash that matches its index number in guess_word_arr . Is there an array method for this?
# Find a method that Replaces the blank spaces at the matching index value of correctly guessed inputted letters with the correctly guessed letter

#Conditionals

# If the guess letter is not in the word, returns a "try again message" -
# For every guess, the program records the guess (this is the same skill as 5 assess where I needed to keep/print a record of everything that was entered - see repl spy name letters )
# Each time a letter is inputed the count advances by 1 (=+ 1) unless the letter has already been guessed.
# if the letter guessed matches a previous guess (repeat_guess = true, for ex) prints "you have already guessed this letter, try again"
# if the guess input is repeated the loop does not add 1 to the counter
# loops through the guess prompt secret_word.lenth number of times
# guess_count == secret_word.length , is_over = true && secret_word != guessed word puts "you lose boo hoo"
# Or if secret_word == guessed word , is over = true and
# puts "you win champ"

# After all other steps run, go back and make sure that the secret word does not actually print to the console so that player 2 does not see what the word is
