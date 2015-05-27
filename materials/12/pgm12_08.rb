class SetAsBitVector < Set

  def |(set)
    assert { set.is_a?(SetAsBitVector) }
    assert { @universeSize == set.universeSize }
    result = SetAsBitVector.new(@universeSize)
    for i in 0 ... @vector.length
      result.vector[i] = @vector[i] | set.vector[i]
    end
    return result
  end

  def &(set)
    assert { set.is_a?(SetAsBitVector) }
    assert { @universeSize == set.universeSize }
    result = SetAsBitVector.new(@universeSize)
    for i in 0 ... @vector.length
      result.vector[i] = @vector[i] & set.vector[i]
    end
    return result
  end

  def -(set)
    assert { set.is_a?(SetAsBitVector) }
    assert { @universeSize == set.universeSize }
    result = SetAsBitVector.new(@universeSize)
    for i in 0 ... @vector.length
      result.vector[i] = @vector[i] & ~set.vector[i]
    end
    return result
  end

end
