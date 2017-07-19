# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
# end

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!?!?" + ":D"
#   end


# end

# Shout::yell_happily("what")

module Shout

    def yell_angrily(words)
      words + "!!!" + " :("
    end



    def yell_happily(words)
    words + "!?!?" + ":D"
  end

end

class Kid
  include Shout
end

class Teacher
  include Shout
end

kid = Kid.new
p kid.yell_angrily("boolean")
p kid.yell_happily("party time")

teacher = Teacher.new
p teacher.yell_happily("mainframe")
p teacher.yell_angrily("error message")


