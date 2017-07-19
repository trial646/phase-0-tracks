module Shout
  # we'll put some methods here soon, but this code is fine for now!
end

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!?!?" + ":D"
  end


end

Shout::yell_happily("what")