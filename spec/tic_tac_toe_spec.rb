require './lib/board'
require './lib/game'
require './lib/player'

describe Board do
  let(:board_inst) { Board.new('Jane', 'John') }

  describe '#display_board' do
    it 'displays the gameboard' do
      expect(board_inst.display_board).to eql "
    1 | 2 | 3
    ---------
    4 | 5 | 6
    ---------
    7 | 8 | 9 \n
    "
    end
  end
end

describe Game do
  let(:game_inst) { Game.new(Player.new, Player.new) }

  describe '#valid_move?(num)' do
    it 'checks if entry is valid' do
      expect(game_inst.valid_move?(55)).to be false
    end

    it 'checks if entry is valid' do
      expect(game_inst.valid_move?('fgh')).to be false
    end
  end

  describe '#invalid' do
    it 'throws an error message' do
      expect(game_inst.invalid).to eq 'INVALID MOVE!!! Please try again'
    end
  end
end
