require 'pry'
class PigLatinizer

  def piglatinize(text)
    text.split(' ').map do |word|
      if starts_with_vowel(word)
        starts_with_vowel(word)
      else 
        starts_with_consonant(word)
      end 
    end.join(' ') 
  end 
    
  def starts_with_consonant(text)
    new_text = text.chars
    consonants = "bcdfghjklmnpqrstvwxyz"
    text.chars.each do |letter|
      if consonants.include?(letter.downcase) 
        new_text = new_text.rotate
      else
        break
      end
    end
    "#{new_text.join}ay"
  end    
    
  def starts_with_vowel(text)
    new_text = text.downcase
    vowels = "aeiou"
    if vowels.include?(new_text[0])
      "#{text}way"
    end 
  end

end 