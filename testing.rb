=begin
	
rescue Exception => e
	
end
class Song
	include Comparable

	attr_accessor :length

	def <=>(other)
		@length <=> other.length
	end

	def initialize(song_name, length)
		@song_name = song_name
		@length = length
	end
end

a = Song.new("aa", 2)
b = Song.new("bb", 5)
a>b
puts a <=> b
#puts a < b

=end

=begin
	
rescue Exception => e
	
end
i = 1
j = 0
until i > 100000
	i *= 2
	j += 1
end
puts "#{i}, #{j}"

=end
=begin
class String
	def titlezie
		self.gsub(/(\A|\s)\w/) { |letter| letter.upcase}
	end
end

puts "this is a test".titlezie
puts "We're testing titleize".titlezie
raise "Fail 1" unless "this is a test".titlezie == "This Is A Test"
raise "Fail 2" unless "another test 1234".titlezie == "Another Test 1234"
raise "Fail 3" unless "We're testing titlezie".titlezie == "We're Testing Titlezie"
=end

=begin
	
rescue Exception => e
	
end
File.open("test.txt") do |f|
	puts f.gets
end

f = File.new("test.txt", "r")
puts f.gets
f.close

class MyFile
	attr_accessor :handle

	def initialize(filename)
		@handle = File.new(filename, "r")
	end

	def finishd
		@handle.close
	end
end

f = MyFile.new("test.txt")
puts f.handle.gets
f.finishd

=end

=begin
	
rescue Exception => e
	
end

class String
	def titleize
		self.gsub(/\s(\w)/) {|letter| letter.upcase}.gsub(/^\w/) do |letter|
			letter.upcase
		end
	end
end

require 'test/unit'

class TestTitleize < Test::Unit::TestCase
	def test_basic
		assert_equal("This Is A Test", "this is a test".titleize)
		assert_equal("Another Test 1234", "another test 1234".titleize)
		assert_equal("We're Testing", "we're testing".titleize)
	end
end

=end

=begin
	
rescue Exception => e
	
end

require 'yaml'

class Person
	attr_accessor :name, :age
end

fred = Person.new 
fred.name = "Fred Bloggs"
fred.age = 23

laura = Person.new
laura.name = "Laura Smith"
laura.age = 20

test_data = [fred, laura]
puts YAML::dump(test_data)

=end
=begin
	
rescue Exception => e
	
end
require 'webrick'

server = WEBrick::GenericServer.new( :Port => 1234 )

trap("INT") {server.shutdown}

server.start do |socket|
	socket.puts Time.now
end
=end

ls = IO.popen("ls", "r")
while line = ls.gets
	puts line
end
ls.close