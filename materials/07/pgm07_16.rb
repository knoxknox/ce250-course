class OrderedListAsLinkedList < OrderedList

    def findPosition(obj)
        ptr = @linkedList.head
        while not ptr.nil?
	    break if ptr.datum == obj
            ptr = ptr.succ
	end
        Cursor.new(self, ptr)
    end

end
