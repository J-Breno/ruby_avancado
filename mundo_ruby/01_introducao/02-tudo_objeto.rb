class Car
  def initialize(color, model)
    @color = color
    @model = model
  end

  attr_accessor :color, :model

  def description
    "A #{color} #{model}"
  end
end

class EletricCar < Car
  def battery_life
    "250 km"
  end
end

tesla = EletricCar.new("gray", "Tesla")
tesla.battery_life
tesla.description