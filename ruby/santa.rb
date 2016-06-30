class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = [
      "Rudolph", 
      "Dasher", 
      "Dancer", 
      "Prancer", 
      "Vixen", 
      "Comet", 
      "Cupid", 
      "Donner", 
      "Blitzen"
    ]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

end

santas = []

example_genders = ["male", "female", "bigender", "male", "female"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "Indian"]

i = 0

while i < example_genders.length
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  i += 1
end

santas << Santa.new("female", "white")

puts santas[0]


sam = Santa.new("male", "white")
sam.get_mad_at("Rudolph")
sam.gender = "female"


sam.get_mad_at("Dancer")
sam.celebrate_birthday

puts "Santa's current age is #{sam.age}"
puts "Santa's ethnicity is #{sam.ethnicity}"
p sam



