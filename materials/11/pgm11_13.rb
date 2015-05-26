class BinomialQueue < MergeablePriorityQueue

    class BinomialTree < GeneralTree

        def add!(tree)
	    raise ValueError if degree != tree.degree
	    swapContentsWith(tree) if key > tree.key
            attachSubtree(tree)
            return self
	end

    end

end
