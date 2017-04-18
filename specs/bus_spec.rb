require('minitest/autorun')
require('minitest/emoji')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class TestBus < Minitest::Test

  # Good idea to have a setup method and
  # refer to the @bus, @passenger, etc in code below
  def set_up()
    @bus = Bus.new(34, "Ocean Terminal")
    @passenger1 = Person.new("Bob", 42)
    @passenger2 = Person.new("Mike", 41)
    @passenger3 = Person.new("John", 40)
  end

  def test_bus_has_route_number()
    bus = Bus.new(34, "Ocean Terminal")
    assert_equal(34, bus.route())
  end  

  def test_bus_has_destination()
    bus = Bus.new(34, "Ocean Terminal")
    assert_equal("Ocean Terminal", bus.destination())
  end

  def test_bus_can_drive()
    bus = Bus.new(34, "Ocean Terminal")
    assert_equal("Brum brum", bus.drive())
  end

  def test_bus_return_passengers()
    bus = Bus.new(34, "Ocean Terminal")
    assert_equal(0, bus.bus_return_passengers())
  end

  def test_pick_up_passenger()
    bus = Bus.new(34, "Ocean Terminal")
    passenger1 = Person.new("Bob", 42)
    bus.pick_up(passenger1)
    assert_equal(1, bus.bus_return_passengers())
  end

  def test_drop_off_passenger()
    bus = Bus.new(34, "Ocean Terminal")
    passenger2 = Person.new("Bob", 42)
    bus.drop_off(passenger2)
    assert_equal(0, bus.bus_return_passengers())
  end

  def test_empty()
    bus = Bus.new(34, "Ocean Terminal")
    bus.empty()
    assert_equal(0, bus.bus_return_passengers())
  end

  def test_pick_up_from_stop()
    stop1 = BusStop.new("West End")
    bus = Bus.new(34, "Ocean Terminal")
    bus.pick_up_from_stop(stop1)
    assert_equal(1, bus.bus_return_passengers())
  end 

end
