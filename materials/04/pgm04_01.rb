# 01
class Array
  alias_method :init, :initialize

  def initialize(size = 0, baseIndex = 0)
    init(size, nil)
    @baseIndex = baseIndex
  end

end

# 02
class Array
  alias_method :getitem, :[]
  alias_method :setitem, :[]=

  protected :getitem, :setitem

  def getOffset(index)
    @baseIndex = 0 if @baseIndex.nil?
    raise IndexError if not (@baseIndex ... @baseIndex + length) === index
    return index - @baseIndex
  end

  def [](index)
    getitem(getOffset(index))
  end

  def []=(index, value)
    setitem(getOffset(index), value)
  end

end

# 03
class Array
  attr_accessor :baseIndex
end

# 04
class Array

  def length=(value)
    tmp = Array.new(value, nil)
    for i in 0 ... [length, value].min
      tmp.setitem(i, getitem(i))
    end

    clear
    setitem(value - 1, nil) if value > 0
    for i in 0 ... tmp.length
      setitem(i, tmp.getitem(i))
    end
  end

end
