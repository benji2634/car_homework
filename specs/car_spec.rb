require('minitest/autorun')
require('minitest/rg')

require_relative('../car')

class TestCar < MiniTest::Test

  def setup
    @car = Car.new("BMW")
  end 

  def test_car_can_accelerate
    5.times do
      @car.accelerate 
    end
    assert_equal(75, @car.fuel_level)
    assert_equal(50, @car.speed)
  end

  def test_car_can_brake
      4.times do
        @car.accelerate
      end
      3.times do
        @car.brake
      end
      assert_equal(10, @car.speed)
   end

   def test_car_cant_brake_below_zero
      @car.brake
      assert_equal(0, @car.speed)
    end
end
