class Bag
  attr_reader = :candies
  def initialize()
    @candies = []
  end

  def candies
    @candies
  end

  def empty?
    @candies.length == 0 ? true : false
  end

  def count
    @candies.length
  end

  def << candy
    @candies << candy
  end
end