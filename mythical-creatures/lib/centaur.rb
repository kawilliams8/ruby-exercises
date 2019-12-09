class Centaur
  attr_accessor :name, :breed, :standing, :laying, :cranky_counter, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky_counter = 0
    @standing = true
    @laying = false
    @rested = false
    @sick = false
  end

  def shoot
    if @cranky_counter < 3 && self.standing
      @cranky_counter += 1
      "Twang!!!"
    else 
      "NO!"
    end
  end

  def run
    if @cranky_counter < 3 && self.standing
      @cranky_counter += 1
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def sleep
    if self.standing?
      "NO!"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if self.laying?
      @cranky_counter = 0
    end
    if self.standing?
    "NO!"
    end
  end

  def drink
    if self.standing?
      @rested = true
    end
    if self.rested?
      @sick = true
    end
  end

  def cranky?
    @cranky_counter > 2 ? true : false
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def rested?
    @rested
  end

  def sick?
    @sick
  end
end