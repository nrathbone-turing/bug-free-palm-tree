require 'rspec'
require './lib/shelter'

RSpec.describe Shelter do

  before(:each) do

  end

  # Iteration 1
  describe '#initialize' do
    it 'is a Shelter' do
      shelter = Shelter.new('Denver Animal Shelter', 5,[])
      
      expect(shelter).to be_a(Shelter)
      # => #<Shelter:0x00000001048f0ed0 @capacity=5, @name="Denver Animal Shelter", @pets=[]>
    end

    it 'can read the name' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.name).to eq('Denver Animal Shelter')
      # => "Denver Animal Shelter"
    end
    

    it 'can read the capacity' do
      shelter = Shelter.new('Denver Animal Shelter', 5)

      expect(shelter.capacity).to eq(5)
      # => 5
    end

    it 'has no pets by default' do
      shelter = Shelter.new('Denver Animal Shelter', 5)

      expect(shelter.pets).to eq []
      # => []
    end
  end

  # Iteration 2
  describe '#add_pet' do
    it 'returns a list of pets' do
            shelter = Shelter.new('Denver Animal Shelter', 5)
      shelter.add_pet('Salem')
      # => ["Salem"]
      shelter.add_pet('Beethoven')
      # => ["Salem", "Beethoven"]
      shelter.add_pet('Spot')
      #=> ["Salem", "Beethoven", "Spot"]
      shelter.add_pet('Jonesy')
      # => ["Salem", "Beethoven", "Spot", "Jonesy"]

      expect(shelter.pets).to eq(['Salem', 'Beethoven', 'Spot', 'Jonesy'])
      # => ["Salem", "Beethoven", "Spot", "Jonesy"]
    end
  end 

  describe '#call_pets' do

    require 'pry'; binding.pry
      it 'returns a list of names with exclamation points appended' do
        shelter = Shelter.new('Denver Animal Shelter', 5)
        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')

        expect(shelter.call_pets).to eq(['Salem!', 'Beethoven!', 'Spot!', 'Jonesy!'])
      end
    end
end

  #Iteration 3