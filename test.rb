require_relative 'src/bowling'

game = BowlingGame.new
game.startGame

scores = [10,10,10,10,10,10,10,10,10,10,10,10]
scores.each do |item|
    game.bowl(item)
    puts game.score
    puts game.round
end
      	# do some more and ensure score doesn't change
scores.each do |item|
	game.bowl(item)
	puts game.score
	puts game.round
end