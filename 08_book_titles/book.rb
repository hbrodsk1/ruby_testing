class Book
  attr_reader :title

  def initialize(title=nil)
    @title = title
  end

  def title=(title)
  	articles = %w{a the an in and of}
    words = title.split(" ")
  	words.each do |word|
  		if ! articles.include?(word)
  			word.capitalize!
  		end
  	end

  		if articles.include?(words[0])
  			words[0].capitalize!
  		end
  	@title = words.join(' ')
  end
end
