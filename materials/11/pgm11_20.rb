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
