#Simple Benchmarking
require 'benchmark'
puts Benchmark.measure {10000.times {print "."}}

#Multiple
require 'benchmark'
iterations = 1000000

b = Benchmark.measure do
	for i in 1..iterations do 
		x = 1
	end
end

c = Benchmark.measure do 
	iterations.times do |i|
		x = i
	end
end

puts b
puts c