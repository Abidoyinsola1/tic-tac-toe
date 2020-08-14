require 'game_board'
require 'player'

describe GameBoard do

  describe '#update_board' do
    it 'changes a character in one of the strings in the @board array from an integer to a symbol' do
      player1 = Player.new('Joe', 'O')
      player2 = Player.new('Abiola', 'X')
      game_board = GameBoard.new(player1, player2)
      game_board.update_board(1, player1)
      expect(game_board.board[0][0]).to eql('O')
    end

    it 'does not change any of the strings if the position passed as an argument is invalid' do
      player1 = Player.new('Joe', 'O')
      player2 = Player.new('Abiola', 'X')
      game_board = GameBoard.new(player1, player2)
      board_before = game_board.board
      game_board.update_board(10, player1)
      board_after = game_board.board
      expect(board_before != board_after).not_to eql(true)
    end
  end

  describe '#check_pos?' do
    it "returns false if the position exists in either player's @position array" do
      player1 = Player.new('Joe', 'O')
      player2 = Player.new('Abiola', 'X')
      game_board = GameBoard.new(player1, player2)
      player1.position.push[1]
      expect(game_board.check_pos?(1)).to eql(false)
    end
  end

  describe '#check_winner?' do
    it "returns false if the player does not meet the winning conditions" do
      player1 = Player.new('Joe', 'O')
      player2 = Player.new('Abiola', 'X')
      game_board = GameBoard.new(player1, player2)
      player1.position.push(1, 3, 4, 6, 8)
      player2.position.push(2, 5, 7, 9)
      expect(game_board.check_winner?(player1)).to eql(false)
      expect(game_board.check_winner?(player2)).to eql(false)
    end

    it "does not return false if the player meets the winning conditions" do
      player1 = Player.new('Joe', 'O')
      player2 = Player.new('Abiola', 'X')
      game_board = GameBoard.new(player1, player2)
      player1.position.push(1, 2, 3)
      expect(game_board.check_winner?(player1)).not_to eql(false)
    end
  end
end
