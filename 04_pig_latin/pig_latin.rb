def translate_word(word)
  num = word.length
  word_array = word.scan(/(qu|\w)/).flatten
  num.times do
    unless word_array[0].start_with?("a", "e", "i", "o", "u")
      word_array.rotate!
    end
  end
  word_array << "ay"
  word_array.join("")
end


def translate(sentence)
  sentence.split.map {|word| translate_word(word) }.join(" ")
end