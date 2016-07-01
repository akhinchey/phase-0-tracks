# CAT 
# 
# Attributes:
# name
# age
# sex
# favorite toy
# 
# Behaviors:
# plays with toys
# yowls 
# takes naps
# grooms itself

class Cat

  def initialize(name, sex, favorite_toy)
    puts "initializing cat instance"
    @name = name
    @sex = sex
    @awake = true
    @age = 2
    @favorite_toy = favorite_toy
  end

  def yowl(num_of_yowls)
    num_of_yowls.times { puts "MEEOOOW!!!"}
  end

  def plays_with_toy(toy)
    puts "I like to play with #{toy}!"
  end

  def takes_nap
    puts "Do not bother me, I'm currently napping *ZZZZZ*"
    @awake = false
  end

  def wake_up
    puts "I'm awake now!!"
    @awake = true
  end



end