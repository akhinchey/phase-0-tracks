# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Break string into array using split method
  # set default quantity = 1
  # add array elements into hash as keys and give each key a value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(string_of_items)
  hash_of_items = {}
  array_of_items = string_of_items.split(" ")
  
  array_of_items.each do |item|
    hash_of_items[item] = 1
  end
  hash_of_items
end

p my_hash = create_list("apple bananna pear")


# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # Write a method that takes two arguments
  # Set default value for quantity at 1 in case quantity is not specified
  # Add item names and quantity into key value pair in hash.
# output: updated hash


def add_item(hash_of_items, item, quantity=1)
  hash_of_items[item] = quantity
  hash_of_items
end

p add_item(my_hash, "grapes", 4)


# Method to remove an item from the list
# input: item name
# steps: 
  # Delete key that has the item name 
# output: updated hash

def remove_item(hash_of_items, item)
  hash_of_items.delete(item)
  hash_of_items
end

p remove_item(my_hash, "grapes")

# Method to update the quantity of an item
# input: item name and quantity
# steps:
  # Reassign new value to given item name key
# output: updated hash

def update_item_quantity(hash_of_items, item, quantity)
  hash_of_items[item] = quantity
  hash_of_items
end

p update_item_quantity(my_hash, "apple", 7)


# Method to print a list and make it look pretty
# input: hash
# steps:
  # Use .each iterator to print out each key-value pair on its own line
# output: hash contents

def print_hash(hash_of_items)
  hash_of_items.each { |key, value| p "#{key}: #{value}" }
end

print_hash(my_hash)