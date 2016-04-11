def echo(string)
	"#{string}"
end

def shout(string)
	"#{string}".upcase
end

def repeat(string, num = 2)
	[string] * num * " "
end

def start_of_word(string, num)
	string.split(", ")
	string[0..num-1]
end

def first_word(string)
	new_string = string.scan(/\w+/)
	new_string[0]
end

def titleize(string)
	no_caps = ["and", "or", "if", "the", "over"]
	string.capitalize.gsub(/(\w+)/) do |word|
		no_caps.include?(word) ? word : word.capitalize
	end
end
