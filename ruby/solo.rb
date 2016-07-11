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

  attr_reader :name, :sex, :age
  attr_accessor :toy 

  def initialize(name, sex, toy)
    @name = name
    @sex = sex
    @awake = true
    @age = 2
    @toy = toy
    puts "initializing cat instance"
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

 cats = []
 
 create_cats = "yes"
 
 puts "Welcome to Create-A-Cat!!!"

 while create_cats == "yes"
 
 puts "Enter your cat name:"
 cat_name = gets.chomp
 
 puts "enter sex:"
 cat_sex = gets.chomp
 
 puts "enter toy:"
 cat_toy = gets.chomp
 
 cats << Cat.new(cat_name, cat_sex, cat_toy)
 
 
   puts "Would you like to add another cat? Type 'yes' or 'no':"
   create_cats = gets.chomp
 
     while create_cats != "yes" && create_cats != "no"
       puts "That is not valid input. Please type 'yes' or 'no':"
       create_cats = gets.chomp
     end

  if create_cats == "no"
  cats.each do |cat|
    puts "Name: #{cat.name}"
    puts "Default age: #{cat.age}"
    puts "Sex: #{cat.sex}"
    puts "Favorite toy: #{cat.toy}"
  end

  end


 end




