#File I/O
# Use File.open
#File.open("test.txt").each {|line| puts line}
# Use File.new
#f = File.new("test.txt", "r") 
#puts f.gets # only first line
#f.close

File.new("test.txt", "r").each {|line| puts line}

#File.open("test.txt").each(',') {|line| puts line}
#File.open("test.txt").each_byte {|line| puts line}

# gets isn't an iterator like each
#File.open("test.txt") do |f|
#2.times {puts f.getc}
#end 

# read an entire file into an array, split by lines, using readlines
#puts File.open("test.txt").readlines.join("---")

File.open("test.txt") do |f|
	puts f.read(6) # 6 -> is the position
end

# f = File.read("test.txt")
# puts f

# f = File.readlines("test.txt")
#puts f

#f = File.new("test.txt", "a+")
#f.puts Time.now
#f.close
#puts f

#f = File.open("test.txt", "r+")
#f.putc "H" #putc thay the ky tu vao vi tri dau tien cua file
#f.close

f = File.open("test.txt", "r+")
f.write "111111" #viet de len 5 ky tu dau tien cua dong 1
# so luong ky tu tuy thuoc vao do dai cua chuoi muon thay  
f.close

puts File.mtime("test.txt")