module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts words + "!!!" + " :)"
  end
end

# puts Shout.yell_angrily("What the heck")

# puts Shout.yell_happily("Hello world")

class Umpire
  include Shout
end

class Policeman
  include Shout
end


steve = Umpire.new
steve.yell_angrily("You're out")

bob = Policeman.new
bob.yell_happily("Have a good day")