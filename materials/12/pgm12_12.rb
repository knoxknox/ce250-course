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
