# 15
module Algorithms

  class Entry

    def initialize
      @known = false
      @distance = Fixnum::MAX
      @predecessor = Fixnum::MAX
    end

    attr_accessor :known

    attr_accessor :distance

    attr_accessor :predecessor
  end

end

# 16
module Algorithms

  def Algorithms.dijkstrasAlgorithm(g, s)
    n = g.numberOfVertices
    table = Array.new(n)
    for v in 0 ... n
      table[v] = Entry.new
    end
    table[s].distance = 0
    queue = BinaryHeap.new(g.numberOfEdges)
    queue.enqueue(Association.new(0, g[s]))
    while not queue.empty?
      assoc = queue.dequeueMin
      v0 = assoc.value
      if not table[v0.number].known
        table[v0.number].known = true
        v0.emanatingEdges do |e|
          v1 = e.mateOf(v0)
          d = table[v0.number].distance + e.weight
          if table[v1.number].distance > d
            table[v1.number].distance = d
            table[v1.number].predecessor = v0.number
            queue.enqueue(Association.new(d, v1))
          end
        end
      end
    end
    result = DigraphAsLists.new(n)
    for v in 0 ... n
      result.addVertex(v, table[v].distance)
    end
    for v in 0 ... n
      result.addEdge(v, table[v].predecessor) if v != s
    end
    return result
  end

end

# 17
module Algorithms

  def Algorithms.floydsAlgorithm(g)
    n = g.numberOfVertices
    distance = DenseMatrix.new(n, n)
    for v in 0 ... n
      for w in 0 ... n
        distance[v, w] = Fixnum::MAX
      end
    end
    g.edges do |e|
      distance[e.v0.number, e.v1.number] = e.weight
    end
    for i in 0 ... n
      for v in 0 ... n
        for w in 0 ... n
          if distance[v, i] != Fixnum::MAX and distance[i, w] != Fixnum::MAX
            d = distance[v, i] + distance[i, w]
            distance[v, w] = d if distance[v, w] > d
          end
        end
      end
    end
    result = DigraphAsMatrix.new(n)
    for v in 0 ... n
      result.addVertex(v)
    end
    for v in 0 ... n
      for w in 0 ... n
        if distance[v, w] != Fixnum::MAX
          result.addEdge(v, w, distance[v, w])
        end
      end
    end
    return result
  end

end

# 18
module Algorithms

  def Algorithms.primsAlgorithm(g, s)
    n = g.numberOfVertices
    table = Array.new(n)
    for v in 0 ... n
      table[v] = Entry.new
    end
    table[s].distance = 0
    queue = BinaryHeap.new(g.numberOfEdges)
    queue.enqueue(Association.new(0, g[s]))
    while not queue.empty?
      assoc = queue.dequeueMin
      v0 = assoc.value
      if not table[v0.number].known
        table[v0.number].known = true
        v0.emanatingEdges do |e|
          v1 = e.mateOf(v0)
          d = e.weight
          if not table[v1.number].known and table[v1.number].distance > d
            table[v1.number].distance = d
            table[v1.number].predecessor = v0.number
            queue.enqueue(Association.new(d, v1))
          end
        end
      end
    end
    result = GraphAsLists.new(n)
    for v in 0 ... n
      result.addVertex(v)
    end
    for v in 0 ... n
      result.addEdge(v, table[v].predecessor) if v != s
    end
    return result
  end

end

# 19
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

# 20
module Algorithms

  def Algorithms.criticalPathAnalysis(g)
    n = g.numberOfVertices

    earliestTime = Array.new(n)
    earliestTime[0] = 0
    g.topologicalOrderTraversal do |w|
      t = 0
      w.incidentEdges do |e|
        t = [t, earliestTime[e.v0.number] + e.weight].max
      end
      earliestTime[w.number] = t
    end

    latestTime = Array.new(n)
    latestTime[n - 1] = earliestTime[n - 1]
    g.depthFirstTraversal(0) do |v, mode|
      if mode == Graph::POSTVISIT
        t = Fixnum::MAX
        v.emanatingEdges do |e|
          t = [t, latestTime[e.v1.number]-e.weight].min
        end
        latestTime[v.number] = t
      end
    end

    slackGraph = DigraphAsLists.new(n)
    for v in 0 ... n
      slackGraph.addVertex(v)
    end
    g.edges do |e|
      slack = latestTime[e.v1.number] - earliestTime[e.v0.number] - e.weight
      slackGraph.addEdge(
      e.v0.number, e.v1.number, e.weight)
    end
    return dijkstrasAlgorithm(slackGraph, 0)
  end

end

# 21
module Algorithms

  def Algorithms.criticalPathAnalysis(g)
    n = g.numberOfVertices

    earliestTime = Array.new(n)
    earliestTime[0] = 0
    g.topologicalOrderTraversal do |w|
      t = 0
      w.incidentEdges do |e|
        t = [t, earliestTime[e.v0.number] + e.weight].max
      end
      earliestTime[w.number] = t
    end

    latestTime = Array.new(n)
    latestTime[n - 1] = earliestTime[n - 1]
    g.depthFirstTraversal(0) do |v, mode|
      if mode == Graph::POSTVISIT
        t = Fixnum::MAX
        v.emanatingEdges do |e|
          t = [t, latestTime[e.v1.number]-e.weight].min
        end
        latestTime[v.number] = t
      end
    end

    slackGraph = DigraphAsLists.new(n)
    for v in 0 ... n
      slackGraph.addVertex(v)
    end
    g.edges do |e|
      slack = latestTime[e.v1.number] - earliestTime[e.v0.number] - e.weight
      slackGraph.addEdge(e.v0.number, e.v1.number, e.weight)
    end
    return dijkstrasAlgorithm(slackGraph, 0)
  end

end
