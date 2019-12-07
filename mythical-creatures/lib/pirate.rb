class Pirate
  attr_reader :name, :job, :booty_counter
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse_counter = 0
    @booty_counter = 0
  end

  def cursed?
    return @curse_counter >= 3 ? true : false
  end

  def commit_heinous_act
    @curse_counter += 1
  end

  def rob_ship
    @booty_counter += 100
  end
end