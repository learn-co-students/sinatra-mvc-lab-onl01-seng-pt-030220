class PigLatinizer
  def piglatinize(str)
    str = str.split(" ")
    wordarr = []
    str.map do |n|
      if n.start_with?('a','e','i','o','u', 'A', 'E', 'I','O', 'U')
        wordarr << n + "way"
      else
        word = n.split("")
        letter = word[0]
        arrdup = word
        i = 0
        str = ""
        while i < word.length
          if n[i].start_with?('a','e','i','o','u', 'A', 'E', 'I','O', 'U') == false
            str += n[i]
              arrdup.shift
            else
              break
          end
          i += 1
        end
        word = arrdup
        wordarr << word.join("") + str + "ay"
      end
    end
    wordarr = wordarr.join(" ")
  end
end
