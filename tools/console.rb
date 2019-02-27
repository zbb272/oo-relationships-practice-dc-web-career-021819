require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start

def bakery_test

  bakery1 = Bakery.new("Test Bakery")

  dessert1 = Desserts.new("Cake", bakery1)
  dessert2 = Desserts.new("Ice Cream", bakery1)

  sugar = Ingredients.new("sugar", 500, dessert1)
  spice = Ingredients.new("spice",  50, dessert1)
  water = Ingredients.new("water",   0, dessert1)
  flour = Ingredients.new("flour", 300, dessert1)
  milk  = Ingredients.new("milk" , 400, dessert2)
  sugar2= Ingredients.new("sugar", 500, dessert2)


  puts "Bakery Tests"
  puts "-----------"
  puts "#ingredients:     "
  puts bakery1.ingredients == [sugar, spice, water, flour, milk, sugar2]
  puts "#desserts:        "
  puts bakery1.desserts == [dessert1, dessert2]
  puts "#average_calories:"
  puts bakery1.average_calories == 875
  puts "#shopping_list:   "
  puts bakery1.shopping_list == "sugar, spice, water, flour, milk, sugar"
  puts "#.all:            "
  puts Bakery.all == [bakery1]

  puts "-----------"
  puts "Dessert Tests"
  puts "-----------"
  puts "#ingredients:     "
  puts dessert1.ingredients == [sugar, spice, water, flour]
  puts "#bakery:          "
  puts dessert1.bakery == bakery1
  puts "#calories:        "
  puts dessert1.calories == 850
  puts ".all:             "
  puts Desserts.all == [dessert1, dessert2]

  puts "-----------"
  puts "Ingredients Tests"
  puts "-----------"
  puts "#dessert:         "
  puts sugar.dessert == dessert1
  puts "#bakery:          "
  puts sugar.bakery == bakery1
  puts ".all:             "
  puts Ingredients.all == [sugar, spice, water, flour, milk, sugar2]
  puts ".find_all_by_name:"
  puts Ingredients.find_all_by_name("sugar") == [sugar, sugar2]
end

def airbnb_test

  listing1 = Listing.new("Washington DC")
  listing2 = Listing.new("New York")
  listing3 = Listing.new("Boston")

  guest1 = Guest.new("Zach")
  guest2 = Guest.new("Jake")
  guest3 = Guest.new("Jesse")
  guest4 = Guest.new("Max")
  guest5 = Guest.new("Sydney")

  trip1 = Trip.new(listing1, guest1)
  trip2 = Trip.new(listing1, guest2)
  trip3 = Trip.new(listing1, guest3)
  trip4 = Trip.new(listing2, guest1)
  trip5 = Trip.new(listing2, guest4)
  trip6 = Trip.new(listing2, guest5)
  trip7 = Trip.new(listing3, guest4)
  trip8 = Trip.new(listing3, guest5)
  trip9 = Trip.new(listing1, guest1)

  puts "Listing Test"
  puts "------------"
  puts "#guests:  #{(listing1.guests == [guest1, guest2, guest3])}"
  puts "#trips:  #{listing2.trips == [trip4, trip5, trip6]}"
  puts "#trip_count: #{listing3.trip_count == 2}"
  puts "Listing.most_popular: #{Listing.most_popular == listing1}"
  puts "Listing.all #{Listing.all == [listing3, listing2, listing1]}"
  puts "Listing.find_all_by_city: #{Listing.find_all_by_city("Boston") == [listing3]}"
  puts "-----------"
  puts "Guest Test"
  puts "-----------"
  puts "#listings: #{guest1.listings == [listing1, listing2]}"
  puts "#trips: #{guest2.trips == [trip2]}"
  puts "#trip_count: #{guest4.trip_count == 2}"
  puts "Guest.pro_traveller: #{Guest.pro_traveller == [guest1, guest4, guest5]}"
  puts "Guest.all: #{Guest.all == [guest1, guest2, guest3, guest4, guest5]}"
  puts "Guest.find_all_by_name: #{guest1 == Guest.find_all_by_name("Zach")}"
  puts Guest.find_all_by_name("Zach")
  puts guest1
  puts "-----------"
  puts "Trip Test"
  puts "-----------"
  puts "Trips.all:  #{Trip.all == [trip1, trip2, trip3, trip4, trip5, trip6, trip7, trip8, trip9]}"

end

#airbnb_test
bakery_test
binding.pry
