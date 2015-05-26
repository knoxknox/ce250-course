class StackAsLinkedList < Stack

    def push(obj)
        @list.prepend(obj)
        @count += 1
    end

    def pop
	raise ContainerEmpty if @count == 0
        result = @list.first
        @list.extract(result)
        @count -= 1
        return result
    end

    def top
	raise ContainerEmpty if @count == 0
        return @list.first
    end

end
