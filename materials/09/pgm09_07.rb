class Tree < Container

    def breadthFirstTraversal
        queue = QueueAsLinkedList.new
	queue.enqueue(self) if not empty?
        while not queue.empty?
            head = queue.dequeue
            yield head.key
            for i in 0 ... head.degree
                child = head.getSubtree(i)
		queue.enqueue(child) if not child.empty?
	    end
	end
    end

    def breadthFirstTraversalAccept(visitor)
	breadthFirstTraversal do |obj|
	    break if visitor.done?
	    visitor.visit(obj)
	end
    end
end
