class Stark
  attr_reader :name, :location
  attr_accessor :safe
  def initialize(name, location = "Winterfell", safe = false)
    @name = name
    @location = location
    @safe = safe
  end

  def safe?
    @safe
  end

  def house_words
    if self.safe?
      "The North Remembers"
    else
      "Winter is Coming"
    end
  end
end