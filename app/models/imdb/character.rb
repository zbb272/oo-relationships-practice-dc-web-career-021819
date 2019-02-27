class Character

  attr_accessor :name, :actor, :episode 

  @@all = []

  def initialize(name, actor)
    @name, @actor = name, actor
    @@all << self
  end
end
