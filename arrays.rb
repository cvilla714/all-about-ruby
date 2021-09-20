# frozen_string_literal: true

system 'clear'

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
names = ['luffy', 'zorro', 'jinbei', 'sanji', 'robin', nums]

puts nums.delete_at(2)
puts
puts names.delete_at(2)
# puts names
# puts
# puts names[0]
# puts names[names.length - 1]
# puts
# puts names[names.length - 1][nums.length - 1]
# puts
# puts names[5].length # here i am accessing the last element in the array names which is nums and i am gettintg the length of the array

# puts names.push('chopper') # insert a value at the end of the array
# puts
# puts nums.insert(0, 'first one')
# puts
# puts nums.insert(3, 'new position')
# puts
# puts nums.unshift(14) # adds the element at the begining of the array
# puts
# puts names.unshift('oden')
# puts names.unshift(21)
# puts
# puts nums.unshift(44)
# puts names.push('chopper')
# puts
# puts nums.push('linage')
