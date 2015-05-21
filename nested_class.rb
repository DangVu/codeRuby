#Nested classes
class Drawing
	def Drawing.give_me_a_circle
		Circle.new
	end

	class Line
	end

	class Circle
		def what_am_i
			"This is a circle"
		end
	end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
b = Drawing::Circle.new
puts b.what_am_i
# If we call like: c = Circle.new -> error

puts "\n"
Pi = 3.141592

class OtherPlanet
	Pi = 2

	def self.circumference_of_circle(radius)
		radius * 2 * Pi
	end
end

puts OtherPlanet.circumference_of_circle(10)
puts Pi
puts OtherPlanet::Pi
