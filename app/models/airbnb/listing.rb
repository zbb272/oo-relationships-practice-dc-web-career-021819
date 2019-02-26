class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    self.all.select do | listing |
      listing.city == city
    end
  end

  def self.most_popular
    self.all.sort_by! do | listing |
      listing.trip_count
    end.last
  end

  def guests
    trips.collect do | trip |
      trip.guest
    end.uniq
  end

  def trips
    Trip.all.select do | trip |
      trip.listing == self
    end
  end

  def trip_count
    trips.length
  end
end
