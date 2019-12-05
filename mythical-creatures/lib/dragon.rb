class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @counter = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @counter += 1
    if @counter >= 3
      @hungry = false
    end
    @hungry
  end
end