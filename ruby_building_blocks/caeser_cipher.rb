string = "yzab"
shift = 4

Alphabet = ('a'..'z').to_a
cipher = Hash.new
Alphabet.each_with_index { |k, v| cipher[k] = v }
string.split('').each_with_index do |letter, count|
	if cipher.key?(letter)
		new_letter = cipher[letter] + shift
		if new_letter < 25
			string[count] = cipher.key new_letter
		else
			string[count] = cipher.key new_letter - 26
		end
	end
end
puts string