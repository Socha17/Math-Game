
module MathGame
  class Player

    attr_accessor :player1_lives, :player2_lives

    def initialize(player1_lives, player2_lives)
      @player1_lives = player1_lives
      @player2_lives = player2_lives
    end

    def player1_loss
      # binding.pry
      @player1_lives = @player1_lives - 1
    end

    def player2_loss
      # binding.pry
      @player2_lives = @player2_lives - 1
    end

  end
end
