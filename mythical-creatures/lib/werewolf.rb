class Werewolf
  attr_reader :name, :location, :human, :wolf
  def initialize(name, location = "")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false 
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def hungry?
    @hungry
  end
end