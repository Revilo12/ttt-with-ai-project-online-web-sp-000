module Players
  class Computer < Player

    VALIDMOVES = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

    def move(board)
      VALIDMOVES.sample
    end

    def ai_move(board, active_token)
      #first check to see if it is over
      if board.over?
        if board.draw?
          0
        elsif board.winner.token == active_token
          10
        else
          -10
        end
      end





    end
  end
end
