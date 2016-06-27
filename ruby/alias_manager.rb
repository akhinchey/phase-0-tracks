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


puts secret_agent_name("Felicia Torres")

