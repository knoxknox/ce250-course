class QueueAsArray < Queue

    def head
	raise ContainerEmpty if @count == 0
        @array[@head]
    end

    def enqueue(obj)
	raise ContainerFull if @count == @array.length
        @tail = @tail + 1
        if @tail == @array.length
            @tail = 0
	end
        @array[@tail] = obj
        @count += 1
    end

    def dequeue
	raise ContainerEmpty if @count == 0
        result = @array[@head]
        @array[@head] = nil
        @head = @head + 1
        if @head == @array.length
            @head = 0
	end
        @count -= 1
        result
    end

end
