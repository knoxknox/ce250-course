class BinaryHeap < PriorityQueue

    def min
	raise ContainerEmpty if @count == 0
        @array[1]
    end

end
