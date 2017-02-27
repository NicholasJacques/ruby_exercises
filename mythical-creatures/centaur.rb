class Centaur

  attr_reader :name,
              :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @activity_count = 0
    @standing = true
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
      @activity_count += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      "NO!"
    else
      @activity_count += 1
      "Clop clop clop clop!!!"
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if standing? && @activity_count != 0
      @activity_count = 0
    elsif standing? && @activity_count == 0
      "PUKE!"
    else
      "NO!"
    end
  end

  def sleep
    if standing?
      "NO!"
    else
      @activity_count = 0
    end
  end

  def cranky?
    if @activity_count >= 3 
      true
    else
      false
    end
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end
end