require 'pry'

class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stone(victim)
    victim.stoned = true
  end

  def stare(victim)
    stone(victim)
    statues << victim
    three_statues
  end

  def three_statues
    if statues.length > 3
      unstone(statues.shift)
    end
  end

  def unstone(victim)
    victim.stoned = false
  end

end

class Person

  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end