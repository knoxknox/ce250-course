class Solver < AbstractObject

  def initialize
    @bestSolution = nil
    @bestObjective = Fixnum::MAX
  end

  abstractmethod :search

  def solve(initial)
    assert { initial.is_a?(Solution) }
    @bestSolution = nil
    @bestObjective = Fixnum::MAX
    search(initial)
    return @bestSolution
  end

  def updateBest(solution)
    if solution.complete? and solution.feasible? and \
                solution.objective < @bestObjective
      @bestSolution = solution
      @bestObjective = solution.objective
    end
  end

end
