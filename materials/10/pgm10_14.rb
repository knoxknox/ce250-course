class MWayTree < SearchTree

    def depthFirstTraversal(&block)
        if not empty?
	    for i in 1 .. @count
		yield (@key[i], PREVISIT)
	    end
	    @subtree[0].depthFirstTraversal(&block)
            for i in 1 .. @count
		yield (@key[i], INVISIT)
		@subtree[i].depthFirstTraversal(&block)
	    end
	    for i in 1 .. @count
		yield (@key[i], POSTVISIT)
	    end
	end
    end

end
