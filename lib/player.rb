class Player

attr_accessor :name, :health

  def initialize(name, health)
    @name = name
    @health = 60
  end

  def call_name
    @name
  end

  def attack
    @health -= 10
  end

end
