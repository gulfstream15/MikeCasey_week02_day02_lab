require('minitest/autorun')
require('minitest/emoji')
require_relative('../bus_stop.rb')
require_relative('../person.rb')


class TestBusStop < Minitest::Test

   def test_add_person_to_queue()
     person = Person.new("Bob", 42)
     stop = BusStop.new("West End")
     stop.add_person_to_queue(person)
   end  

end