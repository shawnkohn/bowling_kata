# game.rb

class Game

	def initialize
		@rolls = Array.new
		@@NumFrames = 10
	end

	def roll(pins)
		@rolls.push(pins)
	end

	def score
		totalScore = 0
		frameIndex = 0

		(1..@@NumFrames).each do
			if isStrike(frameIndex)
				totalScore += 10 + strikeBonus(frameIndex)
				frameIndex += 1
			elsif isSpare(frameIndex)
				totalScore += 10 + spareBonus(frameIndex)
				frameIndex += 2
			else
				totalScore += @rolls[frameIndex] + @rolls[frameIndex+1]
				frameIndex += 2
			end
		end

		totalScore
	end

	private 
		def isStrike(frameIndex)
			@rolls[frameIndex] == 10
		end

		def isSpare(frameIndex)
			@rolls[frameIndex] + @rolls[frameIndex+1] == 10
		end

		def strikeBonus(frameIndex)
			@rolls[frameIndex+1] + @rolls[frameIndex+2]
		end

		def spareBonus(frameIndex)
			@rolls[frameIndex+2]
		end


end
