class Car
  attr_accessor :classification, :owner, :mechanic
  attr_reader :make, :model
  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map { |car| car.classification }
  end

  def possible_mechanics
    Mechanic.all.select { |mechanic| mechanic.classification == self.classification }
  end
end
