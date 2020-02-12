class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @luggage = luggage
    @bike = bike
  end

  def price
    self.bike.final_price + self.luggage.price
  end

  def weight
    self.bike.weight + self.luggage.items.count
  end

end
