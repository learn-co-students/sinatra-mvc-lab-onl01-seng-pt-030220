require "pry"
class PigLatinizer

def piglatinize(s)
  arr=[]
  s.split(' ').each do |i|
   if i.length > 1
     if i[1].downcase.start_with?(/[aeoui]/) && i[0].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
       arr << (i[1..-1]+i[0]+"ay")
     end

     if i[0].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/) &&  i[1].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/) && i[2].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
         arr << (i[3..-1]+i[0]+i[1]+i[2]+"ay")
     elsif i[0].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/) &&  i[1].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
         arr << (i[2..-1]+i[0]+i[1]+"ay")
     end
     if i[0].downcase.start_with?(/[aeoui]/)
        arr << (i+"way")
      end
   end

if i.length ==1
 if i[0].downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
      arr << (i[0]+"ay")
 elsif  i[0].downcase.start_with?(/[aeoui]/)
      arr << (i+"way")
 end
end

end
  arr.join(' ')
end


end
