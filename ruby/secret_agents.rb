=begin
# create a method, what will my method take in? encrypt method will take in a string "abc"

(create a string with the letters of the alphabet)

I am looking to iterate through each letter of string without .each. I can use a loop (like with the counter)

# use += 1 to advance through the index values corresponding with the letters of the alphabet string
# apply a method that applies .next,  advancing the range of index values forward by one letter of the alphabet
output = each string character advanced forward by one letter
SCRATCH!
=end

=begin
New psuedo:
create a method that will take in a string like "abc". This will make the code block reusable
establish a starting index value named 'i' with a value of zero so we start on the first letter
create a while loop to run as many times as there are letters in the string or for number of runs to match string length
-one step: call .next on the index value of i. So if i is 0 and the sting is "abc", it will return be but if I dont assign that action to a variable it wont actually change the letter a. The b will just dissappear.
- so next step is to assign the "b" result to the spot in the string where it belongs, replacing a.
- repeat for every letter in the string

=end


encrypt = "abc"
 encrypt[1].next
index = 0
def encrypt(secret_password)

  while index < secret_password.length
    p new_letter = secret_password[index].next
    secret_password[index] = new_letter
    index += 1

  end
  secret_password
end

encrypt("abc")




=begin:
Decrypt pseudo *Reminder do not use .each
-Make a variable defined as the entire alphabet
- Make the password value also be the alphabet starting from "a" and ending anywhere up to z.
- figure out the index number in the alphabet that corresponds to the index letter of the password that we are operating on. So if the secret password has become bcd, the letter at index 0 of the secret password is at index 1 in the alphabet.
-write code that makes the current password letter, in this case b, become the letter in the -1 index position from the the matching letter of the alphabet. so if alphabet index 1 matches b, then subtract 1 from the index number to get to index value 0, or "a". Something like password[0] = alphabet[0 -=1]
-Replace the current password letter at index 0 of the password with the -1 of the corresponding index value in the alphabet.

I will need to figure out how to create a method withing a method, within the line of code, to complete this conversion step. This is not readily found in the tutorials, will need more research.
Will it help me to use the entire alphabet as the value for the methods variable? this way the default value of index number of the letter before it in the alphabet is index -1? And if I do this, how can I contain it so that it does not interfere with the += 1 loop iteration operation going on in the same method?
  *Is there a better attack than this approach, and if so, is there any other object type (not .each) that I have not used so far that I will need to complete this?

  Finally (regarding this solution) is it really the type of solution dbc had in mind, if it only works on passwords that have a value that is some variation on the alphabet starting from the letter "a"?
