class Bus

  # Generate getters to avoid writing get methods
  attr_reader :route, :destination 
 
  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    bus_noise = "Brum brum"
    return bus_noise
  end

  def bus_return_passengers()
    return @passengers.size()
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
     @passengers.pop()
     # or below
     # index = @passengers.index(person)
     # @passengers.slice!(index, 1)
  end

  def empty
     @passengers.clear()
     # or
     # @passengers = []
  end

  # 
  def pick_up_from_stop(stop)
     # queue is a method on stop 
     # see model answer
     for person in stop.queue()       
       pick_up(person)
     end
     stop.clear_queue()
  end

end