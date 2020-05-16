require "pry"
class PigLatinizer

def piglatinize(s)
  arr=[]
  s.split(' ').each do |i|
   if i.length > 1
     if vowel(i[1]) && consonant(i)
       arr << (i[1..-1]+i[0]+"ay")
     end
     if consonant(i[0]) && consonant(i[1])  && consonant(i[2])
         arr << (i[3..-1]+i[0]+i[1]+i[2]+"ay")
     elsif consonant(i[0]) &&  consonant(i[1])
         arr << (i[2..-1]+i[0]+i[1]+"ay")
     end
     if vowel(i[0])
        arr << (i+"way")
      end
   end

if i.length ==1
 if consonant(i[0])
      arr << (i[0]+"ay")
 elsif  vowel(i[0])
      arr << (i+"way")
  end
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
