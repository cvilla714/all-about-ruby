system 'clear'
my_details = { 'name' => 'mashrur', 'favcolor' => 'red' }

# To access the value and notify me what favcolor is:

puts "here is how i am accesing this element inside the hash #{my_details['favcolor']}"

# Alternate syntax to create key, value pairs in hash: using symbols

myhash = { a: 1, b: 2, c: 3, d: 4 }

# But this will create symbols a, b, c and d (not strings) as keys

puts "here is how we are accesing the hash that was constructed using symbols #{myhash}"
# To access the value for key c above:

puts "here we are accessing the value for key c #{myhash[:c]}"

# To add a key, value pair to the hash above:

puts "adding a new valuye to the hash #{myhash[:d] = 7}"
puts myhash

puts "adding another key to the hash #{myhash[:name] = 'Luffy'}"
puts myhash
# To delete a key, value pair simply delete the key:

puts "here we are deleting the key d from the hash #{myhash.delete(:d)}"
puts myhash

# To list the keys in a hash, followed by values of the hash:

puts "listing all keys from the hash #{myhash.keys}"
puts "listing all values from the hash #{myhash.values}"

# To iterate through a hash using .each method and print out value:

myhash.each { |_somekey, somevalue| puts somevalue }

# To iterate through a hash using .each method and print out both key and value in friendly format:

puts "adding a new valuye to the hash #{myhash[:f] = 7}"
puts "adding another key to the hash #{myhash[:g] = 9}"
puts "adding another key to the hash #{myhash[:wave] = 'sword'}"
myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }

# To iterate through and delete a items from a hash based on a condition (in the condition below if the value is greater than 3:
puts myhash
myhash.each { |k, v| myhash.delete(k) if v.is_a?(Integer) && v > 5 }
# myhash.each { |k, v| myhash.delete(k) if v > 5 }
puts myhash
myload = { 'a' => 7, 'b' => 8, 'c' => 9, 'd' => 10, 'e' => 11 }
puts myload
myload.each do |k, v|
  myload.delete(k) if v > 8
end
puts myload

# puts myload.methods
# Use select method to display items only if value of the item is odd

# myhash.select { |_k, v| p v.odd? }
