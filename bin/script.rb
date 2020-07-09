#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'


puts "Welcome to Jane's TIC TAC TOE Game \n\n"

puts "Player 1 please enter your name"
player1 = Player.new
player1.name = gets.chomp.capitalize
puts "#{player1.name} will be playing using '#{player1.piece_x}' piece\n\n"

puts "Player 2 please enter your name"
player2 = Player.new
player2.name = gets.chomp.capitalize
puts "#{player2.name} will be playing using '#{player2.piece_o}' piece\n\n"

gameboard = Board.new(player1, player2)
puts gameboard.display_board

play = Game.new(player1, player2)
turns = 1
while play.won?() == false && turns < 10
    if turns.odd?
        puts "#{player1.name} pick a number on the board (1-9)"
    else 
        puts "#{player2.name} pick a number on the board (1-9)"
    end 
    num = gets.chomp.to_i

    while play.valid_move?(num) == false
        puts play.invalid
        num = gets.chomp.to_i
        play.valid_move?(num)
    end

    puts play.move(num)
    
    if play.won?() 
        puts play.winner()
    end
    turns += 1
end
puts "Game Over!!!"