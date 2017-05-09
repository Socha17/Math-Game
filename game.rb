
module MathGame
  class Game

    attr_accessor :turns, :score_p1, :score_p2

    def initialize(turns, score_p1, score_p2)
      @turns = turns
      @score_p1 = score_p1
      @score_p2 = score_p2
    end


    def start
      puts "Welcome to the best math game! are you ready? (say yes)"
      stuff = gets.chomp
      if stuff == "yes"
        puts "Game Starts Now"
        new_turn
      end
    end

    def new_turn

      new_question = Question.new("")
      q = new_question.get_question

    if score_p1 == 0
      puts "----GAME OVER----"
      puts "Player 2 Wins with a score of #{@score_p2}/3"
      return  puts "good bye!"
    elsif score_p2 == 0
      puts "----GAME OVER----"
      puts "Player 1 Wins with a score of #{@score_p1}/3"
      return  puts "Good bye!"
    end

      puts "----NEW TURN----"
      if @turns%2 == 0 ? true : false == true
        @current_player = "Player1"
        puts "Player1: #{q[:question]} "
      else
        @current_player = "Player2"
        puts "Player2: #{q[:question]}"
      end

      answer = gets.chomp
      if answer.to_i == q[:answer]
        puts "Correct"
        @turns += 1
        game = Game.new(@turns,@score_p1,@score_p2)
        game.new_turn
      else
        if @turns%2 == 0 ? true : false == true
          @current_player = Player.new(@score_p1, @score_p2)
          @score_p1 = @current_player.player1_loss
          puts "Wrong P1:#{@score_p1}/3 P2: #{@score_p2}/3"
        else
          @current_player = Player.new(@score_p1, @score_p2)
          @score_p2 = @current_player.player2_loss
          puts "Wrong P1:#{@score_p1}/3 P2: #{@score_p2}/3"
        end



        @turns += 1

        game = Game.new(@turns,@score_p1,@score_p2)
        game.new_turn
      end
    end

  end
end
