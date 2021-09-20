# frozen_string_literal: true

system 'clear'

# replicate the Fizzbuzz games
(1..100).each do |number|
  puts number
end

(1..100).each do |number|
  if (number % 3).zero? && (number % 5).zero?
    puts "#{number} FIZZBUZZ"
  elsif (number % 3).zero?
    puts "#{number} FIZZ"
  elsif (number % 5).zero?
    puts "#{number} BUZZ"
  else
    puts "#{number}."
  end
end
