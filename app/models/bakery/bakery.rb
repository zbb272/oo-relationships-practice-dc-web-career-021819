class Bakery
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    # should return an array of ingredients for the bakery's desserts
    desserts.collect do | dessert |
      dessert.ingredients
    end.flatten
  end

  def desserts
    # should return an array of desserts the bakery makes
    Desserts.all.select do | dessert |
      dessert.bakery == self
    end
  end

  def average_calories
    # should return a number totaling the average number of calories for the
    # desserts sold at this bakery
    calorie_count = 0
    desserts.each do | dessert |
      calorie_count += dessert.calories
    end
    calorie_count / desserts.length
  end

  def shopping_list
    # should return a string of names for ingredients for the bakery
    ingredients.collect do | ingredient |
      ingredient.name
    end.join(", ")
  end

end
