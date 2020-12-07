class Owner
  attr_accessor :pets
  attr_reader :species, :name 
  
  @@all = []
  
  def initialize(name, pets = { :dogs => [], :cats => []})  
    @name = name
    @species = "human"
    @pets = {:dog => [], :cat => []}
    @@all << self
  end 

  def say_species
    "I am a #{@species}."
  end 

  def cats 
    @pets[:cats] 
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def self.all
    @@all
  end

  def self. count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end

