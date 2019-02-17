# 09
class StraightSelectionSorter < Sorter

  def initialize
    super
  end

  def doSort
    i = @n
    while i > 1
      max = 0
      for j in 0 ... i
        max = j if @array[j] > @array[max]
      end
      swap(i - 1, max)
      i -= 1
    end
  end

end
