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

end