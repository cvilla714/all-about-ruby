system 'clear'

# works the same as the if statement
# while CONDITION
#     DO SOMETHING
# end

counter = 1
while counter < 10
  puts counter
  counter += 1
end

names = %w[zorro sanji jinbei robin usop franky chopper]

names.each do |item|
  puts item
end
puts
puts

names.map do |n|
  puts n.upcase
end

puts
puts
names.each do |b|
  puts b.capitalize
end
