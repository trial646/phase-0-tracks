class Puppy
  def initialize
    puts "Inializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof " * int
  end

  def roll_over
    puts "Roll Over"
  end

  def dog_years(human_years_num)
    puts human_years_num * 7
  end

  def sic(attack_object)
    puts "sic #{attack_object}"
  end

end

sparky = Puppy.new
sparky.fetch("ball")
sparky.speak(4)
sparky.roll_over
sparky.dog_years(3)
sparky.sic("chew toy")

class Lunch
  def initialize
    puts "Serving up new lunch instance ..."
  end

  def add_protein(ingredient)
    puts "adding #{ingredient} to your salad"
  end

  def add_dressing(dressing_type, num_spoonfuls)
    puts "adding #{num_spoonfuls} tablespoons of #{dressing_type} dressing to your salad"
  end
end

Cobb_salad = Lunch.new
i = 0
lunch_box = []
while i < 49
  lunch_box << Lunch.new
  i += 1
end
#p lunch_box[0].instance_of?(Lunch)

lunch_box.each do |salad|
  salad.add_protein("bacon")
  salad.add_dressing("Blue Cheese", 1)
end




