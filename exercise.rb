system 'clear'

# replicate the Fizzbuzz games
(1..100).each do |number|
  puts number
end

(1..100).each do |number|
  if number % 3 == 0 && number % 5 == 0
    puts "#{number} FIZZBUZZ"
  elsif number % 3 == 0
    puts "#{number} FIZZ"
  elsif number % 5 == 0
    puts "#{number} BUZZ"
  else
    puts "#{number}."
  end
end
