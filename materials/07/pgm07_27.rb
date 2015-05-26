class SortedListAsArray < OrderedListAsArray

    def find(obj)
        offset = findOffset(obj)
        if offset >= 0
            return @array[offset]
        else
            return nil
	end
    end

    class Cursor < OrderedListAsArray::Cursor

        def initialize(list, offset)
	    super
	end

	undef_method :insertAfter

	undef_method :insertBefore

    end

    def findPosition(obj)
        Cursor(self, findOffset(obj))
    end

end
