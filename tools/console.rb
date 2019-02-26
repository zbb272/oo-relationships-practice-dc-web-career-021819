require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start

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

airbnb_test
binding.pry
