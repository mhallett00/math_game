require './data/player.rb'
require './data/turn.rb'
require './data/game.rb'
require './data/question.rb'

# Create a game session
game = Game.new

# Start playing the session
game.play_game(game.player1, game.player2, game.current_player)

