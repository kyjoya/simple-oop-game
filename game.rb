require 'pry'
require_relative 'player'

class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player_name)
    @players << Player.new(player_name)
  end

  def play_game
    while winning_player.points < 5
      assign_random_point
    end

    puts "#{winning_player.name} wins the game!"
  end

  private

  def winning_player
    @players.max_by { |player| player.points }
  end

  def assign_random_point
    lucky_player = @players.sample
    puts "#{lucky_player.name} is the lucky player!"
    lucky_player.points += 1
    puts "#{lucky_player.name} now has #{lucky_player.points} points!"
  end
end
