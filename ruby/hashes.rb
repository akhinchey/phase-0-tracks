# Ask user for info
# use gets chomp to store their response as the value in a certain key in the hash
# have hash already set up with keys and empty values
# puts user information out as list after all questions have been answered
# ask user if they would like to modify answers
# if yes then ask them to enter in the key whose value to modify
# if no then skip
# print final updated version of hash


client_hash = {
  name: nil,
  age: nil,
  children: nil,
  decor_theme: nil,
  likes_yellow: nil
}

puts "Name:"
client_hash[:name] = gets.chomp

puts "Age:"
client_hash[:age] = gets.chomp.to_i

puts "Number of children:"
client_hash[:children] = gets.chomp.to_i

puts "Decor theme:"
client_hash[:decor_theme] = gets.chomp

puts "Do you like the color yellow? Please type 'yes' or 'no':"
likes_yellow = gets.chomp
  if likes_yellow == "yes"
    client_hash[:likes_yellow] = TRUE
  elsif likes_yellow == "no"
    client_hash[:likes_yellow] = false 
  else
    client_hash[:likes_yellow] = nil
  end

puts client_hash

puts "Please enter the key of a value you would like to update (or type 'none' if you are happy with your results)"
update = gets.chomp

  if update == "none"
    puts client_hash
  else
    puts "Please enter your updated value:"
    updated_value = gets.chomp
    update = update.to_sym
      if update == :age
        client_hash[:age] = updated_value.to_i
      elsif update == :children
        client_hash[:children] = updated_value.to_i
      elsif update == :likes_yellow
        if updated_value == "yes"
          client_hash[:likes_yellow] = TRUE
          elsif updated_value == "no"
          client_hash[:likes_yellow] = false
        else
          client_hash[:likes_yellow] = nil
        end
      else
        client_hash[update] = updated_value
      end
    puts client_hash
  end