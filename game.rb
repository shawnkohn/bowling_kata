# game.rb

class Game

	def initialize
		@totalScore = 0
	end

	def roll(pins)
		@totalScore += pins
	end

	def score
		@totalScore
	end

end
