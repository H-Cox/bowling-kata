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
      	game.bowl(0)
        expect(game.score).to eql(0)
      end
    end

    context "given 1" do
      it "returns 1" do
      	game = BowlingGame.new
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

    context "two bowls in same round sum to 10, spare and round increases" do
      it "round stays the same" do
      	game = BowlingGame.new
      	game.startGame
      	game.bowl(9)
      	game.bowl(1)
        expect(game.round).to eql(2)
      end
    end 
  end
end