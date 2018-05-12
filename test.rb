require_relative 'src/bowling'

game = BowlingGame.new
game.startGame

scores = [10,10,3,4,1,2,3,4,5,6,1,2,3,4,5,6,2,3]
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