class BinomialQueue < MergeablePriorityQueue

    def minTree
        minTree = nil
        ptr = @treeList.head
        while not ptr.nil?
            tree = ptr.datum
            if minTree.nil? or tree.key < minTree.key
                minTree = tree
	    end
            ptr = ptr.succ
	end
        return minTree
    end

    def min
	raise ContainerEmpty if @count == 0
        return minTree.key
    end

end
