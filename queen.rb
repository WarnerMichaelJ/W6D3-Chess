require_relative 'piece.rb'
require_relative 'slideable.rb'
require_relative 'stepable.rb'

class Queen < Piece
    include Slideable
    attr_accessor :position

    include Stepable

    def initialize(board, position)
        @position = position 
        @board = board
    end

end