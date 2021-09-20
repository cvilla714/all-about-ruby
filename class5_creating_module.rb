# frozen_string_literal: true

system 'clear'
# Module to authenticate_user
module Crud
  require 'bcrypt'

  puts 'Module Crud Activated'

  # here we are creaeting the methdo to encrypt the passwords
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # here we are going to veryfy the password that were encrypted
  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  # here we are taking the list of user from the user object and we are encrypting all passwords
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end
    "Credentials don't match"
  end
end
