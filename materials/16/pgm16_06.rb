module DigraphMethods

    abstractmethod :stronglyConnected?
    abstractmethod :topologicalOrderTraversal

end

class Digraph < Graph

    def initialize(size)
	super
        @directed = true
    end

    include DigraphMethods

end
