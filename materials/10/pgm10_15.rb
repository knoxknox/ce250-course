class MWayTree < SearchTree

  def find(obj)
    return nil if empty?
    i = @count
    while i > 0
      diff = obj <=> @key[i]
      return @key[i] if diff == 0
      break if diff > 0
      i = i - 1
    end
    return @subtree[i].find(obj)
  end

end
