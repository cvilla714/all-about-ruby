# frozen_string_literal: true

system 'clear'
arrayname = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# The index for an array starts with 0, so in the array above a[0] is 1

# Some methods you can use on arrays:

puts "we are checking if the array is empty #{arrayname.empty?}"

puts "we are checking if the array includes the element loco  #{arrayname.include?('loco')}"

puts "here are are reversing the array #{arrayname.reverse}"

puts "here we are reversing ther array but also making the change permanent#{arrayname.reverse!}" # use ! at the end to change the original array

puts "this is how you can shuffle the order of the array #{arrayname.shuffle}"

puts "here we are pushing the number 30 to the end of the array #{arrayname.push(30)}" # will append new element 30 to the end array

puts "this is another way to add an elemento to an array at the end of it #{arrayname << 'luffy'}" # << known as shovel operator will also append new element to the end of the array

puts "here we are getting ride of the element at the begining if the array #{arrayname.unshift('luffy')}" # will add element "some element" to the beginning of the array

puts "here we are eliminiating the last element of the array #{arrayname.pop}" # will remove the last element of the array and return 1

puts "here we are getting ride of the values that are repeated in the array #{arrayname.uniq}" # will remove all the duplicates and display (will not change the original array)

puts "we are performing the same thing but we are making the change permanent #{arrayname.uniq!}" # will remove all the duplicates in the original array

# A range:

# will create an array with elements from value 0 to 25
longshot = (0..25).to_a
p longshot

# will create an array with elements from value 0 to 99 in random order

bola = (0..99).to_a.shuffle!

p bola

# In plain terms: For each element i in array y print the value of i
# To execute iteration through an array called names using a block:

names = %w[luffy zorro sanji jinbei robin brook chopper francky nami yamato momonoske]
names.each do |randomvariablename| # starts the do block
  puts "Hello #{randomvariablename}" # executes code for each element
end

# To capitalize (or use another method) on each element of array called names:

names.each { |randomvariablename| puts "Hello #{randomvariablename.capitalize}" }

# Using the select method to pickup all the odd numbers from an array y:

bola.select { |number| p number unless number.odd? }
# selects the value and returns it only if the condition is met

# To join the elements of an array named p:
# p.join

# To join the elements of an array with space in between each element:

p names.join(' - ')

# To join the elements of an array with dash in between each element:

p bola.join('-')
