
class GameBoard
    attr_accessor :board, :player1, :player2, :winner
    def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = [['1', ' | ', '2', ' | ', '3'], 
    ['+', ' - ', '+', ' - ', '+'], 
    ['4', ' | ', '5', ' | ', '6'], 
    ['+', ' - ', '+', ' - ', '+'],
    ['7', ' | ', '8', ' | ', '9']]
    @win_pos = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
                [1, 4, 5],
                [2, 5, 8],
                [3, 6, 9],
                [1, 5, 9],
                [3, 5, 7]
              ]
    end
    def display_board
        @board.each do |arr|
            arr.length.times { |i| print arr[i] }
            puts
            
        end
    end
    def update_board(pos, player)
        if player.symbol === 'X'
            sym = "X"
            else
            sym = "O"
            end
            case pos
            when 1
              board[0][0] = sym
            when 2
              board[0][2] = sym
            when 3
              board[0][4] = sym
            when 4
              board[2][0] = sym
            when 5
              board[2][2] = sym
            when 6
              board[2][4] = sym
            when 7
              board[4][0] = sym
           when 8
              board[4][2] = sym
           when 9
              board[4][4] = sym
           else
              puts "Invalid position"
           end
    end
   
end