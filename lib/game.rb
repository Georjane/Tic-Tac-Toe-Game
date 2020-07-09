require_relative 'board.rb'

class Game < Board 

  def valid_move?(num)
    board.include?(num)
  end

  def move(num)
    count(num)
    if valid_move?(num)
      swap(num)
    end
    display_board()
  end

  def count(num)    
    if valid_move?(num)
      @counts += 1
    end
  end

  def invalid 
    "INVALID MOVE!!! Please try again"
  end

end