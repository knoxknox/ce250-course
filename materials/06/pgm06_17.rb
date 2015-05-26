module Algorithms

    def Algorithms.breadthFirstTraversal(tree) # :yield: key
        queue = QueueAsLinkedList.new
	queue.enqueue(tree) if not tree.empty?
        while not queue.empty?
            t = queue.dequeue
	    yield t.key
            for i in 0 ... t.degree
                subTree = t.getSubtree(i)
		queue.enqueue(subTree) if not subTree.empty?
	    end
	end
    end

end
