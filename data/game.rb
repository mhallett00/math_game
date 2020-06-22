class Game

  attr_reader :player1, :player2, :current_player
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = nil
  end

  # Main gameplay loop that goes until a player has 0 life
  def play_game(player1, player2, current_player)
    while player1.current > 0 && player2.current > 0
      
      if current_player == nil
        current_player = player1
      elsif current_player == player1
        current_player = player2
      else
        current_player = player1
      end
      
      turn = Turn.new(player1, player2, current_player)
      turn.new_turn
      question = Question.new
      print "#{current_player.name}: "
      question.ask_question
      turn.validate_answer(question.sum, question.answer)
      turn.player_scores

    end
    
    # Checks for the winning player
    winner = player1.current == 0 ? player2 : player1
      
    puts "#{winner.name} wins with a score of #{winner.current_life}\n---GAME OVER---\nGood bye!"

    exit(0)
    
  end

end