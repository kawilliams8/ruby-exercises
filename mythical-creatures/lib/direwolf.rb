class Direwolf
  attr_reader :name, :home, :size
  attr_accessor :starks_to_protect
  def initialize(name, home = 'Beyond the Wall', size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.length < 2
      stark.safe = true
      @starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect.empty?
      true
    else
      false
    end
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect.delete(stark)
    return stark
  end
end