system 'clear'

puts 'Please give me a name'
name = gets.chomp

name_fixed = name.split.map(&:capitalize).join(' ')

puts name
puts
puts name_fixed

puts 'one TWO three foUR'.split.map(&:capitalize).join(' ')
