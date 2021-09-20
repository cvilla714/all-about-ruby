# frozen_string_literal: true

system 'clear'
class User
  attr_accessor :first_name, :last_name, :username, :email, :password

  #   @first_name
  #   @last_name
  #   @email
  #   @username
  #   @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  #   def set_username
  #     @username = 'luffy'
  #   end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, Email: #{@email}, Password:#{@password}"
  end
end

luffy = User.new('Lufy', 'Monkey D', 'Pirate Kine', 'luffy@onepice.com', '1234567')
puts luffy
zorro = User.new('Zorro', 'Shimaru', 'Greatest Swordsman', 'zorro@onepie.com', '1234567')
puts zorro

# luffy.first_name = 'Luffy'
# luffy.first_name = 'Luffy'
# luffy.last_name = 'Monkey D'
# luffy.email = 'luffy@onepiece.com'
# luffy.set_username
# puts luffy.first_name
# puts luffy.last_name
# puts luffy.email
# puts luffy.set_username
