# frozen_string_literal: true

system 'clear'

puts 'please give me a number'
number = gets.to_i

number += 1 # here i am adding an assigning a new value to number is the same as number = number +1

puts "now the new number is #{number}"

#######################################
print 'please give me a number between 1 - 10 '
new_number = gets.to_i

if new_number > 10
  puts 'plese provide a number only between 1 and 10'
elsif new_number > 5
  puts "the number provided is grater than 5 and the number is #{new_number}"
elsif new_number < 5
  puts "the number you provided was #{new_number} and is less than 5"
else
  puts "the number you provided is the same as 5 because is #{new_number}"
end
