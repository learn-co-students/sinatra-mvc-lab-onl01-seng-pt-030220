require 'pry'
class PigLatinizer
    def to_pig_latin(word)
        if word.downcase.index(/[aeiou]/) == 0
            word +"way"
        else
            v_index = word.index(/[aeiou]/)
            front_end = word.slice!(0..v_index-1)
            word + front_end +"ay"
        end
    end

    def piglatinize(phrase)
        words = phrase.split.collect {|word| to_pig_latin(word)}.join(" ")
    end
end