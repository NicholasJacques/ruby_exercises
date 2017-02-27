require 'pry'
class Ogre

  attr_reader :name,
              :home,
              :swings
  
  attr_accessor :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(creature)
    @encounter_counter += 1
    creature.encounter_counter += 1
    swing_at(creature)
  end

  def swing_at(creature)
    if creature.notices_ogre?
      @swings += 1
    end
    hit_human(creature)
  end

  def hit_human(creature)
    if @swings & 2 == 0
      creature.knocked_out = true
    end
  end

  def apologize(creature)
    creature.knocked_out = false
  end
end

class Human

  attr_reader :name

  attr_accessor :encounter_counter,
                :knocked_out

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    if encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?
    @knocked_out
  end
end