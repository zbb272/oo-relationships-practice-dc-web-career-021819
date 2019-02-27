class Desserts
  attr_accessor :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name, @bakery = name, bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    # should return an array of ingredients for the dessert
    Ingredients.all.select do | ingredient |
      ingredient.dessert == self
    end
  end

  def calories
    # should return a number totaling all the calories for all
    # the ingredients included in that dessert
    calorie_count = 0
    ingredients.each do | ingredient |
      calorie_count += ingredient.calories
    end
    calorie_count
  end

end
