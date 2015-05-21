#Count character
#Count character without space
#Line count
#Word count
#Sentence count
#Paragraph count
#Average number of words per sentence
#Average number of sentence per paragraph
#File.open("text.txt").each {|line| puts line}

line_count = 0
File.open("text.txt").each {|line| line_count += 1}
puts "#{line_count} line"
text = ''
File.open("text.txt").each {|line| text << line}
#puts text
puts "#{text.gsub(/\s+/, '').length} character exclusive whitespace"
puts text.length
word_count = text.split.length
puts "#{word_count} words"
sentence_count = text.split(/\?|!|\./).length
puts "#{sentence_count} sentence"
paragraph_count = 1
text.scan(/\n\n/) {|i| paragraph_count += 1}
puts "#{paragraph_count} paragraph"
puts "#{word_count / sentence_count} words per sentence"
puts "#{sentence_count / paragraph_count} sentence per paragraph"

