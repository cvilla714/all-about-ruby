system 'clear'

def multiply_numbers(first_number, second_number)
  first_number * second_number
end

def adding_numbers(first_number, second_number)
  first_number + second_number
end

def substract_numbers(first_number, second_number)
  first_number - second_number
end

def divide_numbers(first_number, second_number)
  first_number / second_number
end

def modulo_number(first_number, second_number)
  first_number % second_number
end

puts 'please provide a number the first number '
first_number = gets.chomp.to_f
puts 'please provide a second number'
second_number = gets.chomp.to_f
puts
puts 'What operation would you like to perform 1 is Addition 2 Multiplication 3 is Division 4 is Substraction and 5 is Modular'
user_selection = gets.chomp.to_i
puts "the numbers  you provided were  #{first_number} and #{second_number} and the operation you choose was #{user_selection}."
puts

if user_selection == 1
  puts "the result of adding #{first_number} and #{second_number} is #{adding_numbers(first_number, second_number)}"
elsif user_selection == 2
  puts "ther result of multiplication between #{first_number} and #{second_number} is #{multiply_numbers(first_number,
                                                                                                         second_number)}"
elsif user_selection == 3
  puts "ther result of dividing  between #{first_number} and #{second_number} is #{divide_numbers(first_number,
                                                                                                  second_number)}"
elsif user_selection == 4
  puts "ther result of substracting  #{first_number} and #{second_number} is #{substract_numbers(first_number,
                                                                                                 second_number)}"
elsif user_selection == 5
  puts "ther result of applying modular  between #{first_number} and #{second_number} is #{modulo_number(first_number,
                                                                                                         second_number)}"
else
  puts 'Invalid selection'
end
