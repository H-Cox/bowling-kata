require_relative '../src/bowling'

describe BowlingGame do
  describe ".startGame" do
	context "Start game with score zero" do
	  it "has score zero" do
		game = BowlingGame.new
		game.startGame
		expect(game.score).to eq(0)
	  end
	end

	context "Start game on round 1" do
	  it "has round 1" do
		game = BowlingGame.new
		game.startGame
		expect(game.round).to eq(1)
	  end
	end
  end

  describe ".bowl" do

    context "given zero" do
      it "returns zero" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(0)
        expect(game.score).to eql(0)
      end
    end

    context "given 1" do
      it "returns 1" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(1)
        expect(game.score).to eql(1)
      end
    end 

    context "score of 10 is a strike and go to next round" do
      it "round increases" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(10)
        expect(game.round).to eql(2)
      end
    end 

    context "score of less than 10 doesn't increase round" do
      it "round stays the same" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(9)
        expect(game.round).to eql(1)
      end
    end

    context "after 2nd bowl in round go to next round" do
      it "round stays the same" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(4)
      	game.bowl(1)
        expect(game.round).to eql(2)
      end
    end

	context "play through 3 rounds (no strike/spare)" do
      it "round goes to 4" do
      	game = BowlingGame.new
      	game.startGame
      	scores = [1,2,3,4,5,6]
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.round).to eql(4)
      end
    end

	context "play through 3 rounds (no strike/spare)" do
      it "score goes to 21" do
      	game = BowlingGame.new
      	game.startGame
      	scores = [1,2,3,4,5,6]
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(21)
      end
    end

    context "correct spare scoring rule" do
      it "score goes to 16" do
      	game = BowlingGame.new
      	game.startGame
      	scores = [8,2,3]
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(16)
      end      	
    end

    context "correct strike scoring rule" do
      it "score goes to 47" do
      	game = BowlingGame.new
      	game.startGame
      	scores = [10,10,3,4]
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(47)
      end      	
    end

    context "a game with no final strike/spare ends in 10 rounds" do
      it "game ends after 10 rounds" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(20)
      end      	
    end

    context "a game ends with a spare" do
      it "final roll counts" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(29)
      end      	
    end

    context "a game ends with a strike" do
      it "final roll counts" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [10,7,3,9,0,10,0,8,8,2,0,6,10,10,10,8,1]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(167)
      end      	
    end

    context "a perfect game" do
      it "score is 300" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [10,10,10,10,10,10,10,10,10,10,10,10]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(300)
      end      	
    end

    context "example game" do
      it "score is 131" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [2,4,1,0,10,5,5,9,0,10,10,4,4,7,3,4,6,2]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(131)
      end      	
    end

    context "another example game" do
      it "score is 99" do
      	game = BowlingGame.new
      	game.startGame
      	# do 10 rounds
      	scores = [4,6,10,8,1,5,2,4,6,6,0,1,0,2,3,4,3,7,2]
      	scores.each do |item|
      		game.bowl(item)
      	end
      	# do some more and ensure score doesn't change
      	scores.each do |item|
      		game.bowl(item)
      	end
        expect(game.score).to eql(99)
      end      	
    end

  end
end