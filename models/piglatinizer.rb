class PigLatinizer

attr_accessor :text

def initialize
@text = text
end



def piglatinize(input)
  a = input
  new_a = a.split(" ")
  b = new_a.map{|word|pig_word(word)}
  b.join(" ")

end

def pig_word(message)
  vowels = ["a","e","i","o","u"]
  first_letter = message[0].downcase
  array = []
  if vowels.include?(first_letter)
    "#{message}way"
  else
    message_array = message.split("")
    array<<message_array[0]
    message_array.shift
    if vowels.include?message_array[0]
      "#{message_array.join("") + array.join("") + "ay"}"
    else
      array << message_array[0]
      message_array.shift
      if vowels.include?message_array[0]
        a = "#{message_array.join("") + array.join("") + "ay"}"
      else
      array << message_array[0]
      message_array.shift
      if vowels.include?message_array[0]
        a = "#{message_array.join("") + array.join("") + "ay"}"
      else
      array << message_array[0]
      message_array.shift
      if vowels.include?message_array[0]
        a = "#{message_array.join("") + array.join("") + "ay"}"
          end
        end
      end
    end
  end
end

end
