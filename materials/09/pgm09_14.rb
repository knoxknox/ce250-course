class NaryTree < Tree

  def getSubtree(i)
    raise StateError if empty?
    return @subtree[i]
  end

  def attachSubtree(i, t)
    raise StateError if empty? or not @subtree[i].empty?
    @subtree[i] = t
  end

  def detachSubtree(i)
    raise StateError if empty?
    result = @subtree[i]
    @subtree[i] = NaryTree.new(degree)
    return result
  end

end
