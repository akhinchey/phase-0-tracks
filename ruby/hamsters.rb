puts "hamster's name:"
hamster_name = gets.chomp

puts "volume level from 1 to 10:"
vol_level = gets.chomp.to_i

puts "whether the hamster is a good candidate for adoption:"
good_candidate = gets.chomp

puts "estimated age:"
age = gets.chomp.to_i

puts "hamster entry:" 
puts "name: #{hamster_name}" 
puts "volume level: #{vol_level}"
puts "whether the hamster is a good candidate for adoption: #{good_candidate}"
puts "estimated age: #{age}"
