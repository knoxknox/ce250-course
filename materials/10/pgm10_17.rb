class MWayTree < SearchTree

  def insert(obj)
    if empty?
      @subtree[0] = MWayTree.new(m)
      @key[1] = obj
      @subtree[1] = MWayTree.new(m)
      @count = 1
    else
      index = findIndex(obj)
      raise ValueError if index != 0 and @key[index] == obj
      if not full?
        i = @count
        while i > index
          @key[i + 1] = @key[i]
          @subtree[i + 1] = @subtree[i]
          i = i - 1
        end
        @key[index + 1] = obj
        @subtree[index + 1] = MWayTree.new(m)
        @count = @count + 1
      else
        @subtree[index].insert(obj)
      end
    end
  end

end
