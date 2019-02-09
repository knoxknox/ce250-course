# 10
class GeneralTree < Tree

  def initialize(key)
    super()
    @key = key
    @degree = 0
    @list = LinkedList.new
  end

  def purge
    @list.purge
    @degree = 0
  end

end

# 11
class GeneralTree < Tree

  attr_reader :key

  def getSubtree(i)
    raise IndexError if not (0 .. degree) === i
    ptr = @list.head
    for j in 0 ... i
      ptr = ptr.succ
    end
    ptr.datum
  end

  def attachSubtree(t)
    @list.append(t)
    @degree += 1
  end

  def detachSubtree(t)
    @list.extract(t)
    @degree -= 1
    return t
  end

end
