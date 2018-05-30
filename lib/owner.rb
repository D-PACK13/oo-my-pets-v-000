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
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs(name)
    @pets[:dogs] << Dog.new(dog_name)
  end

    describe "#walk_dogs" do
      it "walks the dogs which makes the dogs' moods happy" do
        dog = Dog.new("Daisy")
        owner.pets[:dogs] << dog
        owner.walk_dogs
        expect(dog.mood).to eq("happy")
      end
    end




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