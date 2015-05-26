class BinaryHeap < PriorityQueue

    def dequeueMin
	raise ContainerEmpty if @count == 0
        result = @array[1]
        last = @array[@count]
        @count -= 1
        i = 1
        while 2 * i < @count + 1
            child = 2 * i
            if child + 1 < @count + 1 \
                and @array[child + 1] < @array[child]
                child += 1
	    end
	    break if last <= @array[child]
            @array[i] = @array[child]
            i = child
	end
        @array[i] = last
        return result
    end

end
