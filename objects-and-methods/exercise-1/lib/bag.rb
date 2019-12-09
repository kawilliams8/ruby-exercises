class Bag
  attr_accessor :candies
  def initialize(candies = [])
    @candies = candies
  end

  def empty?
    @candies == [] ? true : false
  end

  def count
    @candies.length
  end

  def << candy
    @candies << candy
  end

  def contains?(candy_type)
    @candies.any? do |candy|
      if candy.type == candy_type
        true
      else
        false
      end
    end
  end
end