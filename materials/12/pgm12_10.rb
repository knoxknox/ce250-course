# 10
class MultisetAsArray < Multiset

  def initialize(n)
    super
    @array = Array.new(@universeSize)
    for item in 0 ... @universeSize
      @array[item] = 0
    end
  end

  attr_accessor :array
  public :array
  protected :array=

end

# 11
class MultisetAsArray < Multiset

  def insert(item)
    @array[item] += 1
  end

  def withdraw(item)
    raise ArgumentEerror if @array[item] == 0
    @array[item] -= 1
  end

  def member?(item)
    @array[item] > 0
  end

end

# 12
class MultisetAsArray < Multiset

  def |(set)
    assert { set.is_a?(MultisetAsArray) }
    assert { @universeSize == set.universeSize }
    result = MultisetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      result.array[i] = @array[i] + set.array[i]
    end
    return result
  end

  def &(set)
    assert { set.is_a?(MultisetAsArray) }
    assert { @universeSize == set.universeSize }
    result = MultisetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      result.array[i] = [@array[i], set.array[i]].min
    end
    return result
  end

  def -(set)
    assert { set.is_a?(MultisetAsArray) }
    assert { @universeSize == set.universeSize }
    result = MultisetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      if set.array[i] <= @array[i]
        result.array[i] = @array[i] - set.array[i]
      end
    end
    return result
  end

end
