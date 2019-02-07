# 24
class SortedListAsArray < OrderedListAsArray

  include SortedListMethods

  def initialize(size = 0)
    super
  end

end

# 25
class SortedListAsArray < OrderedListAsArray

  def insert(obj)
    raise ContainerFull if @count == @array.length
    i = @count
    while i > 0 and @array[i - 1] > obj
      @array[i] = @array[i - 1]
      i -= 1
    end
    @array[i] = obj
    @count += 1
  end

end

# 26
class SortedListAsArray < OrderedListAsArray

  def findOffset(obj)
    left = 0
    right = @count - 1
    while left <= right
      middle = (left + right) / 2
      if obj > @array[middle]
        left = middle + 1
      elsif obj < @array[middle]
        right = middle - 1
      else
        return middle
      end
    end
    return -1
  end

end

# 27
class SortedListAsArray < OrderedListAsArray

  def find(obj)
    offset = findOffset(obj)
    if offset >= 0
      return @array[offset]
    else
      return nil
    end
  end

  class Cursor < OrderedListAsArray::Cursor

    def initialize(list, offset)
      super
    end

    undef_method :insertAfter

    undef_method :insertBefore

  end

  def findPosition(obj)
    Cursor(self, findOffset(obj))
  end

end

# 28
class SortedListAsArray < OrderedListAsArray

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    offset = findOffset(obj)
    raise ArgumentError if offset < 0
    i = offset
    while i < @count
      @array[i] = @array[i + 1]
      i += 1
    end
    @array[i] = nil
    @count -= 1
  end

end
