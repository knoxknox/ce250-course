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
