class DepthFirstBranchAndBoundSolver < Solver

  def initialize
    super
  end

  def search(current)
    if current.complete?
      updateBest(current)
    else
      current.successors do |succ|
        if succ.feasible? and succ.bound < @bestObjective
          search(succ)
        end
      end
    end
  end

end
