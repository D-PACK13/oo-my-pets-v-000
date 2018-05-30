class Owner
  
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@owners << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish
  
  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self. count
    @@owners.length
  end
  
end