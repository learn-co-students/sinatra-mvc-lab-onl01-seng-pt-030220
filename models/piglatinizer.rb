class PigLatinizer

	def initialize(text)
		@original_text = text.downcase
		@words = @original_text.split(' ')
		pig_latinize
		@pig_latin = @words.join(' ')
	end

	def pig_latinize
		@words = @words.map do |word|
			if word.index(/[aeiou]/) == 0
				word += 'w'
			end
			while word.index(/[aeiou]/) != 0
				character = word[0]
				word = word[1..-1] + character
			end
			word += 'ay'
		end
	end

	def to_s
		@pig_latin
	end
end

puts PigLatinizer.new('Example')