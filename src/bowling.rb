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

		strikemultiply = 0
		if @strike2
			@strike2 = false
			strikemultiply += 1
		end

		if @strike1
			@strike2 = true
			@strike1 = false
			strikemultiply += 1
		end

		if numeric == 10
			@round = 2
			@strike1 = true
		end

		@previousRoll = numeric

		@score += numeric*(multi+strikemultiply)
	end

	def score
		@score
	end
	def round
		@round
	end
end