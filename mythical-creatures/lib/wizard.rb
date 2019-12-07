class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
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
    'MAGIC MISSILE!'
  end
end