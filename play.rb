require_relative 'game.rb'
require_relative 'player.rb'

g = Game.new
g.add_player("Sebastian")
g.add_player("Kylee")
#
g.play_game
