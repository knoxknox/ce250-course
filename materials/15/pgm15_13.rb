# 13
class TwoWayMergeSorter < Sorter

  def initialize
    super
    @tempArray = nil
  end

end

# 14
class TwoWayMergeSorter < Sorter

  def merge(left, middle, right)
    i = left
    j = left
    k = middle + 1
    while j <= middle and k <= right
      if @array[j] < @array[k]
        @tempArray[i] = @array[j]
        i += 1
        j += 1
      else
        @tempArray[i] = @array[k]
        i += 1
        k += 1
      end
    end
    while j <= middle
      @tempArray[i] = @array[j]
      i += 1
      j += 1
    end
    for i in left ... k
      @array[i] = @tempArray[i]
    end
  end

end

# 15
class TwoWayMergeSorter < Sorter

  def doSort
    @tempArray = Array.new(@n)
    mergesort(0, @n - 1)
    @tempArray = nil
  end

  def mergesort(left, right)
    if left < right
      middle = (left + right) / 2
      mergesort(left, middle)
      mergesort(middle + 1, right)
      merge(left, middle, right)
    end
  end

end
