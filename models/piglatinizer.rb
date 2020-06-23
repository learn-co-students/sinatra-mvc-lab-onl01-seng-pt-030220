class PigLatinizer
    attr_accessor :words

    def initialize(words)
        @words = words
    end
#!=====================================================================brainstorm,bb♥
    - find pattern on wikipedia and specs and outline it
    - sample phrase, break it down, convert into usable datatype - ARRAY
    - use .map to create array
    - downcase it
    -break down each downcased word and break it up into letters
    -mix and match suffixes and prefixes - PATTERN IT
    -bring those new words together - join into a string

PATTERN IS:
 if word begins with
    vowel = ["a", "e", "i", "o", "u"]
    + "WAY" to end   <----   aWAY andWAY
    

if word begins with 
    consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
    move consonant to end of word + "AY"
end

if word begins with 
    consonant_cluster = consonant + consonant + consonant + vowel
                        consonant + consonant + vowel

   
end


consonant + consonant + consonant + vowel   <-----move ccc to end + 'ay'        
consonant + consonant + vowel               <-----move cc to end
consonant + vowel                           <-----move c to end
vowel                                       <-----at end + 'way'