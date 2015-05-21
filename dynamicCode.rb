# Dynamic Code Execution
# Eval
eval "puts 2 + 2" #-> display 4 but not return 4, return nil 
# because puts always return nil
puts eval("2 + 2") #-> display 4 and return 4
# Use string and interpolation
my_number = 15
my_code = %Q{#{my_number} * 2}
puts eval(my_code)
# eval with class
my_class = %Q{class Abc
				def initialize(name)
					@name = name
				end

				def call_name
					puts @name
				end
			end
			}
eval(my_class)
a = Abc.new("Dang")
a.call_name

# Binding
class Abc
	def initialize(age)
		@age = age
	end

	def get_binding
		return binding()
	end
end

a = Abc.new(20)
b = Abc.new(40)
puts eval("@age", a.get_binding)
puts eval("@age", b.get_binding)

#exec "ruby testing.rb"
#puts "this will never be displayed"

child = fork do
	sleep 3
	puts "Say hello mojo"
end

puts "wait for child process..."
Process.wait child
puts "Done"
