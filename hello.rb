# frozen_string_literal: true

system 'clear'
print 'moving out'
puts 'Hello World!'

puts 'ROLLING OUT'.downcase
puts 'rolling out'.upcase
puts 'rolling out'.capitalize
puts 'rolling out'.length

first_name = 'Cosmel'
last_name = 'Villalobos'
age = 41

puts first_name
puts last_name
puts age

puts "Hello my name is #{first_name} #{last_name} and I am #{age} years old"

puts 'What is your favorite color?'
answer = gets.chomp
puts "you said you like the color #{answer}"

print 'Do you like animes?'
anime = gets.chomp

puts "You said you like #{anime}"

puts "using single quotes will not work with interpolated strings check this out #{first_name} and #{last_name}"

sentence = 'Welcoome to the jungle'
puts sentence

another = sentence.sub('the jungle', 'utopia')
puts another

# assignment is to get the first name last name then reverse it and say how many characters are in it and
puts 'Please tell me  your name'
nombre = gets.chomp
puts 'Please tell me your last name'
apellido = gets.chomp
puts "Your full name is #{nombre} #{apellido}"
puts "Your name reversed would be #{nombre.reverse} #{apellido.reverse}"
puts "Your name has #{nombre.length + apellido.length}  characters"
