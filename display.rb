require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
class Display   

    attr_reader :cursor, :board
    
    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
        
    end

    def render #render all positions green..iterate over board, print each square, *hits square cursor is on* , if cursor matches current position, display position in red
        x, y = self.cursor.cursor_pos
        self.board.grid.each_with_index do |row, idx1|
            row.each_with_index do |col, idx2|           #line break at the end of each row, print out the rows in a nice fashion
                if idx1 == row && idx2 == y
                    print " X ".red 
                else
                    print " X ".green
                end
            end
            puts
        end

        self.cursor.cursor_pos.red
    end    

    def test
        loop do 
            self.render
            self.cursor.get_input
        end
    end

end

 d = Display.new(Board.new)
# # d.render
  d.test