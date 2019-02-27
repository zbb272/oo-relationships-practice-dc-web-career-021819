class Show

  attr_accessor :title, :year, :number_of_episodes

  @@all = []

  def initialize(title, year, number_of_episodes)
    @title, @year, @number_of_episodes = title, year, number_of_episodes
    @@all << self
  end

  def self.all
    @@all 
  end
end
