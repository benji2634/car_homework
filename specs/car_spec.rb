require('minitest/autorun')
require('minitest/rg')

require_relative('../car')

class TestCar < MiniTest::Test

  def setup
    @car = Car.new("BMW")
  end

  def test_can_accelerate
    @car.accelerate 
    assert_equal(95, @car.fuel_level)
    assert_equal(10, @car.speed)

  end 

  def test_can_accelerate_twice
    @car.accelerate 
    @car.accelerate 
    assert_equal(90, @car.fuel_level)
    assert_equal(20, @car.speed)
  end

  def test_can_brake_once
    @car.accelerate 
    @car.accelerate 
    @car.brake
    assert_equal(10, @car.speed)
  end

  def test_can_brake_twice
      @car.accelerate * 2
      # @car.accelerate 
      @car.brake * 2
      # @car.brake
      assert_equal(0, @car.speed)
   end

   def test_can_brake_from_zero
      @car.brake
      assert_equal(0, @car.speed)
    end
end
