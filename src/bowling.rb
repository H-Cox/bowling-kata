class BowlingGame
	def startGame
		@score = 0
		@round = 1
		@roundGo = 1
	end

	def bowl(numeric)
		multi = 1

		if @roundGo == 1
			@roundGo = 2
			@previousRoll = 0

			if @spare
				multi = 2
			end

		elsif @roundGo == 2
			@round += 1
			@roundGo = 1

			if @previousRoll+numeric == 10
				@spare = true
			end
			
		end

		if numeric == 10
			@round = 2
		end

		@previousRoll = numeric

		@score += numeric*multi
	end

	def score
		@score
	end
	def round
		@round
	end
end