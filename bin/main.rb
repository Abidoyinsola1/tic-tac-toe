#!/usr/bin/env ruby
require_relative '../lib/game_board'
require_relative '../lib/player'

def start_game
puts "Welcome to our tic-tac-toe game"

puts "Enter your name: "
first_player_name = gets.chomp
first_player_sym = "X"

player1 = Player.new(first_player_name, first_player_sym)

puts "Enter your name: "
second_player_name = gets.chomp
second_player_sym = "O"

player2 = Player.new(second_player_name, second_player_sym)

game_board = GameBoard.new(player1, player2)

game_board.display_board
end



start_game