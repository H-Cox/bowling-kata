require_relative 'src/bowling'

game = BowlingGame.new

puts game.score
puts game.round


scores = [2,4,1,0,10,5,5,9,0,10,10,4,4,7,3,4,6,2]
scores.each do |item|
    game.bowl(item)

    string = "Current score: #{game.score}. Current round: #{game.round}."
    puts string
end