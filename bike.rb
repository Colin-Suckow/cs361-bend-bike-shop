# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rental, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, cargo = [])
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rental = Rental.new(rented)
    @cargo = Cargo.new(cargo)
  end

end

class Cargo
  
  MAX_CARGO_ITEMS = 10
  
  attr_accessor :cargo_contents

  def initialize(cargo = [])
    @cargo_contents = cargo
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end

class Rental
  
  attr_accessor :rented

  def initialize(rented = false)
    @rented = rented
  end

  def rent!
    self.rented = true
  end

end
