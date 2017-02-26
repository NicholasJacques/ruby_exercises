class Dragon

  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @fed = 0
  end

  def hungry?
    if @fed <= 2
      true
    else
      false
    end
  end

  def eat
    @fed += 1
  end

end