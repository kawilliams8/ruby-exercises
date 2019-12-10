class TrickOrTreater
  attr_reader :dressed_up_as, :bag
  def initialize(costume, bag = [])
    @dressed_up_as = costume.style
    @bag = bag
  end

  def has_candy?
    @bag.length > 0 ? true : false
  end

  def candy_count
    @bag.length
  end

  def eat
    @bag.pop
    @bag.length
  end
end