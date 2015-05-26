class Graph < Container

    def initialize(size)
        @numberOfVertices = 0
        @numberOfEdges = 0
        @vertex = Array.new(size)
        @directed = false
    end

    attr_reader :numberOfVertices

    attr_reader :numberOfEdges

    def size
	@vertex.size
    end

    def [](v)
	@vertex[v]
    end

end
