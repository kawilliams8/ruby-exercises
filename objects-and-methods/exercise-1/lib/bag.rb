class Bag
  def initialize
    @candies = []
  end

  def empty?
    @candies == [] ? true : false
  end
end