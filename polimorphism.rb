#Polimorphism
class Animal
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

class Dog < Animal
	def talk
		"Woof!"
	end
end

class Cat < Animal
	def talk
		"Meow!"
	end
end

animal = [Dog.new("Bessy"), Cat.new("Bolly")]
animal.each { |s| puts s.talk }