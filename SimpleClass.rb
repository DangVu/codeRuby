#SimpleClass
class Pet
attr_accessor :name, :age, :color, :gender
end

class Dog < Pet
attr_accessor :type
 def bark
 3.times do puts "Woof!" end
 end
end

dog = Dog.new
dog.name = "Tommy"
dog.age = 2
dog.color = "Black"
dog.gender = "Male"
dog.type = "Husky"
puts dog.name
dog.bark

puts 1.class
