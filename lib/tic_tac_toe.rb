class TicTacToe

	def initialize(input)
		raise "You need a board of 3x3 in order to play." unless input.length == 9
		@board = input.split('')
	end

	def valid?
		@board.count('X') - @board.count('0') <= 1 && @board.count('X') - @board.count('0') >= 0
	end

	def finished?
		indexes = [[0.1.2], [3,4,5]]
		indexes.any? {|i| @board.values}
		return true if @board.values_at(0,1,2).uniq.count == 1 || @board.values_at(3,4,5).uniq.count == 1 || @board.values_at(6,7,8).uniq.count == 1
		return true if @board.values_at(0,3,6).uniq.count == 1 || @board.values_at(1,4,7).uniq.count == 1 || @board.values_at(2,5,8).uniq.count == 1
		return true if @board.values_at(0,4,8).uniq.count == 1 || @board.values_at(2,4,6).uniq.count == 1
	end

	# def next_move
	# 	if @board.count('X') == 2 && @board.count('X') == @board.count('0')
			
	# end

end