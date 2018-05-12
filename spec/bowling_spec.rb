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
  end

  describe ".bowl" do

    context "given zero" do
      it "returns zero" do
      	game = BowlingGame.new
      	score = game.bowl(0)
        expect(score).to eql(0)
      end
    end

    context "given 1" do
      it "returns 1" do
      	game = BowlingGame.new
      	score = game.bowl(1)
        expect(score).to eql(1)
      end
    end 

  end
end