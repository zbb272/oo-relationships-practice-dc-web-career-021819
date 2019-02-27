class MoviesCharactersLink
  
  attr_accessor :movie, :actor

  @@all = []

  def initialize(movie, actor)
    @movie, @actor = movie, actor
    @@all << self
  end

  def self.all
    @@all
  end
end
