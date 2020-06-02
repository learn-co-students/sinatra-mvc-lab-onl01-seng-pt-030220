class PigLatinizer
    

    def initialize()
        
    end

    def split_sentence(user_text)
        user_text.split(" ")
    end

    def piglatinize(user_text)
        if user_text.split(" ").length > 1
            words = split_sentence(user_text)
            new_words = []
            words.each do |word|
                new_words << piglatinize_word(word)
            end
            new_words.join(" ")
        else
            word = piglatinize_word(user_text)
        end
    end

    def piglatinize_word(word)
        if word.start_with?('a','e','i','o','u','A','E','I','O','U')
            word = word + "way"
            # binding.pry
        else
            split_index = 0
            word.chars.each_with_index do |letter, index|
                if split_index == 0
                    # binding.pry
                    if ['a','e','i','o','u'].include?(letter)
                        split_index = index
                        # binding.pry
                    end
                end
            end
            word = word[split_index..] + word[0..(split_index-1)] + "ay"
        end
        word
    end
end

