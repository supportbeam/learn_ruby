def echo(phrase)
	"#{phrase}"
end

def shout(phrase)
	echo(phrase).upcase
end

def repeat(phrase, num=1)
	if num == 1
		echo(phrase) +" " + echo(phrase)
	else
		(" #{phrase}" * num).strip
	end
end

def start_of_word(word, num=1)
	word[0, num]
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	title = ""
	phrase = phrase.split
	phrase.each do |word| 
		if word == "and" || word == "over" || (word == "the" && word != phrase[0])
			title << " " + word
		else
			word.capitalize!
			title << " " + word
		end
	end
	title.strip
end
