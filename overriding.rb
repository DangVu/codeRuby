#Overriding
#Overriding from Parent class method
class Mammal
	def talk 
	end
end

class Human < Mammal
	def talk
		puts "Hello"
	end
end

class Dog < Mammal
	def talk
		puts "Woof"
	end
end

human = Human.new
dog = Dog.new
human.talk
dog.talk

puts "\n"
#Overriding exist method
class Dog
	def talk
		puts "Woof"
	end
end

dog = Dog.new
dog.talk

class Dog 
	def talk
		puts "Howl"
	end
end
dog.talk
