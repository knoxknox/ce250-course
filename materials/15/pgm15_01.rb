class Sorter < AbstractObject

  def initialize
    super
    @array = nil
    @n = 0
  end

  abstractmethod :doSort

  def sort(array)
    assert { array.is_a?(Array) }
    @array = array
    @n = array.length
    doSort if @n > 0
    @array = nil
  end

  def swap(i, j)
    @array[i], @array[j] = @array[j], @array[i]
  end

end
