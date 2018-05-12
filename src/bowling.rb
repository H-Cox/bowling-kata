class BowlingGame
	def startGame
		@score = 0
		@round = 1
	end

	def bowl(numeric)
		if numeric == 10
			@round = 2
		end

		@score = numeric
	end

	def score
		@score
	end
	def round
		@round
	end
end