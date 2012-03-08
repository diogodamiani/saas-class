def palindrome?(string)

	valid_string = string.scan(/\w/).to_s.downcase
	
	valid_string == valid_string.reverse
end

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra")

def count_words(string)

	# More delarative code
	#
	# word_count = Hash.new
	# words = string.downcase.split

	# words.each { |word|
	
	# 	if word_count.has_key?(word)
	# 		word_count[word] += 1
	# 	else
	# 		word_count[word] = 1 
	# 	end
	# }

	# return word_count

	word_count = Hash.new(0)
	words = string.downcase.split

	words.each { |word|
		word_count[word] += 1
	}

	word_count
end

puts count_words("Doo bee doo bee doo")
puts count_words("what the what the what")
