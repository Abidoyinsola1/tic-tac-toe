puts "Welcome to our tic-tac-toe game"
puts "Enter your name: "
player1 = gets.chomp
puts "Enter your name: "
player2 = gets.chomp

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "#{board[0]} | #{board[1]} | #{board[2]}"
puts "---------" 
puts "#{board[3]} | #{board[4]} | #{board[5]}"
puts "---------"
puts "#{board[6]} | #{board[7]} | #{board[8]}"

puts "#{player1} pick a number from 1-9"
move1 = gets.chomp
puts "#{player2} pick a number from 1-9"
move2 = gets.chomp
