class CarOwner
  attr_accessor :cars, :mechanics
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}
  end

  def self.avg_num_cars
    owner_num = self.all.length
    x = self.all.map {|owener| owner.cars.length}
    avg = (x.sum.to_f)/(owner_num)
  end

end






Get the average amount of cars owned for all owners