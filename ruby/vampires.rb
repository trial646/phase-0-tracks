Applicant_count = #{number_of_applications}
  puts "How many employees will be processed"
  number_of_applications = gets.chomp.to_i

applicant_name = #{name}
  puts "what is your name"
  name = gets.chomp

age_stated = #{age}
  puts "what is your age"
  age = gets.chomp.to_i

birth_year = #{year_born}
  puts "what year were you born"
  year_born = gets.chomp.to_i
if 2017-year_born == birth_year
  age_correct = TRUE
  puts "birth year approved"
else
  age_correct = FALSE
  puts "birth year incorrect"

end



likes_garlic = #{garlic_preference}
  puts "Would you like garlic bread? y/n"
  garlic_preference = gets.chomp
if garlic_preference == "y"
  garlic_OK = TRUE
else
  garlic_OK = FALSE
  puts "does not like garlic"

end


health_insurance = #{insurance_preference}
  puts "would you like health insurance y/n"
  insurance_preference = gets.chomp
if insurance_preference == "y"
  insurance_need = TRUE
else
  insurance_need = FALSE
  puts "does not need insurance"
end



suspicious_allergies = #{allergies}
puts "do you have an allergies? Please list them by name and write done when completed."
allergies = gets.chomp

while allergies != "done"
  puts "do you have an allergies? Please list them by name and write done when completed."
  allergies = gets.chomp
end
  if garlic_OK || insurance_need && age_correct
  puts "probably not a vampire"


elsif
  garlic_OK=FALSE || insurance_need=FALSE && age_correct=FALSE
  puts "probably a vampire"
elsif
  age_correct = FALSE && garlic_OK = FALSE && insurance_need = FALSE
  puts "Almost certainly a vampire"
else
  name == "Drake Cula" || name = "Tu Fang"
  puts "Definitely a vampire"
end

Applicant_count = number_of_applications - 1

While
  Applicant_count < number_of_applications
  applicant_name =#{name}
end

#not sure what condition to name here / what and how to assign a value to the whole survey. Keep getting error message here: (repl):79: syntax error, unexpected keyword_end
