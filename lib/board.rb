require_relative 'player.rb'

class Board < Player
  attr_accessor :board, :player2, :player1

  def initialize(player1, player2)
    @board = (1..9).to_a
    @player1 = player1
    @player2 = player2
    @counts = 0
    @wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  end

  def display_board
    "\n #{board[0]} | #{board[1]} | #{board[2]} \n ---------\n #{board[3]} | #{board[4]} | #{board[5]} \n ---------\n #{board[6]} | #{board[7]} | #{board[8]} \n\n"
  end

  def swap(num)
    if @counts.odd?
    board[num - 1] = player1.piece_x
    else
    board[num - 1] = player2.piece_o
    end
  end

end