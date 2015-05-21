#Namespace
load 'number_stuff.rb'
load 'letter_stuff.rb'

puts random

puts "\n"
module NumberStuff
	def NumberStuff.random
		rand(1000000)
	end
end

module LetterStuff
	def LetterStuff.random
		(rand(26) + 65).chr
	end
end

puts NumberStuff.random
puts LetterStuff.random