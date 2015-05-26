class Tree < Container

    def each(&block)
        depthFirstTraversal do |obj, mode|
	    block.call(obj) if mode == PREVISIT
	end
    end

end
