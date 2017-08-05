class Santa
  attr_reader :ethnicity
  attr_accessor :age, :reindeer_arr, :gender
  # this is automatically creating methods that can be called with .syntax like any other method. Method returns the instance variable

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  end

  def reindeer_ranking
    @reindeer_arr = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def santa_age(age= 0)
    @age = age
    end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday(age= 0)
    @age = age + 1
  end

  # find the bad reindeers index position
  # push the bad_reindeer to the array.
  # delete the bad_reindeer at the old index position (delete by index, not by reindeer name)

  def get_mad_at(bad_reindeer)
    @bad_reindeer = bad_reindeer
    remove_reindeer = reindeer_arr.index(bad_reindeer)
    reindeer_arr.push(bad_reindeer)
    reindeer_arr.delete_at(remove_reindeer)
    p reindeer_arr
  end





end

# Jeffrey = Santa.new
# Jeffrey.speak
# Jeffrey.eat_milk_and_cookies("mint")

santas = []
santa_genders = ["male", "female", "both", "neither", "they"]
santa_ethnicity = ["green", "blue", "purple", "orange", "purple"]

# santa_genders.length.times do |i|
#   santas << Santa.new(santa_genders[i], santa_ethnicity[i])
#   puts "this Santas gender is #{santa_genders[i]} and the ethnicity is #{santa_ethnicity[i]}"
# end

# p santas[0].celebrate_birthday
# p santas[0].class
# p santas[0].reindeer_ranking
# p santas[0].get_mad_at("Vixen")
# p santas[0].gender = "female"
# p santas[0].age
# p santas[0].ethnicity


# p santas[0]
# p santas.select {|santa_instance| santa_instance.ethnicity == "purple"}
#Santa.new("female","green")

many_santas = []
20.times do |i|
  many_santas << Santa.new(santa_genders.sample, santa_ethnicity.sample)
  p many_santas[i].gender
  p many_santas[i].ethnicity
  p many_santas[i].santa_age(rand(0..140))
end



#Create 50 santas at once using 50.times do and shoveling the santas into an empty data structure called many_santas. Initialize takes gender and ethnicity arguements but this time instead of iterating through the arguements .length.times (since in this case there are more santas than ethnicity and gender options in the arrays), we will call a method that will apply them randomly to the santa instance on initalization.
#Run Santa age on each item in the array with a number between 0 and 140 using randf
#Print each Santa and their attributes using the attr methods


