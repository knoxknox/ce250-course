class QueueAsLinkedList < Queue

    def head
	raise ContainerEmpty if @count == 0
        @list.first
    end

    def enqueue(obj)
        @list.append(obj)
        @count += 1
    end

    def dequeue
	raise ContainerEmpty if @count == 0
        result = @list.first
        @list.extract(result)
        @count -= 1
        result
    end

end
