class Shelter

  attr_reader :name, :capacity, :pets

  def initialize(name,capacity,pets=[])
    @name = name
    @capacity = capacity
    @pets = pets
  end


  def add_pet(pet)
    @pets.push(pet)
  end

  def call_pets(pet)
    @call_pets = @pets.collect{|pet| pet.append("#{pet}!")}
  end

end