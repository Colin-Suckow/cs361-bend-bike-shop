!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.cargo.add_cargo(:apples)
bike.cargo.add_cargo(:water)
bike.cargo.add_cargo(:repair_kit)

puts "Space for #{bike.cargo.pannier_remaining_capacity} items left."

bike.rental.rent!
