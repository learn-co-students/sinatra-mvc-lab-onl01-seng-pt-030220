require "pry"
class PigLatinizer

def piglatinize(s)
  arr=[]
  s.split(' ').each do |i|
    vowel_index = i.index(/[aAeEiIoOuU]/)
  if vowel(i)
       arr << (i+"way")
  else

     cons=i.slice(0..vowel_index-1)
       arr << (i[vowel_index..-1]+cons+"ay")

   end

end
  arr.join(' ')
end

end

def vowel(i)
  i.downcase.start_with?(/[aeoui]/)
end

def consonant(i)
  i.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
end
