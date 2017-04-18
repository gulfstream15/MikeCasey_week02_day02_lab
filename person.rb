class Person

  # Generate getters to avoid writing get methods
  attr_reader :name, :age 
 
  def initialize(name, age)
    @name = name
    @age = age
  end

end