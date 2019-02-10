# 02
class SetAsArray < Set

  def initialize(n)
    super
    @array = Array.new(@universeSize)
    for item in 0 ... @universeSize
      @array[item] = false
    end
  end

  attr_accessor :array
  protected :array

end

# 03
class SetAsArray < Set

  def insert(item)
    @array[item] = true
  end

  def member?(item)
    @array[item]
  end

  def withdraw(item)
    @array[item] = false
  end

end

# 04
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

# 05
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
