#!/usr/bin/env ruby

board = [[' 1 ', ' | ', ' 2 ', ' | ', ' 3 '], 
         [' + ', ' - ', ' + ', ' - ', ' + '], 
         [' 4 ', ' | ', ' 5 ', ' | ', ' 6 '], 
         [' + ', ' - ', ' + ', ' - ', ' +'],
         [' 7 ', ' | ', ' 8 ', ' | ', ' 9 ']];
def dis_board(board) 
  board.each do |arr|
    arr.length.times { |i| print arr[i] }
    puts
  end
end

def set_position(board, pos)
  symbol = "X";
  case pos
  when 1
    board[0][0] = symbol
  when 2
    board[0][2] = symbol
  when 3
    board[0][4] = symbol
  when 4
    board[2][0] = symbol
  when 5
    board[2][2] = symbol
  when 6
    board[2][4] = symbol
  when 7
    board[4][0] = symbol
 when 8
    board[4][2] = symbol
 when 9
    board[4][4] = symbol
  else
    puts "Invalid postion"
  end
end

def start_game(board)
puts "Welcome to our tic-tac-toe game"
puts "Enter your name: "
player1 = gets.chomp
puts "Enter your name: "
player2 = gets.chomp
# ra = rand(2) + 1
# rand_player = ra == 1 ? player1 : player2 
# puts "${rand_player}, enter your symbol: "

# sym = gets.chomp

3.times do || 
    puts "#{player1}, enter your position: "
    pos = gets.chomp.to_i
    set_position(board, pos);
    dis_board(board)
    puts "#{player2}, enter your position: "
    pos = gets.chomp.to_i
    set_position(board, pos);
    dis_board(board)
end

end

start_game(board)

