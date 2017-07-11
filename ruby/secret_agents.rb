=begin An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.
=end


def encrypt(password)
index = 0
#password = "swordfish"

while index < password.length
  puts password[index].next
  #puts password.next
  if password == "aa"
  then password == "a"
end
    #then p encrypt[index].next.chop
  index += 1
end
end

def decrypt(password)
index = 0
#password = "swordfish"
alphabet = "abcdefghijklmnopqrstuvwxyz"

while index < password.length
  p password[index] = alphabet[index - 1]
#so that index 0 of password2 = index -1 in alphabet
  index += 1
end
end

#p decrypt(encrypt("swordfish"))


p "Would you like to encrypt of decrypt"
encypt_or_decrypt = gets.chomp
p "What is the password?"
password = gets.chomp
if encypt_or_decrypt == "encrypt"
  then p encrypt(password)
else p decrypt(password)
end

abort

=begin



Print question - whether encrypt or decrypt
Get password
Write conditional if encrypt then p encrypt(password)
else p decrypt(password)
Conducts the requested operation, prints the result to the screen, and exits/abort
=end


=begin
I was unable to create a conditional that prevented encyrpt "zed" from returning two 'a''s in "aafe". I also was unable to prevent "z" from always returning as the first letter in decrypt due to using [index - 1] in the method definition which on the alphabet string always returns z. Lastly the release 5 program runs but the decrypt else conditional does not function the same way as when it was run on its own. It still leads with z but otherwise almost seems to be returning jumping three back to the prior three letters of the alphabet rather than moving each letter back by one letter.
=end
