# 06
class SetAsBitVector < Set

  BITS = 8 * 1.size

  def initialize(n)
    super
    @vector = Array.new((n + BITS - 1) / BITS)
    for i in 0 ... @vector.length
      @vector[i] = 0
    end
  end

  attr_accessor :vector
  protected :vector

end

# 07
class SetAsBitVector < Set

  def insert(item)
    @vector[item / BITS] |= (1 << item % BITS)
  end

  def withdraw(item)
    @vector[item / BITS] &= ~(1 << item % BITS)
  end

  def member?(item)
    (@vector[item / BITS] & (1 << item % BITS)) != 0
  end

end

# 08
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
