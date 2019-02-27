class Ingredients
  attr_accessor :name, :calories, :dessert

  @@all = []

  def initialize(name, calories, dessert)
    @name, @calories, @dessert = name, calories, dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient_name)
    # should take a string argument return an array of all ingredients
    # that include that string in their name
    #   - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
    #   - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    self.all.select do | ingredient |
      ingredient.name.include?(ingredient_name)
    end
  end

  def bakery
    dessert.bakery
  end
end
