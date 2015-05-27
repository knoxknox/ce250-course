class Graph < Container

  def connected?
    count = 0
    depthFirstTraversal(0) do |v, mode|
      count += 1 if mode == PREVISIT
    end
    count == numberOfVertices
  end

end
