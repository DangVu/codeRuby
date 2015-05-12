#Ranges
('A'..'Z').to_a.each {|letter| print letter + " "}
puts
('A'...'Z').to_a.each {|letter| print letter + " "}
puts
a = [1, 2, 3, 4, 10, 20]
puts a[1..3].inspect
a[1..3] = ["x", "y", "z"]
puts a.inspect