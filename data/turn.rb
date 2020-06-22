class Turn

  attr_reader :player1, :player2, :current_player

  def initialize (player1, player2, current_player)
    @player1 = player1
    @player2 = player2
    @current_player = current_player
  end

  def new_turn
    puts "---NEW TURN---"
  end

  def validate_answer(question_sum, player_answer)
    if question_sum == player_answer
      puts "#{@current_player.name}: YES! you are correct!"
    else
      puts "#{@current_player.name}: Seriously? NO!"
      current_player.decrease_life
    end

  end

  def player_scores
    puts "P1: #{@player1.current_life} vs P2: #{@player2.current_life}"
  end
end