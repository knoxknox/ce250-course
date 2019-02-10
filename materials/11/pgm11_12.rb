# 12
class BinomialQueue < MergeablePriorityQueue

  class BinomialTree < GeneralTree

    def initialize(key)
      super
    end

    attr_accessor :key

    attr_accessor :list

    attr_accessor :degree

  end

end

# 13
class BinomialQueue < MergeablePriorityQueue

  class BinomialTree < GeneralTree

    def add!(tree)
      raise ValueError if degree != tree.degree
      swapContentsWith(tree) if key > tree.key
      attachSubtree(tree)
      return self
    end

  end

end

# 14
class BinomialQueue < MergeablePriorityQueue

  def initialize(*args)
    super()
    @treeList = LinkedList.new
    case args.length
    when 0
    when 1
      assert { args[0].is_a?(BinomialTree) }
      @treeList.append(args[0])
    else
      raise ArgumentError
    end
  end

  attr_reader :treeList

end

# 15
class BinomialQueue < MergeablePriorityQueue

  def addTree(tree)
    @treeList.append(tree)
    @count += tree.count
  end

  def removeTree(tree)
    @treeList.extract(tree)
    @count -= tree.count
  end

end

# 16
class BinomialQueue < MergeablePriorityQueue

  def minTree
    minTree = nil
    ptr = @treeList.head
    while not ptr.nil?
      tree = ptr.datum
      if minTree.nil? or tree.key < minTree.key
        minTree = tree
      end
      ptr = ptr.succ
    end
    return minTree
  end

  def min
    raise ContainerEmpty if @count == 0
     return minTree.key
  end

end

# 17
class BinomialQueue < MergeablePriorityQueue

  def merge!(queue)
    oldList = @treeList
    @treeList = LinkedList.new
    @count = 0
    p = oldList.head
    q = queue.treeList.head
    carry = nil
    i = 0
     while not p.nil? or not q.nil?  or not carry.nil?
      a = nil
      if not p.nil?
        tree = p.datum
        if tree.degree == i
          a = tree
          p = p.succ
        end
      end
      b = nil
      if not q.nil?
        tree = q.datum
        if tree.degree == i
          b = tree
          q = q.succ
        end
      end
      sum, carry = fullAdder(a, b, carry)
      if not sum.nil?
        addTree(sum)
       end
      i += 1
    end
  end

end

# 18
class BinomialQueue < MergeablePriorityQueue

  def fullAdder(a, b, c)
    if a.nil?
      if b.nil?
        if c.nil?
          return [nil, nil]
        else
          return [c, nil]
        end
      else
        if c.nil?
          return [b, nil]
        else
          return [nil, b.add!(c)]
        end
      end
    else
      if b.nil?
        if c.nil?
          return [a, nil]
        else
          return [nil, a.add!(c)]
        end
      else
        if c.nil?
          return [nil, a.add!(b)]
        else
          return [c, a.add!(b)]
        end
       end
    end
  end

end

# 19
class BinomialQueue < MergeablePriorityQueue

  def enqueue(obj)
    merge!(BinomialQueue.new(BinomialTree.new(obj)))
  end

end

# 20
class BinomialQueue < MergeablePriorityQueue

  def dequeueMin
    raise ContainerEmpty if @count == 0
    mt = minTree
    removeTree(mt)
    queue = BinomialQueue.new
    while mt.degree > 0
      child = mt.getSubtree(0)
      mt.detachSubtree(child)
      queue.addTree(child)
    end
    merge!(queue)
    return mt.key
  end

end
