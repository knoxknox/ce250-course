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
