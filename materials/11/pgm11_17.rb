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
