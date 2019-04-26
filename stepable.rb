
module Stepable

 def moves
    reference_pos = @position.dup
    possible_moves = []
    #example position = [3,3]
    #v = [0, -1]    
    moves_diff.each do |k, v|
        x, y = v
        xref, yref = reference_pos
        xref += x
        yref += y
        #[xref, yref]
        pos = [xref, yref]
        if self.board.valid_pos?(pos)
            possible_moves << [xref, yref]
        end
    end

   possible_moves

 end    
 
end


