class Human
  attr_accessor :name, :encounter_counter
  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
  end
end