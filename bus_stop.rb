class BusStop

  # Generate getters to avoid writing get methods
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @queue = []
  end
  
  def add_person_to_queue(person)
    @queue << person
  end
  
  

end