def translate(string)
	check = string.scan(/[\w'-]+/)
	if check.length < 2
		x = check.join("")
		y = x.split("")
		pig_latin(y)
	else
		bar = []
		check.each do |word|
			z = word.split("") 
			to_add = pig_latin(z)
			bar << to_add
		end
		bar.join(" ")
	end
end


def pig_latin(arr)
	vowels = ["a", "e", "i", "o", "u"]
	if vowels.include?(arr[0])
		new_word = arr.join("")
		return new_word + "ay"
	elsif !vowels.include?(arr[0]) && arr[1] == "q" && arr[2] == "u"
		arr.rotate!(3)
		new_word = arr.join("")
		return new_word + "ay"
	elsif arr[0] == "q" && arr[1] == "u"
		arr.rotate!(2)
		new_word = arr.join("")
		return new_word + "ay"
	elsif !vowels.include?(arr[0]) && !vowels.include?(arr[1]) && !vowels.include?(arr[2])
		arr.rotate!(3)
		new_word = arr.join("")
		return new_word + "ay"
	elsif !vowels.include?(arr[0]) && !vowels.include?(arr[1])
		arr.rotate!(2)
		new_word = arr.join("")
		return new_word + "ay"
	elsif !vowels.include?(arr[0])
		arr.rotate!
		new_word = arr.join("")
		return new_word + "ay"
	end
end

translate("eat pie")