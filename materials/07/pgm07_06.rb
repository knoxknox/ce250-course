class OrderedListAsArray < OrderedList

    def withdraw(obj)
	raise ContainerEmpty if @count == 0
        i = 0
        while i < @count and not @array[i].equal?(obj)
            i += 1
	end
	raise ArgumentError if i == @count
        while i < @count - 1
            @array[i] = @array[i + 1]
            i += 1
	end
        @array[i] = nil
        @count -= 1
    end

end
