class Game

  attr_reader :attack , :player_1 , :player_2, :active_player

  def initialize(player_1: , player_2:)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1
  end

  def attack
    inactive_player.receive_damage
    switch_turn
  end

  def inactive_player
    @active_player == player_1 ? player_2 : player_1
  end
  
  def game_won?
    (player_1.health <= 0 || player_2.health <= 0) ? true : false
  end

private

  def switch_turn
    @active_player == player_1 ? @active_player = player_2 : @active_player = player_1
  end

end
