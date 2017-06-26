
applicant_name = #{name}
  puts "what is your name"
  name = gets.chomp

def age_correct
  puts "what is your age"
  age = gets.chomp.to_i
  puts "what year were you born"
  birth_year = gets.chomp.to_i
if 2017-birth_year == age
  age_correct = TRUE
  puts "birth year approved"
else
  age_correct = FALSE
  puts "birth year incorrect"

end

end
age_correct

def garlic_OK
likes_garlic = #{garlic_preference}
  puts "Would you like garlic bread? y/n"
  garlic_preference = gets.chomp
if garlic_preference == "y"
  garlic_OK = TRUE
else
  garlic_OK = FALSE
  puts "does not like garlic"

end
end
garlic_OK

def insurance_need
health_insurance = #{insurance_preference}
  puts "would you like health insurance y/n"
  insurance_preference = gets.chomp
if insurance_preference == "y"
  insurance_need = TRUE
else
  insurance_need = FALSE
  puts "does not need insurance"

end

end
insurance_need

#if (garlic_OK || insurance_need) && age_correct
  #puts "probably not a vampire"
#end

# this first conditional code runs properly but loops back to garlic question,  as though the conditional statement is calling the method, (it did not do this when the true conditions were actually written out as having a value of = True)

# The following represents the rest of the conditional statements as I would have written them:

#elsif
#(garlic_OK=FALSE || insurance_need=FALSE) && age_correct=FALSE
  #puts "probably a vampire"
  #elsif
  #age_correct = FALSE && garlic_OK = FALSE && insurance_need = FALSE
  #puts "Almost certainly a vampire"
  #elsif
  #name == "Drake Cula" || name = "Tu Fang"
  #puts "Definitely a vampire"
#end
#
