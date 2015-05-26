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
