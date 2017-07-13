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

# Release 2 making our own class

  Hermione = Harry_Potter_Characters.new
  Hermione.instance_of?(Harry_Potter_Characters)

  Ron = Harry_Potter_Characters.new

  Ron.spell
  Hermione.sort("Griffendor")

=begin
index = 0
until index == 50
index = Harry_Potter_Characters.new

index += 1
end

=end

#do

  #student = 50.times.collect {|name| Harry_Potter_Characters.new(name) }
  #array = number of times to do it .times (built in method).collect (shoves result into an array) {Name of class.new making new class (number of times to do it)

#accounts = 100.times.collect { |i| eval("B#{i} = BankAccount.new(100)") }
# student = 50.times.collect { |i| eval("student#{i} = #{Harry_Potter_Characters.new(50)}") }

#Create loop that circles through creating instances - does it 50 times
#create the instances

# class instances do not have a built in iterative function. So to get them to iterate we might create a method that creates a class instance and then pushes it into an array. Then that array can count each time it has had a class added to it or just an element added to it (which in list case is a class)
