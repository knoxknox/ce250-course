# 13
class MultisetAsLinkedList < Multiset

  def initialize(n)
    super
    @list = LinkedList.new
  end

  attr_accessor :list
  public :list
  protected :list=

end

# 14
class MultisetAsLinkedList < Multiset

  def |(set)
    assert { set.is_a?(MultisetAsLinkedList) }
    assert { @universeSize == set.universeSize }
    result = MultisetAsLinkedList.new(@universeSize)
    p = @list.head
    q = set.list.head
    while not p.nil? and not q.nil?
      if p.datum <= q.datum
        result.list.append(p.datum)
        p = p.succ
      else
        result.list.append(q.datum)
        q = q.succ
      end
    end
    while not p.nil?
      result.list.append(p.datum)
      p = p.succ
    end
    while not q.nil?
      result.list.append(q.datum)
      q = q.succ
    end
    return result
  end

end

# 15
class MultisetAsLinkedList < Multiset

  def &(set)
    assert { set.is_a?(MultisetAsLinkedList) }
    assert { @universeSize == set.universeSize }
    result = MultisetAsLinkedList.new(@universeSize)
    p = @list.head
    q = set.list.head
    while not p.nil? and not q.nil?
      diff = p.datum - q.datum
      result.list.append(p.datum) if diff == 0
      p = p.succ if diff <= 0
      q = q.succ if diff >= 0
    end
    return result
  end

end
