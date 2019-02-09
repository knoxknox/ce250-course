# 12
class NaryTree < Tree

  def initialize(*args)
    super()
    case args.length
    when 1
      @degree = args[0]
      @key = nil
      @subtree = nil
    when 2
      @degree = args[0]
      @key = args[1]
      @subtree = Array.new(degree)
      for i in 0 ... degree
        @subtree[i] = NaryTree.new(degree)
      end
    else
      raise ArgumentError
    end
  end

  def purge
    @key = nil
    @subtree = nil
  end

end

# 13
class NaryTree < Tree

  def empty?
    @key.nil?
  end

  def key
    raise StateError if empty?
    return @key
  end

  def attachKey(obj)
    raise StateError if not empty?
    @key = obj
    @subtree = Array.new(degree)
    for i in 0 ... degree
      @subtree[i] = NaryTree.new(degree)
    end
  end

  def detachKey
    raise StateError if not leaf?
    result = @key
    @key = nil
    @subtree = nil
    return result
  end

end

# 14
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
