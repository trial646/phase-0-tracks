# list of program objectives
#  allow user to name hamster (method 1) - string
# allow user to rename hamster (method 2) - string
# record hamster noise level of squeaks ranked by number 1-10 - integer
# record hamster fur color - string
# record hamster age - integer
# answer whether good candidate for adoption - boolean?

def hamster_info
  puts "what is the hamsters name?"
  hamster_name = gets.chomp
  puts "the hamsters name is #{hamster_name}"

  puts "rank the hamsters noise level from 1-10"
  hamster_volume = gets.chomp.to_i
  puts "hamsters volume is #{hamster_volume}"

  puts "what is the hamsters fur color?"
  hamster_color = gets.chomp
  puts "the hamsters fur color is #{hamster_color}"

  puts "what is the hamsters age"
  hamster_age = nil
  puts "the hamsters age is #{hamster_age}"
#else
  #gets.chomp = ""
  #hamster_age = NIL
  #puts "we are not sure so #{hamster_age}"

  puts "is the hamster a good candidate for adoption y/n"
  hamster_good = gets.chomp
  if hamster_good == "y"
    puts "is hamster a good candidate for adoption? yes"
  elsif
    hamster_good = "n"
    puts "is hamster a good candidate for adoption? no"

  end

end

hamster_info