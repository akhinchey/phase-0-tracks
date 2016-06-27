# split string by space into array with two items
# rejoin in reverse
# 
# split again by char
# 
# iterate through each char
# 
# if statement
#   if char is vowel
#     elsif char is consonant
#   end
#   
# rejoing words


def secret_agent_name (name)
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'
  
  name = name.split(" ").reverse.join(" ").downcase 
  
  name = name.split("")
  
  name.map! do |char|
    
    if vowels.include? char
      if vowels.index(char) == 4
        char = vowels[0]
      else
        char = vowels[vowels.index(char) + 1]
      end
    elsif consonants.include? char
      if consonants.index(char) == 20
        char = consonants[0]
      else
        char = consonants[consonants.index(char) + 1]
      end
    else
      char
    end
  end
  
  name = name.join.split(" ")
  name.map { |name_part| name_part.capitalize! }
  name.join(" ")
  
end

input = "yes"

names_array =[]

while input == "yes"
puts "Please enter name to encode:"
agent_name = gets.chomp

puts secret_agent_name(agent_name)

names_array.push("#{agent_name} uses the alias: #{secret_agent_name(agent_name)}")

puts "Would you like to add another name? Type 'yes' or 'no':"
input = gets.chomp

end

puts names_array

