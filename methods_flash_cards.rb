system 'clear'

def flash_card_game
  puts 'Welcome to Math Flash Cards!'
  puts 'which card would you like? (add|substract|multiply|divide)'
  game = gets.chomp.downcase

  if game == 'add'
    add_numbers
  elsif game == 'substract'
    substract_numbers
  elsif game == 'multiply'
    multiply_numbers
  elsif game == 'divide'
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
  if options == 'y'
    add_numbers
  elsif options == 'n'
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
  if options == 'y'
    substract_numbers
  elsif options == 'n'
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
  if options == 'y'
    multiply_numbers
  elsif options == 'n'
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
  if options == 'y'
    divide_numbers
  elsif options == 'n'
    exit
  else
    flash_card_game
  end
end

flash_card_game
