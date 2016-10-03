class Car

  attr_reader :car_name, :fuel_level, :speed

  def initialize(car_name)
    @car_name = car_name
    @fuel_level = 100
    @speed = 0
  end

  def accelerate()
    @fuel_level -= 5 
    @speed += 10
  end

  def brake()
    @speed -= 10
    if @speed < 0
      @speed = 0
    end
    return @speed   
  end

end