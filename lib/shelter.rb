class Shelter

  attr_reader :name, :capacity, :pets

  def initialize(name,capacity,pets=[])
    @name = name
    @capacity = capacity
    @pets = pets
  end




end