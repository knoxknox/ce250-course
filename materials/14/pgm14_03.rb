class DepthFirstSolver < Solver

  def initialize
    super
  end

  def search(current)
    if current.complete?
      updateBest(current)
    else
      current.successors { |succ| search(succ) }
    end
  end

end
