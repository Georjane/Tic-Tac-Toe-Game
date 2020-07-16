require_relative 'board.rb'

class Game < Board
  def valid_move?(num)
    board.include?(num)
  end

  def invalid
    'INVALID MOVE!!! Please try again'
  end

  private

  def move(num)
    count(num)
    swap(num) if valid_move?(num)
    display_board
  end

  def count(num)
    @counts += 1 if valid_move?(num)
  end
end
