class TicTacToe

	def initialize(input)
		@board = input.split('').map {|value| value.to_s}
		if input.length == 9
			@board
		else
			raise "You need a board of 3x3 in order to play."
		end
	end

	def valid?
		return @board.count('X') - @board.count('0') <= 1 && @board.count('X') - @board.count('0') >= 0
	end

end