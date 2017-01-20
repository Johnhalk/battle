class Player

attr_accessor :name, :health

HEALTH = 60

  def initialize(name)
    @name = name
    @health = HEALTH
  end

  def receive_damage
    @health -=10
  end

  def call_name
    @name
  end

end
