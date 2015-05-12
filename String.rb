#String
puts "This is a test".length
puts "This is a test".class
puts "This is a test".upcase
puts "- Multiple lines of text"
puts x = %q{This is a test
of the multi
line capability}
puts "Tuong tu nhu tren co the dung %q!...! hoac <<ASFD ..... ASFD"
puts
puts "chuyen tu so sang chu theo bang ma ASCII"
puts "puts 120.chr"
puts "output:"
puts 120.chr
puts
puts "- Substitute"
puts "+ Thay the 'bar' bang 'foo' trong foobar"
puts "foobar".sub('bar', 'foo')
puts "+ Thay the nhieu lan (multiple substitutions at once)"
puts "this is a test".gsub('i', '')
puts "+ Thay the ky tu VD: 2 ky tu dau, cuoi"
x = "this is a test"
puts x.sub(/^../, 'Hello')
puts x.sub(/..$/, 'Hello')
puts 
puts "- Iteration"
"xyz".scan(/./) { |letter| puts letter }
puts
"This is a test".scan(/../) { |x| puts x}
puts
"This is a test".scan(/\w\w/) { |x| puts x }
puts
"This is a test".scan(/[aeiou]/) {|x| puts x}
puts
"This is a test".scan(/[a-m]/) {|x| puts x}

