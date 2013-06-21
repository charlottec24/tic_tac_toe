require_relative './lib/tic_tac_toe'
require 'sinatra/base'
require 'sinatra/flash'

class TicTacToeWeb < Sinatra::Base

  configure do
    use(Rack::Session::Cookie, 
      :key => 'rack.session',
      :path => '/',
      :expire_after => 2592000, # In seconds
      :secret => 'I am the secret code to encrypt the cookie')
  end

  helpers do
    def generate_new_game
      if session[:current_sudoku] && session[:set_sudoku]
        sudoku_puzzle = Sudoku.new(session[:current_sudoku])
      else
        sudoku_puzzle = Sudoku.generate(difficulty)
        session[:set_sudoku] = sudoku_puzzle.to_s
        session[:current_sudoku] = sudoku_puzzle.to_s
      end
    end
  end

end