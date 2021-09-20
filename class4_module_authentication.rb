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

# puts create_secure_users(users)
new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
  end
  "Credentials don't match"
end
puts authenticate_user('luffy', 'password2', new_users)
