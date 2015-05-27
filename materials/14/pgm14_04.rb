class BreadthFirstSolver < Solver

  def initialize
    super
  end

  def search(initial)
    queue = QueueAsLinkedList.new
    queue.enqueue(initial)
    while not queue.empty?
      current = queue.dequeue
      if current.complete?
        updateBest(current)
      else
        current.successors { |succ| queue.enqueue(succ) }
      end
    end
  end

end
