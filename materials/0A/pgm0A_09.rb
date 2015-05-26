class GraphicalObject < AbstractObject

  def initialize(center)
    super()
    @center = center
  end

  abstractmethod :draw

  def erase
    setPenColor(BACKGROUND_COLOR)
    draw
    setPenColor(FOREGROUND_COLOR)
  end

  def moveTo(p)
    erase
    @center = p
    draw
  end

end
