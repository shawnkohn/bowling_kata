# game_spec.rb

require './game'

describe "Game" do
	describe "#Score" do
		
		before :each do
			@game = Game.new
		end

		def rollMany(rolls, pins)
			(1..rolls).each { @game.roll(pins) }
		end
		
		it "Should be 0 when rolling all gutter balls" do
			rollMany(20, 0)	
			@game.score.should == 0
		end

		it "Should be 20 when rolling all ones" do
			rollMany(20, 1)
			@game.score.should == 20
		end

		it "Should be 16 when rolling a single spare (5, 5, 3)" do
			@game.roll(5)
			@game.roll(5)
			@game.roll(3)
			rollMany(17, 0)
			@game.score.should == 16
		end
	end
end
