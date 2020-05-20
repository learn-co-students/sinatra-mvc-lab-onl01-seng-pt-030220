class PigLatinizer

	def piglatinize(word)
		if word.index(/[aeiou]/) == 0
			word += 'w'
		end
		while word.index(/[aeiou]/) != 0
			character = word[0]
			word = word[1..-1] + character
		end
		word += 'ay'
	end

	def to_s
		@pig_latin
	end
end