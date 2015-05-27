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
