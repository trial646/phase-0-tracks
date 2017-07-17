class Santa

attr_reader :age, :ethnicity
attr_accessor :gender

def speak
  p "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
  p "That was a good #{cookie_type} cookie!"
end

def initialize(gender, ethnicity)

  #p  "Initializing Santa instance ..."
  @gender = gender

  @ethnicity = ethnicity

  #@reindeer_ranking = reindeer_ranking
  #the code does not recognize reindeer_ranking whether I define it inside or outside of the class. Why?

  #reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  age = 0
end

def celebrate_birthday(age)
  new_age = age + 1
  age = new_age
  p "Santa's age is now #{new_age}."
end

#celebrate_birthday(0)

def get_mad_at(name)
  p "moves #{@name} to last place"
  #name[8]
  #p reindeer_ranking
  # Do we need to change the actual index value of this reindeer?
end

#get_mad_at("Vixen")

# #Setter
# def gender= new_gender
#   @gender = new_gender
#   p new_gender
# end

# #Getter
# def age
#   @age
# end

# def ethnicity
#   @ethnicity
# end
# end

pudgy = Santa.new("man", "gray")
 p pudgy.speak
 p pudgy.eat_milk_and_cookies("cinnamon")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
#p i
santas << Santa.new(example_genders [i], example_ethnicities [i])
 end

#reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

pudgy.celebrate_birthday(0)
pudgy.get_mad_at("Vixen")
pudgy.gender = "female"

p pudgy.ethnicity
p pudgy.age
# age did not run even though I tried to assign age to new_age in line 27
end
