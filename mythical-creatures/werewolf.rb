class Werewolf
  attr_reader :name,
              :location,
              :stomach

  def initialize(name, location = "")
    @name = name
    @location = location
    @human = true
    @stomach = []
  end

  def human?
    @human
  end

  def wolf?
    !@human
  end

  def change!
    @human = !@human
  end

  def hungry?
    if wolf? && stomach.empty?
      true
    else
      false
    end
  end

  def consume(victim)
    if wolf?
      @stomach << victim
      victim.die
    else
      "Not Hungry!"
    end
  end
end


class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end

  def die
    @status = :dead
  end
end