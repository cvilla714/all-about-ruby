system 'clear'

class Square
  # attr_reader :square_length #this is the same as the gettor
  # attr_writer :square_length # this si the same as the settor
  attr_accessor :square_length # this does both in the same will get and set

  def initialize(square_length)
    @square_length = square_length
  end

  def perimeter
    @square_length * 4
  end

  def area
    @square_length * @square_length
  end

  def to_s
    "Side Length is #{@square_length} \nPerimeter: #{perimeter} \nArea: #{area}"
  end

  def draw
    puts '*' * @square_length
    (@square_length - 2).times do
      print '*' + (' ' * (@square_length - 2)) + "*\n"
    end
    puts '*' * @square_length
  end
end

my_square = Square.new(5)

puts my_square
puts my_square.draw
puts
puts my_square.inspect
puts
puts my_square.square_length
my_square.square_length = 20
puts
puts my_square.square_length
puts
puts my_square.perimeter
puts
puts my_square.area
