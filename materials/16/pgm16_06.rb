# 06
module DigraphMethods

  abstractmethod :stronglyConnected?
  abstractmethod :topologicalOrderTraversal

end

class Digraph < Graph

  def initialize(size)
    super
    @directed = true
  end

  include DigraphMethods

end

# 11
module DigraphMethods

  def topologicalOrderTraversal
    inDegree = Array.new(numberOfVertices)
    for v in 0 ... numberOfVertices
      inDegree[v] = 0
    end
    edges { |e| inDegree[e.v1.number] += 1 }
    queue = QueueAsLinkedList.new
    for v in 0 ... numberOfVertices
      queue.enqueue(self[v]) if inDegree[v] == 0
    end
    while not queue.empty?
      v = queue.dequeue
      yield v
      v.successors do |to|
        inDegree[to.number] -= 1
        queue.enqueue(to) if inDegree[to.number] == 0
      end
    end
  end

end

# 13
module DigraphMethods

  def stronglyConnected?
    for v in 0 ... numberOfVertices
      count = 0
      depthFirstTraversal(0) do |obj, mode|
        count += 1 if mode == Graph::PREVISIT
      end
      return false if count != numberOfVertices
    end
    return true
  end

end

# 14
module DigraphMethods

  def cyclic?
    count = 0
    topologicalOrderTraversal { |obj| count += 1 }
    count != numberOfVertices
  end

end
