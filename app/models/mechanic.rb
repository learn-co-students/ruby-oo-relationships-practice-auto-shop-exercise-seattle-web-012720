class Mechanic
  attr_accessor :classification
  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.mechanic == self }
  end

  def car_owners_served
    self.cars.map {|car| car.owner}
  end

  def car_owner_names
    self.car_owners_served.map {|owner| owner.name}
  end

end
