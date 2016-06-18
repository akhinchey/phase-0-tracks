puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our cafeteria serves garlic bread. Should we order you some?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

i = 0

if age.to_i == (Time.now.year - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
  i = 1
  
elsif age.to_i != (Time.now.year - birth_year.to_i) && (garlic_bread == "no" && insurance == "yes")
  i = 2
  
elsif age.to_i != (Time.now.year - birth_year.to_i) && (garlic_bread == "yes" && insurance == "no")
  i = 2
  
elsif age.to_i != (Time.now.year - birth_year.to_i) && (garlic_bread == "no" && insurance == "no")
  i = 3
end

if name === "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire"
else
  if i == 1
    puts "Probably not a vampire"
    elsif i == 2
    puts "Probably is a vampire"
    elsif i == 3
    puts "Almost certainly a vampire"
    elsif i == 0
    puts "results inconclusive"
  end
end



    
    
    