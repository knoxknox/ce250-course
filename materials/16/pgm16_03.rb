class Graph < Container

    class Vertex < Vertex

        def initialize(graph, number, weight = nil)
            super()
            @graph = graph
            @number = number
            @weight = weight
	end

    end

    class Edge < Edge

        def initialize(graph, v0, v1, weight = nil)
            super()
            @graph = graph
            @v0 = v0
            @v1 = v1
            @weight = weight
	end

    end

end
