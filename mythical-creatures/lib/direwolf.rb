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
      @starks_to_protect << stark
    end
  end
end