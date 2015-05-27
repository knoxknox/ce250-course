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
