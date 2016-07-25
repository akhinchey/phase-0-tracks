require 'sqlite3'

db = SQLite3::Database.new("christmas_list.db")
# db.execute("SELECT * FROM kittens")

#creating table
create_table_cmd = <<-SQL
 CREATE TABLE IF NOT EXISTS card_list(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

# Just me playing with selecting specific info from the database
# thing = db.execute("SELECT * FROM card_list").flatten[1]
# puts thing

puts "Welcome to your current Christmas card list:"

current_card_list = db.execute("SELECT * FROM card_list")

current_card_list.each do |person|
  puts "#{person[1]}: #{person[2]}"
end


list_loop = true

while list_loop == true

  puts "Would you like to update your list: y or n?"
  update_list = gets.chomp

  if update_list == "y"

    puts "How would you like to update:"
    puts "Type 'add' to add a new name."
    puts "Type 'update' to update an already existing address."
    puts "Type 'delete' to delete a name"

    update_choice = gets.chomp

    case update_choice

    when "add"
      puts "Enter first and last name:"
      name = gets.chomp
      puts "Enter street address:"
      address = gets.chomp

      db.execute("INSERT INTO card_list (name, address) VALUES (?,?)", [name, address])

      puts "You're adding #{name}, #{address}."

    when "update"
      puts "Enter the name of the person who's address you want to update:"
      name = gets.chomp

        if name == db.execute("SELECT * FROM card_list WHERE name = ?", [name])

        db.execute("UPDATE card_list SET address = ? WHERE name = ?", [address,  name])
        puts "Enter the new address for #{name}:"
        address = gets.chomp
 
        puts "Address for #{name} had been updated to #{address}"
        else
         puts "That name is currently not on the list."
        end

    when "delete"
      puts "Enter the name of the person you want to delete:"
      name = gets.chomp
     
      if name == db.execute("SELECT * FROM card_list WHERE name = ?", [name])
  
        db.execute("DELETE FROM card_list WHERE name = ?", [name])
        puts "#{name} has been deleted"
        
      else
        puts "That name is currently not on the list."
      end

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

current_card_list = db.execute("SELECT * FROM card_list")

puts "Here is your current Christmas card list:"
current_card_list.each do |person|
  puts "#{person[1]}: #{person[2]}"
end
     

   