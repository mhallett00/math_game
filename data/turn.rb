class Turn
  @@turn_number = 0

  def initialize
    @@turn_number += 1
    @turn = @@turn_number
  end
  
  def current_turn
    puts "Turn #{@turn}"
  end

  def validate_answer(question_sum, player_answer, player)
    if question_sum == player_answer
      puts "#{player.name}: YES! you are correct!"
    else
      puts "#{player.name}: Seriously? NO!"
      player.decrease_life
    end

  end

  def player_scores(player1, player2)
    puts "P1: #{player1.current_life} vs P2: #{player2.current_life}"
  end
end