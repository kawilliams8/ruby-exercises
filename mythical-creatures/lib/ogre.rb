class Ogre
  attr_reader :name, :home, :encounter_counter, :swings
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter +=1
    @encounter_counter += 1
    if human.notices_ogre?
      self.swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings % 2 == 0
      human.knocked_out = true
    end
  end
end