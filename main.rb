!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

DEFAULT_MAX_CAPACITY = 10


luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, [:apple, :water, :protein_bar])

bike = Bike.new(1, :pink, 99.99)

rental = Rental.new(bike, luggage)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

