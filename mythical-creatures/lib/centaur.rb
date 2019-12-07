class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky_counter = 0
  end

  def shoot
    @cranky_counter += 1
    "Twang!!!"
  end

  def run
    @cranky_counter += 1
    "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky_counter > 2 ? true : false
  end

  def standing?
    true  
  end
end