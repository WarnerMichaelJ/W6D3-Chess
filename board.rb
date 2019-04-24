require_relative "piece.rb"

class Board

    attr_accessor :grid

    def initialize
        @sentinel = Piece.new
        @grid = Array.new(8) { Array.new(8) { @sentinel } }

    end
 
    def move_piece(start_pos, end_pos)
        row_1, col_1 = start_pos
        row_2, col_2 = end_pos
        # self.grid[row_1][col_1] = self.grid[row_2][col_2]
        piece_to_move = self[[row_1,col_1]]
        self[[row_2,col_2]] = piece_to_move
        self[[row_1,col_1]] = nil
    end
   
    def [](pos)
        row, col = pos
        self.grid[row][col]     #@grid(0,0) will return value at that current position
    end

    def []=(pos, piece_instance)
        row, col = pos
        self.grid[row][col] = piece_instance     #this will set (pos ex: [0,0] equal to value )
    end

    def valid_pos?(pos) 
        row, col = pos
        # if self.grid[row][col]

        # end

        (row <= 7 && row >= 0) && (col <= 7 && col >= 0)
    end

end

