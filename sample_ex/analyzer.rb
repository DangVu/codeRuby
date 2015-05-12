#analyzer
# Read file, count line, and convert file into String
line_count = 0
text = ''
File.open("text.txt").each do |line|
	line_count += 1
	text << line
end
puts "#{line_count} lines"
puts "\n"

# Anotherway to read file, count line, and convert file into String
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
puts "Counting line"
puts "#{line_count} lines"
total_characters = text.length
puts "Counting characters"
puts "#{total_characters} characters"
total_characters_nonspaces = text.gsub(/\s+/, '').length
puts "Counting characters without white spaces"
puts "#{total_characters_nonspaces} characters excluding spaces"
puts "\n"
# Cach khac su dung scan va join de dem so ky tu ko co cach 
puts text.scan(/\S+/).join.length
# Khac nhau giua scan(/\w+/) va split: 
# scan(/\w+/): quet va doc cac cum ma chi la chu (ko tinh cac ky tu dac biet)
# split: cat ra thanh cac cum ma ko chua khoang trang
puts "Coungting word"
puts "Using scan: #{text.scan(/\w+/).length} words"
puts "Using split: #{text.split.size} words"
sentence_count = text.split(/\.|!|\?/).length
puts "Counting sentence"
puts "#{sentence_count} sentences"
puts "\n"
paragraph_count = text.split(/\n\n/).length
puts "Counting paragraph"
puts "#{paragraph_count} paragraphs"
puts "\n"
puts "Average sentences per paragraph"
puts "#{sentence_count / paragraph_count} sentences per paragraph"
puts "\n"
puts "Average words per sentence"
puts "#{text.split.size / sentence_count} words per sentence"
# Stop word
puts "\n"
puts "Stop word"
text = %q{Los Angeless has some of the nicest weather in the country.}
stop_words = %w{the a by on for of are with just but and to the my I has some in}
words = text.scan(/\w+/)
key_words = words.select{ |word| !stop_words.include?(word) }
puts key_words.join(' ')
puts "Percentage of stop word in sentence"
puts "#{((key_words.length.to_f / words.length.to_f) * 100).to_i} %"

