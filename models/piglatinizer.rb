class PigLatinizer

    # attr_reader :text

    # def initialize(text)
    #     @text = text.downcase
    # end
    
    def piglatinize(text)
        phrase = text.split(" ").map {|word| to_pig_latin(word)}
        phrase.join(" ")
    end


    def to_pig_latin(word)
        if word.downcase.start_with?(/[aeiou]/)
            "#{word}way"
        else
            find_the_first_vowel = word.index(/[aeiou]/)
            remove_first_consonants = word.slice!(0..find_the_first_vowel-1)
            
            word + remove_first_consonants + "ay"
        end
    end



end