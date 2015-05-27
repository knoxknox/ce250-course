class SetAsArray < Set

  def |(set)
    assert { set.is_a?(SetAsArray) }
    assert { @universeSize == set.universeSize }
    result = SetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      result.array[i] = (@array[i] or set.array[i])
    end
    return result
  end

  def &(set)
    assert { set.is_a?(SetAsArray) }
    assert { @universeSize == set.universeSize }
    result = SetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      result.array[i] = (@array[i] and set.array[i])
    end
    return result
  end

  def -(set)
    assert { set.is_a?(SetAsArray) }
    assert { @universeSize == set.universeSize }
    result = SetAsArray.new(@universeSize)
    for i in 0 ... @universeSize
      result.array[i] = (@array[i] and not set.array[i])
    end
    return result
  end

end
