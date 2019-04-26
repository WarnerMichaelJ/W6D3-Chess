require_relative 'piece.rb'
require_relative 'slideable.rb'
require_relative 'stepable.rb'


class King < Piece
    # include Slideable
    attr_accessor :position
    attr_reader :symbol
    
    include Stepable

    MOVES_DIFF = {
        left: [0, -1],
        right: [0, 1],
        up: [-1, 0],
        down: [1, 0],
        up_left: [-1, -1],
        up_right:[-1, 1],
        down_left: [1, -1],
        down_right: [1, 1]
        }

    def initialize(board, position)
        @position = position 
        @board = board
        @symbol = 'K'
    end

    def moves_diff 
        MOVES_DIFF
    end

end