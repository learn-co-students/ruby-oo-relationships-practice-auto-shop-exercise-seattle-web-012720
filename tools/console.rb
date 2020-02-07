require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a = Car.new("VW", "passat", 'awesome')
a.owner= (bob)
b = Car.new("VW", 'jetta', 'old')
b.owner=(bob)
c = Car.new('Mercedes', "x", 'diesel')
c.owner=(joe)

bob = CarOwner.new("Bob")
joe = CarOwner.new("Joe")



binding.pry
