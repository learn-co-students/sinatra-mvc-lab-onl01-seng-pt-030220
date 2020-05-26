class PigLatinizer
  # attr_reader :words

    # def initialize(words)
    #   @words = words.downcase
    # end

    def piglatinize(str)
      if str.split(" ").length == 1
        piglatinize_word(str)
      else
        piglatinize_sentence(str)
      end
    end

    def consonant?(character)
      !character.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
      # We are checking for a word that begins with a vowel
      if !consonant?(word[0])
        word = word + "w"
        #checking for a word that starts with 3 consonants
      elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
        #checking for a word that starts with 2 consonants
      elsif consonant?(word[0]) && consonant?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end

    def piglatinize_sentence(sentence)
      sentence = sentence.split.collect {|word| piglatinize_word(word)}
      sentence.join(" ")
    end
end
