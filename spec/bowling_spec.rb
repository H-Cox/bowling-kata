require_relative '../src/bowling'

describe BowlingGame do
	describe ".bowl" do
    context "given zero" do
      it "returns zero" do
      	game = BowlingGame.new
      	score = game.bowl(0)

        expect(score).to eql(0)
      end
    end
  end
end