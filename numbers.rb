system 'clear'

puts 10 * 3
puts 10 / 3 # this does not give any decimals
puts 10 % 3
puts 10**2
puts 10**3
puts 10.0 / 3 # this will show the decimals



print 'please provide a number '
number = gets

print "the number you provided was #{number}"

print 'lets add numbers, please provide a number '
adding_number = gets.to_f

puts "the result of adding #{adding_number} and 10 is #{adding_number + 10}"
