# frozen_string_literal: true

require_relative 'class7_creating_without_self'
system 'clear'
# Class use to create new users
class User
  include Crud
  attr_accessor :first_name, :last_name, :username, :email, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, Email: #{@email}, Password:#{@password}"
  end
end

luffy = User.new('Lufy', 'Monkey D', 'Pirate King', 'luffy@onepice.com', '1234567')
puts luffy
puts luffy.password
zorro = User.new('Zorro', 'Shimaru', 'Greatest Swordsman', 'zorro@onepie.com', '1234567')
puts zorro

hashed_password = luffy.create_hash_digest(luffy.password)
puts hashed_password
