# 15
class BinaryTree < Tree

  def initialize(*args)
    super()
    case args.length
    when 0
      @key = nil
      @left = nil
      @right = nil
    when 1
      @key = args[0]
      @left = BinaryTree.new
      @right = BinaryTree.new
    when 3
      @key = args[0]
      @left = args[1]
      @right = args[2]
    else
      raise ArgumentError
    end
  end

  def purge
    @key = nil
    @left = nil
    @right = nil
  end

end

# 16
class BinaryTree < Tree

  def left
    raise StateError if empty?
    @left
  end

  def right
    raise StateError if empty?
    @right
  end

end

# 17
class BinaryTree < Tree

  def depthFirstTraversal(&block)
    if not empty?
      yield (key, PREVISIT)
      left.depthFirstTraversal(&block)
      yield (key, INVISIT)
      right.depthFirstTraversal(&block)
      yield (key, POSTVISIT)
    end
  end

end

# 18
class BinaryTree < Tree

  def compareTo(bt)
    assert { is_a?(obj.type) }
    if empty?
      if bt.empty?
        return 0
      else
        return -1
      end
    elsif bt.empty?
      return 1
    else
      result = @key <=> bt._key
      result = @left <=> bt._left if result == 0
      result = @right <=> bt._right if result == 0
      return result
    end
  end

end
