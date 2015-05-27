class BinaryInsertionSorter < Sorter

  def initialize
    super
  end

  def doSort
    for i in 1 ... @n
      tmp = @array[i]
      left = 0
      right = i
      while left < right
        middle = (left + right) / 2
        if tmp >= @array[middle]
          left = middle + 1
        else
          right = middle
        end
      end
      j = i
      while j > left
        swap(j - 1, j)
        j -= 1
      end
    end
  end

end
