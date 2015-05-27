class BTree < MWayTree

  def insertUp(obj, child)
    index = findIndex(obj)
    if not full?
      insertPair(index + 1, obj, child)
      @count = @count + 1
    else
      extraKey, extraTree = insertPair(index+1, obj, child)
      if @parent.nil?
        left = BTree.new(m)
        right = BTree.new(m)
        left.attachLeftHalfOf(self)
        right.attachRightHalfOf(self)
        right.insertUp(extraKey, extraTree)
        attachSubtree(0, left)
        @key[1] = @key[(m + 1)/2]
        attachSubtree(1, right)
        @count = 1
      else
        @count = (m + 1)/2 - 1
        right = BTree.new(m)
        right.attachRightHalfOf(self)
        right.insertUp(extraKey, extraTree)
        @parent.insertUp(@key[(m + 1)/2], right)
      end
    end
  end

end
