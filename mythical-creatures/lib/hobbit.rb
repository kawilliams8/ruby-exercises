class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >32
      true
    end
  end

  def old?
    if @age > 100
      true
    end
  end

  def has_ring?
    @name == 'Frodo' ? true : false
  end

  def is_short?
    true
  end
end