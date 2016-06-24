def test_block
  puts "this is before yielding to the block"
  yield("parameter 1", "parameter 2")
  puts "This is after yielding."
end
​
test_block { |param1, param2| puts "this is #{param1} and this is #{param2}" }
​
​
​
fruits = [ "apples", "bananas", "oranges", "grapes"]
person_profile = {name: "amanda", age: 29, current_city: "Brooklyn", favorite_color: "purple"}
​
​
puts fruits
​
fruits.each do |fruit|
  puts "I like #{fruit}!"
end
​
fruits.map! do |fruit|
  puts "I like #{fruit.upcase}!"
  fruit.upcase
end
​
puts fruits
​
​
person_profile.each do |key, value|
  puts "#{key}: #{value}"
end
​

​
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
​
# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
​
# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options
​
array = [12, 15, 2, 4]
​
array.delete_if do |num|
  num < 10 
end
​
#puts array
​
​
array2 = [14, 26, 12, 7]
​
array2.select do |num|
  num > 20
end
​
# puts array2
​
array2.keep_if do |num|
  num < 20
end
​
puts array2
​
sample_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}
​
sample_hash.delete_if do |key, value|
  key > "c"
end
  
# puts sample_hash
​
new_sample_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}
​
new_sample_hash.select do |key, value|
  value > 2
end
​
# puts new_sample_hash
​
new_sample_hash.keep_if do |key, value|
  value < 3
end
​
# puts new_sample_hash