class Episode

  attr_accessor :title, :episode_number, :show

  @@all = []

  def initialize(title, episode_number, show)
    @title, @episode_number, @show = title, episode_number, show
    @@all << self
  end

  def self.all
    @@all
  end
end 
