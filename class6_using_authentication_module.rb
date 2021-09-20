# frozen_string_literal: true

system 'clear'

require_relative 'class5_creating_module'

users = [
  { username: 'luffy', password: 'password1' },
  { username: 'zorro', password: 'password2' },
  { username: 'sanji', password: 'password3' },
  { username: 'jinbei', password: 'password4' },
  { username: 'yamato', password: 'password5' }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
