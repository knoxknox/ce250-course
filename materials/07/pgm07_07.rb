class OrderedListAsArray < OrderedList

    class Cursor

        def initialize(list, offset)
	    super()
	    @list = list
            @offset = offset
	end

        def datum
	    raise IndexError if \
		not (0 ... @list.count) === offset
            @list[@offset]
	end

    end

end
