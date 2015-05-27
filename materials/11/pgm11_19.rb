class BinomialQueue < MergeablePriorityQueue

  def enqueue(obj)
    merge!(BinomialQueue.new(BinomialTree.new(obj)))
  end

end
