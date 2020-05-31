class PigLatinizer

    def piglatinize(phrase)

    phrase.split(" ").map do |word|
            
    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
        word + "way"
    else
      consonants = []
      consonants << word[0]
        
    if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]
        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
        end
    end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end

        end.join(" ")
    end
end

# word.split.map { |word| word.split }.join(' ')
#=> "hist si na xamplee"

# transferring the initial consonant (bcdfghjklmnpqrstvwxyz)  or consonant blend 
# (bl, br, ch, ck, cl, cr, dr, fl, fr, gh, gl, gr, ng, ph, pl, pr, qu, sc, sh, sk, sl, sm, sn, sp, st, sw, th, tr, tw, wh, wr) 
# of each word to the end of the word along with the syllable "-ay". 

# If the word begins with a vowel (a, e, i, o, u), then we add "way" to the end of the word
