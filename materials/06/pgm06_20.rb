class DequeAsArray < QueueAsArray

    def tail
	raise ContainerEmpty if @count == 0
        @array[@tail]
    end

    alias_method :enqueueTail, :enqueue

    def dequeueTail
	raise ContainerEmpty if @count == 0
        result = @array[@tail]
        @array[@tail] = nil
        if @tail == 0
            @tail = @array.length - 1
        else
            @tail = @tail - 1
	end
        @count -= 1
        result
    end

end
