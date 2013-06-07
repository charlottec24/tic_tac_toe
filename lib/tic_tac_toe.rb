class TicTacToe

	def initialize(input)
		@board = []
		if input.length == 9
			@board << input
		else
			raise "You need a board of 3x3 in order to play."
		end
	end

	# def valid?

	# end

end