require_relative 'player.rb'

class Board < Player
  attr_accessor :board, :player2, :player1, :counts

  def initialize(player1, player2)
    @board = (1..9).to_a
    @player1 = player1
    @player2 = player2
    @counts = 0
    @wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  end

  def display_board
    "
    #{board[0]} | #{board[1]} | #{board[2]}
    ---------
    #{board[3]} | #{board[4]} | #{board[5]}
    ---------
    #{board[6]} | #{board[7]} | #{board[8]} \n
    "
  end

  private

  def swap(num)
    board[num - 1] = if @counts.odd?
                       player1.piece_x
                     else
                       player2.piece_o
                     end
  end

  def won?
    @wins.each do |i|
      win_comb = [board[i[0]], board[i[1]], board[i[2]]]
      # rubocop: disable Style/GuardClause
      if win_comb.all? { |x| x == 'O' }
        return true
      elsif win_comb.all? { |x| x == 'X' }
        return true
      end
    end
    false
  end

  def winner
    @wins.each do |i|
      win_comb = [board[i[0]], board[i[1]], board[i[2]]]
      if win_comb.all? { |x| x == 'O' }
        return "The winner is #{player2.name}! Good job!!!"
        # rubocop: enable Style/GuardClause
      elsif win_comb.all? { |x| x == 'X' }
        return "The winner is #{player1.name}! Good job!!!"
      end
    end
  end
end
