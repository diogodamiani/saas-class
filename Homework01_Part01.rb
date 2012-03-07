def palindrome?(string)

	valid_string = string.scan(/\w/).to_s.downcase

	if valid_string == valid_string.reverse
		return true
	end

	return false
end

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra")

def count_words(string)

	hash = Hash.new
	words = string.downcase.split

	words.each { |w|
	
		if hash.has_key?(w)
			hash[w] += 1
		else
			hash[w] = 1 
		end
	}

	return hash
end

puts count_words("Doo bee doo bee doo")
puts count_words("what the what the what")
