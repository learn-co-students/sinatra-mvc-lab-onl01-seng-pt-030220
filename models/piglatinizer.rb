class PigLatinizer

  def piglatinize(input_string)
    input_string.split(" ").map {|word| piglatinize_word(word)}.join(" ")
  end

  def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])    # vowel
      word_changed = word + "way"
      # three consonants
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word_changed = word.slice(3..word.length) + word.slice(0, 3) + "ay"
      # two consonants
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word_changed = word.slice(2..word.length) + word.slice(0, 2) + "ay"
     # one consonant
    else
      word_changed = word.slice(1..word.length) + word.slice(0) + "ay"
    end
    word_changed
  end



end