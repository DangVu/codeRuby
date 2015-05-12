#Method
puts "Class method and Object method"
class Square
	def self.test_method1 #Class method
		puts "Hello type 1 Class method"
	end

	def Square.test_method2 #Class method
		puts "Hello type 2 Class method"
	end

	def test_method3 #Object method
		puts "Hello Object method"
	end
end

Square.test_method1
Square.test_method2
Square.new.test_method3

#Class method is used to count number of object
puts "\n"
puts "Count object"
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
c = Square.new
puts Square.count