class Player
  attr_reader :name
  attr_accessor :points

  def initialize(player_name)
    @name = player_name
    @points = 0
  end
end
