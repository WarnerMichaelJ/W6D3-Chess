require_relative 'piece.rb'
require_relative 'slideable.rb'
require_relative 'stepable.rb'

class Knight < Piece
    # include Slideable
    attr_accessor :position

    include Stepable

    def initialize(board, position)
        @position = position 
        @board = board
        @symbol = 'KN'
    end

end