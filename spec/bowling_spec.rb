require_relative '../src/bowling'

RSpec.describe Bowling do
  describe "#bowl" do

  	it "returns 0 for 0" do
  		bowl = Bowling.bowl 0
  		expect(bowl).to eq(0)
  	end

    
  end
end