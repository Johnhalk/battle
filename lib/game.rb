class Game

  attr_reader :attack , :player_1 , :player_2, :active_player , :message

  @game_instance = nil

  def initialize(player_1: , player_2:)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1
    @message
    self.class.game_instance = self
  end

  def attack
    inactive_player.receive_damage
    switch_turn
    change_message("#{inactive_player.name} has attacked #{active_player.name}. Confirmed!")
  end

  def inactive_player
    @active_player == player_1 ? player_2 : player_1
  end

  def game_won?
    (player_1.health <= 0 || player_2.health <= 0) ? true : false
  end

  def change_message(new_message)
    game_won? ? @message = "#{inactive_player.name} wins!" : @message = new_message
  end

  def self.game_instance
    @game_instance
  end

  def self.game_instance=(value)
    @game_instance = value
  end

private

  def switch_turn
    @active_player == player_1 ? @active_player = player_2 : @active_player = player_1
  end

end
