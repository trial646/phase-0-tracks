original_password = "abc"

def encryption(original_password)
  original_password[0] = original_password[0].next
  original_password[1] = original_password[1].next
  original_password[2] = original_password[2].next
  original_password[0] + original_password[1] + original_password[2]
end

encryption(original_password)

#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.
# define a method advance_letter with a variable called alphabet
# give the method an expression that makes the 'alphabet variable' go to the next letter
# call the method advance_one_letter with the alphabet in chronological order as arguement for variable 'alphabet'
# make a variable that is defined as the alphabet in order


#A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.