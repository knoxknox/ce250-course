# 18
class RadixSorter < Sorter

  R = 8

  CAP_R = 1 << R

  P = (32 + R - 1) / R

  def initialize
    super
    @count = Array.new(CAP_R)
    @tempArray = nil
  end

end


# 19
class RadixSorter < Sorter

  def doSort
    @tempArray = Array.new(@n)

    for i in 0 ... P
      for j in 0 ... CAP_R
        @count[j] = 0
      end
      for k in 0 ... @n
        @count[(@array[k] >> (R*i)) & (CAP_R-1)] += 1
        @tempArray[k] = @array[k]
      end

      pos = 0
      for j in 0 ... CAP_R
        tmp = pos
        pos += @count[j]
        @count[j] = tmp
      end
      for k in 0 ... @n
        j = (@tempArray[k] >> (R*i)) & (CAP_R-1)
        @array[@count[j]] = @tempArray[k]
        @count[j] += 1
      end
    end
  end

end
