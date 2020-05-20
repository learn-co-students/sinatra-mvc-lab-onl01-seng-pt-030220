class PigLatinizer

	def piglatinize(text)
		@original_text = text
		@words = @original_text.split(' ')
		@words = @words.map do |word|
			if word.index(/[aeiouAEIOU]/) == 0
				word += 'w'
			end
			while word.index(/[aeiouAEIOU]/) != 0
				character = word[0]
				word = word[1..-1] + character
			end
			word += 'ay'
		end
		@pig_latin = @words.join(' ')
	end

end