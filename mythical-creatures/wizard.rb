class Wizard

  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(phrase)
    "sudo #{phrase}"
  end

  def rested?
    if @spell_count >= 3
      false
    else
      true
    end
  end

  def cast
    @spell_count += 1
    "MAGIC MISSILE!"
  end
  
end