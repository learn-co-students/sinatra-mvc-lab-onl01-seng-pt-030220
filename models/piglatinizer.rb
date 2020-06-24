class PigLatinizer
    attr_accessor :user_phrase, :new_phrase
    
    
    def initialize(user_phrase)
        @user_phrase = user_phrase
        @big_array_of_pig_latin_words = [] #!<---I DONT REALLY KNOW WHERE TO PUT THIS..random to set it here..
        method_that_brings_it_all_together

        #! SHOULD I TRETURN SOMETHING HERE???
    end




    
    
    
    def downcase_string
      @downcased_string = @user_phrase.downcase
    end
    
    def split_downcased_string
      @split_string = @downcased_string.split(" ")
    end
    
    def split_elements_into_letters
      @word_letters_array = @split_string.map{|word| word.split("")}
    end
    
    def iterate_into_piggy_talk
      @word_letters_array.each do |word_letters_element|
        do_the_pig_latin(word_letters_element)    
      end
    end
    
    
    def do_the_pig_latin(argument) #<-------HAND IN ["a", "b", "c"]
      pig_werd = []
    
      word_letters = argument
    
      vowels = ["a", "e", "i", "o", "u"]
      consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    
    
      if vowels.include?(word_letters[0]) && !vowels.include?(word_letters[1])
        word_letters << "way"
        werd = word_letters.join
        
        pig_werd << werd
        
    
      elsif consonants.include?(word_letters[0]) && !consonants.include?(word_letters[1])
        rip = word_letters.shift
        word_letters.push(rip)
        word_letters << "ay"
        werd = word_letters.join
        
        pig_werd << werd
    
    
      elsif consonants.include?(word_letters[0]) && consonants.include?(word_letters[1]) && !consonants.include?(word_letters[2])
        rip = word_letters.shift(2)
        word_letters.push(rip)
        word_letters << "ay"
        werd = word_letters.join
        
        pig_werd << werd
    
    
      elsif consonants.include?(word_letters[0]) && consonants.include?(word_letters[1]) && consonants.include?(word_letters[2]) && !consonants.include?(word_letters[3])
        rip = word_letters.shift(3)
        word_letters.push(rip)
        word_letters << "ay"
        werd = word_letters.join
        
        pig_werd << werd
    
    
      else
        puts "ERROR ERROR BLEEP BLOOP : I live in ELSE of IF STATEMENT in DO_THE_PIG_LATIN"
    
      end

        @big_array_of_pig_latin_words << pig_werd
    
    end #<---methodEND
    
    def join_it_up
      @new_phrase = @big_array_of_pig_latin_words.join(" ")
    end
    
    def method_that_brings_it_all_together
        downcase_string
        split_downcased_string
        split_elements_into_letters
        iterate_into_piggy_talk
        join_it_up
        # @new_phrase #! I AM NOT SURE HOW THIS METHOD SHOULD RETURN FOR THE CONTROLLER
      end
      






















end #<----classEND   
