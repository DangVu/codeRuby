#Module
module Toolbox
	class Ruler
		attr_accessor :length
	end
end

module Country
	class Ruler
		attr_accessor :name
	end
end

a = Toolbox::Ruler.new
a.length = 20
puts a.length
a = Country::Ruler.new
a.name = "VietNam"
puts a.name

#Mix-in
module Another
	def do_stuff
		puts "This is a test"
	end
end

class Person
	include Another
end

x = Person.new
x.do_stuff

include Another
do_stuff