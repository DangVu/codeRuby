#Hashes
puts " - Define"
dictionary = {'cat' => 'feline animal', 'dog' => 'canine animal'}
puts dictionary.size
puts dictionary['cat']
dictionary['cat'] = "fluffy animal"
puts dictionary['cat']
puts
puts " - Iteration"
x = {"a" => 1, "b" => 2}
x.each { |key, value| puts "#{key} equals #{value}"}
puts x.keys.inspect
puts x.values.inspect
puts
puts " - Delete"
puts x
x.delete("a")
puts x.inspect
puts "Delete with conditionally"
x = {"a" => 100, "b" => 20}
puts x
x.delete_if {|key, value| value < 25}
puts x.inspect
