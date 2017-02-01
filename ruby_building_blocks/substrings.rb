def substrings(phrase, string)
	string_hash = Hash.new(0)
	string.split.each do |word|
		if /#{word}/.match(phrase)
			string_hash[word] += 1
		end
	end
	return string_hash
end

string = "someone found some dirt in the shoe"
phrase = "someone"
puts substrings(phrase, string)