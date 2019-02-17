# 10
class HeapSorter < Sorter

  def initialize
    super
  end

  def percolateDown(i, length)
    while 2 * i <= length
      j = 2 * i
      j += 1 if j < length and @array[j + 1] > @array[j]
      break if @array[i] >= @array[j]
      swap(i, j)
      i = j
    end
  end

end

# 11
class HeapSorter < Sorter

  def buildHeap
    i = @n / 2
    while i > 0
      percolateDown(i, @n)
      i -= 1
    end
  end

end

# 12
class HeapSorter < Sorter

  def doSort
    base = @array.baseIndex
    @array.baseIndex = 1
    buildHeap
    i = @n
    while i >= 2
      swap(i, 1)
      percolateDown(1, i - 1)
      i -= 1
    end
    @array.baseIndex = base
  end

end
