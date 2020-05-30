class PigLatinizer

    def piglatinize(string)
        string.split(" ").map {|word| piglatinize_string(word)}.join(" ")
    end

    def vowel?(char)
        char.match(/[aeiouAEIOU]/)
    end

    def piglatinize_string(word)
        if vowel?(word[0])
            pl_word = word + "way"
        elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
            pl_word = word.slice(3..word.length) + word.slice(0, 3) + "ay"
        elsif !vowel?(word[0]) && !vowel?(word[1])
            pl_word = word.slice(2..word.length) + word.slice(0, 2) + "ay"
        else
            pl_word = word.slice(1..word.length) + word.slice(0) + "ay"
        end
        pl_word
    end
end