#Thread

=begin
	
rescue Exception => e
	
end
	
rescue Exception => e
	
end
threads = []
10.times do 
	thread = Thread.new do
		10.times { |i| print i; $stdout.flush; sleep rand(2) }
	end

	threads << thread
end

threads.each { |thread| thread.join }

threads.each do |thread|
	puts "Thread #{thread.object_id} didn't finish within 1s" unless thread.join(1)
end
=end
a=Thread.new do
	10.times do |i|
		puts i
		$stdout.flush
		#Thread.stop
	end
end

a.join
