#require 'pry'
class PigLatinizer
    
    
   

    def piglatinize(sentence)
        words = sentence.split
        updated_sentence = []
        words.each do |char|
            if  char.split("").first.match(/[aAeEiIoOuU]/)
                new_word = char + "way"
            else
                if char.split("").length > 1
                    update = char.split(/[aAeEiIoOuU]/,2)
                    letter = char.split("").detect{ |i| i.match(/^[aAeEiIoOuU]/)}
                    new_word = letter[0] + update.reverse.join("") + "ay"
                else
                    new_word = char +  "ay"
                end
            end
            updated_sentence << new_word
        end
        updated_sentence.join(" ")
    end
end