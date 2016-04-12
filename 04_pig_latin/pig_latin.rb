def translate(string)
	vowel = ["a", "e", "i", "o", "u"]
	cons = ('a'..'z').to_a
		new_string = string.split(' ')
		if vowel.include?(string[0])
			"#{string}ay"
		elseif
			string[1..-1] + string[0] + "ay"		
		end

end