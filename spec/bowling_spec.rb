require_relative '../src/bowling'

RSpec.describe Bowling do
  describe "#bowl" do

  	it "returns 0 for 0" do
  		bowl = Bowling.bowl 0
  		expect(bowl).to eq(0)
  	end

    it "returns 1 for 1" do
    	bowl = Bowling.bowl 1
    	expect(bowl).to eq(1)
    end
  end
end