class OrderedListAsArray < OrderedList

    def findPosition(obj)
        i = 0
        while i < @count and not @array[i] == obj
            i += 1
	end
        Cursor.new(self, i)
    end

    def [](offset)
	raise IndexError if not (0 ... @count) === offset
        @array[offset]
    end

end
