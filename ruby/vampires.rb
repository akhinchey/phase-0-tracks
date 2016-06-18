puts "How many employees would you like to process:"
num_of_employees = gets.chomp.to_i

j = 0

while j < num_of_employees

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
  
vampire_status = false  
  
  allergy_final = "not done"
  allergy_list = "allergy list: \n"

  puts "Please list allergies one by one, hitting 'Enter' between each one. Type 'done' when you are done."


  while allergy_final == "not done"

  puts "Enter allergy"
  user_input = gets.chomp

    if user_input == "sunshine"
      vampire_status = true
      puts "Probably is a vampire"
      allergy_final = "done"
      elsif user_input == "done"
      puts allergy_list
      allergy_final = "done"
    else
      allergy_list += user_input + "\n"
    end
  end
  
  if vampire_status == false
    
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
      puts "Definitely a vampire \n"
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
    
  end

  j += 1

end

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



    
    
    