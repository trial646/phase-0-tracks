class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end
  # def initialize(name)
  #   name = Puppy.new
  # end




class Puppy


  def initialize(name)
    @name = name
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    puts "Woof!" * number
  end

  def roll_over
    puts "*Roll Over*"
  end

  def dog_years(human_years)
    dog = human_years * 7
    p "your dog age is #{dog}!"
  end

  def sit
    puts "*sit*"
  end

end

Puppy.new("bella")

fido = Puppy.new
fido.fetch("ball")

fido.speak(5)

fido.roll_over

fido.dog_years(2)

fido.sit

# Release 2 building our own class

class Harry_Potter_Characters

  def initialize
    puts "Welcome to Hogwarts"
  end

  def spell
    puts "Poof"
  end

  def sort(house)
    puts "Your house is #{house}"
  end


end

  Hermione = Harry_Potter_Characters.new
  Hermione.instance_of?(Harry_Potter_Characters)

  Ron = Harry_Potter_Characters.new

  Ron.spell
  Hermione.sort("Griffendor")


harry_instances = []
until harry_instances.length == 50
harry_instances << Harry_Potter_Characters.new

end



harry_instances.each do |student|
  student.spell
  student.sort("gryffendor")
end

=begin
index = 0
while harry_instances.length > 50
harry_instances << Harry_Potter_Characters.new
index += 1
end

end
=end
#make_characters


#first is the creation of the array
#the first element is and instance and is named after the index number

=begin
class instances do not have a built in iterative function. So to get them to iterate we might create a method that creates a class instance and then pushes it into an array. Then that array can count each time it has had a class added to it or just an element added to it (which in list case is a class).
So step 1 would to declare an index that is at 0. then a counter with index += 1. step 2 would be make an array. step 3 would be to create an element in that array that is a class and has a name that includes its index number.
=end