#loop
5.times {puts "Test"}
puts
puts "upto from ... to ...(ex: 1 upto 5)"
1.upto(5) { |number| puts number }

puts 
puts "downto from ... to ...(ex: 10 downto 5)"
10.downto(5) { |number| puts number }

puts
puts "step ... from ... to ... (ex: step 5 from 0 to 50)"
0.step(50, 5) { |number| puts number }
