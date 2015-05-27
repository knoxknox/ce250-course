class MWayTree < SearchTree

  def findIndex(obj)
    return 0 if empty? or obj < @key[1]
    left = 1
    right = @count
    while left < right
      middle = (left + right + 1) / 2
      if obj < @key[middle]
        right = middle - 1
      else
        left = middle
      end
    end
    return left
  end

  def find(obj)
    return nil if empty?
    index = findIndex(obj)
    if index != 0 and @key[index] == obj
      return @key[index]
    else
      return @subtree[index].find(obj)
    end
  end

end
