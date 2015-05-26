class BinaryTree < Tree

    def depthFirstTraversal(&block)
        if not empty?
	    yield (key, PREVISIT)
            left.depthFirstTraversal(&block)
	    yield (key, INVISIT)
            right.depthFirstTraversal(&block)
	    yield (key, POSTVISIT)
	end
    end

end
