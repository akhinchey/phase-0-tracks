# Note: we worked on this challenge in CoderPad, and so there's no git commit history :(

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num)
    num.times { puts "Woof!" }
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    puts human_years * 7
  end
  
  def play_dead
    puts "*plays dead*"
  end
  
  def initialize
    puts "initializing puppy instance"
  end

end


fido = Puppy.new
  # def initialize

fido.fetch("ball")

fido.speak(2)

fido.roll_over

fido.dog_years(5)
  
fido.play_dead

spot = Puppy.new



class Kitten
  
  def initialize
    puts "initializing kitten instance"
  end
  
  def chase_toy
    puts "chasing toy!"
  end
  
  def meow(num)
    num.times { puts "Meow!" }
  end
  
end

fluffy = Kitten.new

fluffy.chase_toy

fluffy.meow(3)



i = 1
kitten_arr = []
 while i <= 10
   kitten_arr.push(Kitten.new)
   i += 1
 end

puts kitten_arr

kitten_arr.each do |kitten|
  kitten.chase_toy
  kitten.meow(2)
end

