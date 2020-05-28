class PigLatinizer


  def piglatinize(user_input)
    string = user_input.split(" ")
    new_word = string.map {|word| piglatinize_word(word)}
    new_word = new_word.join(" ")
  end

  def piglatinize_word(word)
    first = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first)
      word << "way"

    else
      cons = []
      cons << word[0]

      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        cons << word[1]

        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          cons << word[2]

        end
      end
      "#{word[cons.length..-1] + cons.join + "ay"}"
    end

  end
end