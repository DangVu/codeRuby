#Comparison
puts "- Simple comparison:"
age = 10
puts "You're too young for this system" if age < 20

puts 
 
puts "- Complex comparison:"
age = 18
puts "You're teenage" if age > 12 && age < 20

age = 24
puts "You're not teenage" unless age > 12 && age < 20

puts
puts "+ between"
age = 18
puts age.between?(12, 20)

puts
puts "+ equal (==)"


puts
puts "+ Comparison. Returns 0 if x and y are equal, 1 if x is higher,
-1 if y is higher."
puts "x = 1"
puts "y = 1"
x = 1
y = 1
puts x <=> y

puts "x = 1"
puts "y = 2"
x = 1 
y = 2
puts x <=> y

puts
puts "- Multiple comparisons"
class Man
attr_accessor :name, :age, :gender
end
man = Man.new
man.name = "Dang"
man.age = 20
man.gender = "Male"
print man.name, ", You're a working age man" if man.gender == "Male" && (man.age >= 18 && man.age <= 65)



