#FlowControl
puts " - if/else"

age = 18
if age < 18
     type = "child"
else type = "adult"
end
puts "You are a " + type

puts "\n"
puts " - Ternary Operator"
age = 10
puts "You are a " + (age < 18? "child" : "adult")

puts "\n"
puts " - elsif/case"
puts "  + elsif"
fruit = "orange"
if fruit == "orange"
	color = "orange"
elsif fruit == "apple"
	color = "red"
elsif fruit == "banana"
	color = "yellow"
else 	color = "unknown"
end

fruit = "orange"
case fruit
 when "orange"
	color = "orange"
 when "apple"
	color = "red"
 when "banana"
	color = "yellow"
 else
	color = "unknown"
end

fruit = "orange"
color = case fruit
 when "orange"
	"orange"
 when "apple"
	"red"
 when "banana"
	"yellow"
 else
	"unknown"
end

puts "\n"
puts " - while, until"
puts "  + while"
a = 2
while a < 100
 puts a
 a *= a
end

puts "  + until"
a = 3
a *= a until a > 1000
puts a
puts
a = 3
until a > 100
a = a * 4
puts a
end

puts "\n"
puts " - Codeblock (Lambda)"
x = lambda {|a| a.scan(/\w+/).reverse}
puts x.call("This is a test")

