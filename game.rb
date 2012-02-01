# game.rb

class Game

	def initialize
		@rolls = Array.new
	end

	def roll(pins)
		@rolls.push(pins)
	end

	def score
		totalScore = 0

		(0.step(@rolls.length-1, 2)).each { |i|
			if @rolls[i] + @rolls[i+1] == 10
				totalScore += @rolls[i+2]
			end
			totalScore += @rolls[i] + @rolls[i+1]
		}

		totalScore
	end

end
