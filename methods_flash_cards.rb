# frozen_string_literal: true

system 'clear'

def flash_card_game
  puts 'Welcome to Math Flash Cards!'
  puts 'which card would you like? (add|substract|multiply|divide)'
  game = gets.chomp.downcase

  case game
  when 'add'
    add_numbers
  when 'substract'
    substract_numbers
  when 'multiply'
    multiply_numbers
  when 'divide'
    divide_numbers
  else
    puts 'Sorry i did not recognize your selectiong please hit enter to re start the game'
    gets
    flash_card_game
  end
end

def add_numbers
  num1 = Random.rand(0..10)
  num2 = Random.rand(0..10)

  correct_answer = num1 + num2
  puts "What is the sum of #{num1} + #{num2}"
  user_answer = gets.chomp.to_i

  if user_answer == correct_answer
    puts 'Congrats you won'
  else
    puts "Sorry that sume of #{num1} and #{num2} = #{correct_answer} NOT #{user_answer}"
  end

  puts 'Would you like to play again (y|n|restart)'

  options = gets.chomp.downcase
  case options
  when 'y'
    add_numbers
  when 'n'
    exit
  else
    flash_card_game
  end
end

def substract_numbers
  num1 = Random.rand(0..10)
  num2 = Random.rand(0..10)

  correct_answer = num1 - num2
  puts "What is the sum of #{num1} - #{num2}"
  user_answer = gets.chomp.to_i

  if user_answer == correct_answer
    puts 'Congrats you won'
  else
    puts "Sorry that operation  of #{num1} minus #{num2} = #{correct_answer} NOT #{user_answer}"
  end

  puts 'Would you like to play again (y|n|restart)'

  options = gets.chomp.downcase
  case options
  when 'y'
    substract_numbers
  when 'n'
    exit
  else
    flash_card_game
  end
end

def multiply_numbers
  num1 = Random.rand(0..10)
  num2 = Random.rand(0..10)

  correct_answer = num1 * num2
  puts "What is the sum of #{num1} * #{num2}"
  user_answer = gets.chomp.to_i

  if user_answer == correct_answer
    puts 'Congrats you won'
  else
    puts "Sorry that operation  of #{num1} times #{num2} = #{correct_answer} NOT #{user_answer}"
  end

  puts 'Would you like to play again (y|n|restart)'

  options = gets.chomp.downcase
  case options
  when 'y'
    multiply_numbers
  when 'n'
    exit
  else
    flash_card_game
  end
end

def divide_numbers
  num1 = Random.rand(0..50)
  num2 = Random.rand(1..10)

  correct_answer = num1 / num2
  puts "What is the sum of #{num1} / #{num2}"
  user_answer = gets.chomp.to_i

  if user_answer == correct_answer
    puts 'Congrats you won'
  else
    puts "Sorry that operation  of #{num1} divide #{num2} = #{correct_answer} NOT #{user_answer}"
  end

  puts 'Would you like to play again (y|n|restart)'

  options = gets.chomp.downcase
  case options
  when 'y'
    divide_numbers
  when 'n'
    exit
  else
    flash_card_game
  end
end

flash_card_game
