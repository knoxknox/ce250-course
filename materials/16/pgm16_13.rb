module DigraphMethods

    def stronglyConnected?
        for v in 0 ... numberOfVertices
	    count = 0
            depthFirstTraversal(0) do |obj, mode|
		count += 1 if mode == Graph::PREVISIT
	    end
	    return false if count != numberOfVertices
	end
        return true
    end

end
