class Wizard
  attr_reader :name, :bearded, :cast_counter
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    spell.prepend('sudo ')
  end

  def rested?
    @rested
  end

  def cast
    @cast_counter += 1
    if @cast_counter >= 3
      @rested = false
    end
    'MAGIC MISSILE!'
  end
end