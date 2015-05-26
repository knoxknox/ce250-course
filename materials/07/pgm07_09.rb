class OrderedListAsArray < OrderedList

    class Cursor < Cursor

        def insertAfter(obj)
	    raise IndexError if \
		not (0 ... @list.count) === @offset
	    raise ContainerFull if \
		@list.count == @list.array.length
            insertPosition = @offset + 1
            i = @list.count
            while i > insertPosition
                @list.array[i] = @list.array[i - 1]
                i -= 1
	    end
            @list.array[insertPosition] = obj
            @list.count += 1
	end

    end

end
