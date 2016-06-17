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

i = "0"

if age.to_i == (Time.now.year - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
  i++
  
elsif age.to_i != (Time.now.year - birth_year.to_i) && (garlic_bread == "no" || insurance == "no")
  i++
  
elsif age.to_i != (Time.now.year - birth_year.to_i) && garlic_bread == "no" && insurance == "no"
  i++
  
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "vampire"
else
  puts "Results inconclusive."
end

puts i

#if age.to_i == (Time.now.year - birth_year.to_i)
#  i++

# Match the following conditions in the order they're listed. 
# Your program should base its result on the latest condition matched, 
# not the first condition matched. 
# In other words, it's not a "only one condition will apply" sort of scenario. 
# This may mean repeatedly updating a variable as each condition is checked, 
# so that the variable always contains the most precise result.


    



    
    
    