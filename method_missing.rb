#missing method
class Unknown
	def method_missing(m, *args, &block)
		puts "There is no method called #{m} here -- please try again."
	end
end

Unknown.new.bla
Unknown.new.anything