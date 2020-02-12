# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight

  def initialize(id, color, price)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT
  end

  def final_price
    self.price + self.weight * 2
  end

end
