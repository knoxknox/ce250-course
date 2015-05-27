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
