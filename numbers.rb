system 'clear'

puts 10 * 3
puts 10 / 3 # this does not give any decimals
puts 10 % 3
puts 10**2
puts 10**3
puts 10.0 / 3 # this will show the decimals

# assignment is create a multiplication, division, substraction , sum and modulear
# from two given number from the user defined
puts 'please provide a number the first number '
first_number = gets.chomp.to_f

puts 'please provide a second number'
second_number = gets.chomp.to_f
puts
puts "the numbers  you provided were  #{first_number} and #{second_number}"

puts "the result of adding #{first_number} and #{second_number} is #{first_number + second_number}"

puts "ther result of multiplication between #{first_number} and #{second_number} is #{first_number * second_number}"

puts "ther result of dividing  between #{first_number} and #{second_number} is #{first_number / second_number}"

puts "ther result of applying modular  between #{first_number} and #{second_number} is #{first_number % second_number}"
puts
puts '5' * 5
puts
puts '5'.to_f * 10
puts
puts 'i am a line'
# 20.times { print '-' }
# puts
puts '-' * 20
