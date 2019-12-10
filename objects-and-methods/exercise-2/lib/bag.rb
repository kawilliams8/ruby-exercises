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

  def contains?(candy_type)
    @candies.any? do |candy|
      if candy.type == candy_type
        true
      else
        false
      end
    end
  end

  def grab candy_name
    @candies.each do |candy|
      if candy.type == candy_name
        grabbed_candy = @candies.delete candy
        return grabbed_candy
      end
    end
  end

  def take(num)
    i = 0
    taken = []
    loop do
      i += 1
        taken << @candies.pop
      if i == num
        break
      end
    end
    return taken
  end
end