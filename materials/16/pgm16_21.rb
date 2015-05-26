module Algorithms

    def Algorithms.criticalPathAnalysis(g)
        n = g.numberOfVertices

        earliestTime = Array.new(n)
        earliestTime[0] = 0
	g.topologicalOrderTraversal do |w|
	    t = 0
	    w.incidentEdges do |e|
		t = [t, earliestTime[e.v0.number] + e.weight].max
	    end
	    earliestTime[w.number] = t
	end


        latestTime = Array.new(n)
        latestTime[n - 1] = earliestTime[n - 1]
        g.depthFirstTraversal(0) do |v, mode|
	    if mode == Graph::POSTVISIT
		t = Fixnum::MAX
		v.emanatingEdges do |e|
		    t = [t, latestTime[e.v1.number]-e.weight].min
		end
		latestTime[v.number] = t
	    end
	end

        slackGraph = DigraphAsLists.new(n)
        for v in 0 ... n
            slackGraph.addVertex(v)
	end
	g.edges do |e|
            slack = latestTime[e.v1.number] - \
                earliestTime[e.v0.number] - e.weight
            slackGraph.addEdge(
                e.v0.number, e.v1.number, e.weight)
	end
        return dijkstrasAlgorithm(slackGraph, 0)
    end

end
