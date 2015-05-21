#Encapsulation
class Person
	def initialize(name)
		set_name(name)
	end 

	def name
		@first_name + ' ' + @last_name
	end
# encapsulation step (private: only code within object method can access)
#	private

	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(name)
		@first_name = name
	end

	def set_last_name(name)
		@last_name = name
	end

	private :set_name, :set_first_name
end

p = Person.new("Dang vu")
puts p.name
p.set_last_name("Do")
#p.set_first_name("Dat") -> can't change 
puts p.name

#Proteced
puts "\n", "Using protected method"
class Person
	def initialize(age)
		@age = age
	end

	def age
		@age
	end

	def age_difference_with(other_person)
		puts (self.age - other_person.age).abs
	end

	protected :age
	#private :age
end

fred = Person.new(34)
chris = Person.new(25)
chris.age_difference_with(fred)
puts chris.age




