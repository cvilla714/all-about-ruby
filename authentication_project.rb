# frozen_string_literal: true

system 'clear'
# users array where username and password are stored
users = [
  { username: 'luffy', password: 'password1' },
  { username: 'zorro', password: 'password2' },
  { username: 'sanji', password: 'password3' },
  { username: 'jinbei', password: 'password4' },
  { username: 'yamato', password: 'password5' }
]

def authenticate_user(username, password, users)
  users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
      # puts user
      # break
      # puts "Credentials dont' match"
    end
  end
  "Credentials dont' match"
end

# program execution flow
puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

puts "this is the length of the user array #{users.length}"
puts "the element at positon index 0 in the array of objects is #{users[0]}"
attempts = 0
while attempts < users.length
  #   puts "this will just print #{attempts} times"
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authenticator = authenticate_user(username, password, users)
  puts authenticator
  puts 'Press n to quit or any other key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1

end
puts 'You have exceeded the number of attempts' if attempts = users.length
