# frozen_string_literal: true

system 'clear'
require 'bcrypt'

users = [
  { username: 'luffy', password: 'password1' },
  { username: 'zorro', password: 'password2' },
  { username: 'sanji', password: 'password3' },
  { username: 'jinbei', password: 'password4' },
  { username: 'yamato', password: 'password5' }
]

# here we are creaeting the methdo to encrypt the passwords
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

# here we are going to veryfy the password that were encrypted
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

# here we are taking the list of user from the user object and we are encrypting all passwords
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)
