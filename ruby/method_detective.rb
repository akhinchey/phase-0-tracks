# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase

puts "zom".insert(1, "o")

puts "enhance".center(11)

puts "Stop! You’re under arrest!".upcase
puts "Hello world.".upcase

puts "the usual".concat(" suspects")
puts "the usual" << " suspects"

puts " suspects".prepend("the usual")

puts "The case of the disappearing last letter"[0...-1]

puts "The mystery of the missing first letter".delete "T"
puts "The mystery of the missing first letter"[1..-1]

# It would be possible to use slice! for the disappearing first and last letter, 
# but it would return the removed letter and not the string itself

puts "Elementary,    my   dear        Watson!".squeeze
# the above only works if there are no side by side duplicate characters
puts "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")

puts "z".each_byte {|c| puts c }

puts "How many times does the letter 'a' appear in this string?".count "a"