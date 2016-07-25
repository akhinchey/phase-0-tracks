puts "Welcome, here is your current Christmas card list:"


list_loop = true

while list_loop == true

  puts "Would you like to update your list: y or n?"
  update_list = gets.chomp

  if update_list == "y"

    puts "How would you like to update:"
    puts "Type 'add' to add a new name."
    puts "Type 'update' to update an already existing name."
    puts "Type 'delete' to delete a name"

    update_choice = gets.chomp

    case update_choice

    when "add"
      puts "add"

    when "update"
      puts "update"
    when "delete"
      puts "delete"

    else
      puts "That is not valid input."
      
    end

  elsif update_list == "n"
    puts "Okay, you're all set!"
    list_loop = false
  else
    puts "That is not a valid input."
  end
end
      

    