class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = !victim.stoned
    if @statues.length < 3
      @statues << victim
    else 
      @statues[0].stoned = false
      @statues.shift
      @statues << victim
    end
  end

end