#Variable
#Local variable
puts "local variable"
def basic_method
	x = 50
	puts x
end

x = 10
basic_method
puts x

#Global variable
puts "\n"
puts "Global variable"
def global_test
	puts $x
end

$x = 50
global_test

#Instance/ Object variable
puts "\n"
puts "Instance/ Object variable"
class Square
	def initialize(side_length)
		@side_length = side_length
	end

	def area
		@side_length * @side_length
	end
end

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area

#Class variable
puts "\n"
puts "Class variable"
class Square
	def initialize
		if defined?(@@number_of_squares)
			@@number_of_squares += 1
		else
			@@number_of_squares = 1
		end
	end

	def Square.count
		@@number_of_squares
	end
end

a = Square.new
puts Square.count
b = Square.new
puts Square.count
c = Square.count
puts Square.count
