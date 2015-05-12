#Inheritance 
class ParentClass
	def method1
		puts "Hello from method1 in the class Parent"
	end

	def method2
		puts "Hello from method2 in the class Parent"
	end
end

class ChildClass < ParentClass
	def method1 
		puts "Hello from method1 in the class Child"
	end
end

s = ChildClass.new
s.method1
s.method2


#Another example
class Person 
	def initialize(name)
		@name = name
	end

	def name
		return @name
	end
end

class Doctor < Person
	def name
		"Dr. " + super
	end
end
s = Doctor.new("dang")
puts s.name

