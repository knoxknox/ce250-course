class SetAsArray < Set

  def ==(set)
    assert { set.is_a?(SetAsArray) }
    assert { @universeSize == set.universeSize }
    for i in 0 ... @universeSize
      return false if @array[i] != set.array[i]
    end
    return true
  end

  def <=(set)
    assert { set.is_a?(SetAsArray) }
    assert { @universeSize == set.universeSize }
    for i in 0 ... @universeSize
      return false if self_array[i] and not set.array[i]
    end
    return true
  end

end
