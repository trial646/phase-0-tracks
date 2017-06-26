
applicant_name = #{name}
  puts "what is your name"
  name = gets.chomp

def applicant_age
  puts "what is your age"
  age = gets.chomp.to_i
  puts "what year were you born"
  birth_year = gets.chomp.to_i
  if 2017-birth_year == age
  puts "birth year approved"
else
  puts "vampire suspect"
end

end
applicant_age

likes_garlic = #{garlic_preference}
  puts "Would you like garlic bread? y/n"
  garlic_preference = gets.chomp

health_insurance = #{insurance_preference}
  puts "would you like health insurance"
  insurance_preference = gets.chomp

  #age right, willing to eat garlic bread OR sign up for insurance, result is “Probably not a vampire.”
  #If age wrong, AND hates garlic bread OR waives insurance, the result is “Probably a vampire.”
  #If age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  #Print the result at the end of the survey.