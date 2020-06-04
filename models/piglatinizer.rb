class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize(str)
    if single_word?(str)
      if str.downcase.index(/[aeiou]/) == 0
        str + "way"
      else
        vowel_index = str.index(/[aeiou]/)
        front_end = str.slice!(0..vowel_index-1)
        str + front_end +"ay"
      end
    else
    word_array = str.split(" ")
    @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
    end
  end


  def to_pig_latin(phrase)
    word_array = phrase.split(" ")
    @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
  end

  def single_word?(string)
    !string.strip.include? " "
  end
end