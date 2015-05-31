class Book
	attr_accessor :title

	def title=(phrase)
		exceptions = ["to", "and", "in", "the", "a", "an", "of"]
    phrase_list = phrase.split
		phrase_list.map do |word|
		  if exceptions.include?(word) && (word != phrase_list[0])
		    word
      else
        word.capitalize!
		  end
    end
    @title = phrase_list.join(' ')
  end
end