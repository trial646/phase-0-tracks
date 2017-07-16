class Santa
end

def speak
  p "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
  p "That was a good #{cookie_type} cookie!"
end

def initialize
  p  "Initializing Santa instance ..."
end

pudgy = Santa.new
p pudgy.speak
p pudgy.eat_milk_and_cookies





