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
