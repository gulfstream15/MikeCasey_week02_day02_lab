require('minitest/autorun')
require('minitest/emoji')
require_relative('../person.rb')

class TestPerson < Minitest::Test

  def test_can_create_person()
    person = Person.new("Bob", 42)
    assert_equal(Person, person.class)
  end

  def test_person_has_age()
    person = Person.new("Bob", 42)
    assert_equal(42, person.age())
  end  

  def test_person_has_name()
    person = Person.new("Bob", 42)
    assert_equal("Bob", person.name())
  end 

end