# ecrypt - 
# create new empty str
# while there are characters in original string
#    if character advancing forward is a z
#      move forward to single a - push to new str
#    elsif character is a space
#      push space to new str
#    else
#      push next letter in alpabet to new str
#    end
#     increment index to the next letter of the string
#   end while
# =>return new str

# decrypt - 
# create new empty str
# while there are characters in string
#    if character moving backward is an a
#      push z to new str
#    elsif character is a space
#      push space to new str
#    else
#      push letter before the given letter to new str
#    end
#     increment index to the next letter of the string
#   end while

# User interface -
# ask if user wants to encrypt or decrypt
#  if encrypt
#    ask for password
#    if password is correct
#      run encrypt
#    end
#  elsif decrypt
#    ask for password
#    if password is correct
#      run decrypt
#    end
#  end

        
def encrypt (str) 
  i = 0
  new_str = ""

  while i < str.length

    if str[i] == "z"
      new_str += "a"
    elsif str[i] == " "
      new_str += " "
    else
      new_str += str[i].next
   end  
    i += 1 
  end
new_str
end

# encrypt("ze d")



def decrypt (str) 
  i = 0
  new_str = ""
  alpha ="abcdefghijklmnopqrstuvwxyz"
  
  while i < str.length
  
  if str[i] == " "
    new_str += " "
  else
    new_str += alpha[alpha.index(str[i])-1]
  end
  
  i+= 1
  end
new_str
  
end

# decrypt("afe")



######
# Calling a method inside of another method

# decrypt(encrypt("swordfish"))


#####





puts "Do you want to encrypt or decrypt:"
user_input = gets.chomp

if user_input == "encrypt"
  puts "Please enter password:"
  password = gets.chomp

  if password == "puppy"
    puts "Please enter string"
    string = gets.chomp
     puts encrypt(string)
  end
elsif user_input == "decrypt"
  puts "Please enter password:"
  password = gets.chomp
  
  if password == "puppy"
    puts "Please enter string"
    string = gets.chomp
     puts decrypt(string)
  end
else
  puts "not understood"
end
exit 






















