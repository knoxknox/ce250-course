module Algorithms

    def Algorithms.primsAlgorithm(g, s)
        n = g.numberOfVertices
        table = Array.new(n)
        for v in 0 ... n
            table[v] = Entry.new
	end
        table[s].distance = 0
        queue = BinaryHeap.new(g.numberOfEdges)
        queue.enqueue(Association.new(0, g[s]))
        while not queue.empty?
            assoc = queue.dequeueMin
            v0 = assoc.value
            if not table[v0.number].known
                table[v0.number].known = true
		v0.emanatingEdges do |e|
                    v1 = e.mateOf(v0)
                    d = e.weight
                    if not table[v1.number].known and \
                            table[v1.number].distance > d
                        table[v1.number].distance = d
                        table[v1.number].predecessor = v0.number
                        queue.enqueue(Association.new(d, v1))
		    end
		end
	    end
	end
        result = GraphAsLists.new(n)
        for v in 0 ... n
            result.addVertex(v)
	end
        for v in 0 ... n
	    result.addEdge(v, table[v].predecessor) if v != s
	end
        return result
    end

end