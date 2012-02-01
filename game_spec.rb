# game_spec.rb

require './game'

describe "Game" do
	describe "#Score" do
		it "Should be 0 when rolling all gutter balls" do
			game = Game.new
			20.times { game.roll(0) }
			game.score.should == 0
		end

		it "Should be 20 when rolling all ones" do
			game = Game.new
			20.times { game.roll(1) }
			game.score.should == 20
		end
	end
end
