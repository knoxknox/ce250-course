# 04
class BubbleSorter < Sorter

  def initialize
    super
  end

  def doSort
    i = @n
    while i > 1
      for j in 0 ... i - 1
        swap(j, j + 1) if @array[j] > @array[j + 1]
      end
      i -= 1
    end
  end

end
