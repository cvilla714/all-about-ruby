system 'clear'

def greetings
  puts 'Hello'
end

greetings

def adding_number(number1, number2)
  puts "The result of adding these two number is #{number1 + number2}"
end

adding_number(10, 20)

def give_your_name(first_name, last_name)
  "Thanks for reaching out your name is #{first_name} #{last_name}"
end

full_name = give_your_name('cosmel', 'villalobos')
puts full_name.upcase

# create a fizzbuzz game
def fizzbuzz(number)
  if (number % 3).zero? && (number % 5).zero?
    puts "the number entered #{number}. is a FIZZBUZZ"
  elsif (number % 3).zero?
    puts "this number #{number}. is a FIZZ"
  elsif (number % 5).zero?
    puts "this number #{number}. is a BUZZ"
  else
    puts "the number you entered is #{number}. is neither a FIZZBUZZ OR FIZZ OR BUZZ"
  end
end

puts 'Pleae provide a number to play the game'
num = gets.chomp.to_i

fizzbuzz(num)
puts

# how pass default values
def max_nuber(max = 100)
  puts "The max number you were thinking was #{max}"
end

# max_nuber
puts 'Please tell me what is the max number i am thiking right now'
max_num = gets.chomp.to_i

max_nuber(max_num)

def say_hello
  puts 'Hello to you'
end

say_hello

def say(things_to_say)
  puts things_to_say
end

say('You are doing better')
