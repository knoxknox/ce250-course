module Algorithms

  def Algorithms.kruskalsAlgorithm(g)
    n = g.numberOfVertices
    result = GraphAsLists.new(n)
    for v in 0 ... n
      result.addVertex(v)
    end
    queue = BinaryHeap.new(g.numberOfEdges)
    g.edges do |e|
      queue.enqueue(Association.new(e.weight, e))
    end
    partition = PartitionAsForest.new(n)
    while not queue.empty? and partition.count > 1
      e = queue.dequeueMin.value
      n0 = e.v0.number
      n1 = e.v1.number
      s = partition.find(n0)
      t = partition.find(n1)
      if not s.equal?(t)
        partition.join(s, t)
        result.addEdge(n0, n1)
      end
    end
    return result
  end

end
