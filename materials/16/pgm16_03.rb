# 03
class Graph < Container

  class Vertex < Vertex

    def initialize(graph, number, weight = nil)
      super()
      @graph = graph
      @number = number
      @weight = weight
    end

  end

  class Edge < Edge

    def initialize(graph, v0, v1, weight = nil)
      super()
      @graph = graph
      @v0 = v0
      @v1 = v1
      @weight = weight
    end

  end

end

# 04
class Graph < Container

  def initialize(size)
    @numberOfVertices = 0
    @numberOfEdges = 0
    @vertex = Array.new(size)
    @directed = false
  end

  attr_reader :numberOfVertices

  attr_reader :numberOfEdges

  def size
    @vertex.size
  end

  def [](v)
    @vertex[v]
  end

end

# 05
class Graph < Container

  abstractmethod :directed?
  abstractmethod :connected?
  abstractmethod :cyclic?
  abstractmethod :vertices
  abstractmethod :edges
  abstractmethod :addVertex
  abstractmethod :getVertex
  abstractmethod :addEdge
  abstractmethod :getEdge
  abstractmethod :edge?
  abstractmethod :depthFirstTraversal
  abstractmethod :breadthFirstTraversal
  abstractmethod :incidentEdges
  abstractmethod :emanatingEdges

end

# 09
class Graph < Container

  PREVISIT = -1
  POSTVISIT = 1

  def depthFirstTraversal(start, &block)
    visited = Array.new(@numberOfVertices)
    for v in 0 ... @numberOfVertices
      visited[v] = false
    end
    doDepthFirstTraversal(self[start], visited, &block)
  end

  def doDepthFirstTraversal(v, visited, &block)
    yield (v, PREVISIT)
    visited[v.number] = true
    v.successors do |to|
      doDepthFirstTraversal(to, visited, &block) if not visited[to.number]
    end
    yield (v, POSTVISIT)
  end

end

# 10
class Graph < Container

  def breadthFirstTraversal(start)
    enqueued = Array.new(@numberOfVertices)
    for v in 0 ... @numberOfVertices
      enqueued[v] = false
    end

    queue = QueueAsLinkedList.new
    queue.enqueue(self[start])
    enqueued[start] = true
    while not queue.empty?
      v = queue.dequeue
      yield v
      v.successors do |to|
        if not enqueued[to.number]
          queue.enqueue(to)
          enqueued[to.number] = true
        end
      end
    end
  end

end

# 12
class Graph < Container

  def connected?
    count = 0
    depthFirstTraversal(0) do |v, mode|
      count += 1 if mode == PREVISIT
    end
    count == numberOfVertices
  end

end
