#Array_list
x = [1, 2, 3, 4]
puts x[2]
y = []
puts y
y << "Word"
puts y
y << "Play"
y << "Fun"
puts "Popping"
puts "Before popping: "
puts y
puts y.length
y.pop
y.pop
puts "After popping twince"
puts y
puts
puts " Join"
x = ["Word", "Play", "Fun"]
puts x.join
x = ["Young", "and", "Beautiful"]
puts x.join(', ')
puts
puts " - Splitting String into Array"
puts x = "This is a test"
puts x.scan(/\w/).join(', ')
puts x.scan(/\w+/).join(', ')
puts x.scan(/\w*/).join(', ')
puts x.scan(/\w*?/).join(', ')
puts "Short sentence. Another. No more".split(/\./).inspect
puts
puts " - Array Iteration"
x = [1, "test", 2, 3, 4]
puts x
puts "+ Each"
x.each {|element| puts element.to_s + "X"}
puts "+ Collect"
print [1, 2, 3, 4].collect {|element| element * 2}, "\n" 
puts
puts " - Combine 2 array"
x = [1, 2, 3, 4]
y = ["x", "y", "z"]
print x, "\n"
print y, "\n"
z = x + y
puts z.inspect
puts
puts " - Subtraction and Difference"
print x, "\n"
y = [1, 2]
print y, "\n"
z = x - y
puts z.inspect


