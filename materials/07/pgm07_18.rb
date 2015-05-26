class OrderedListAsLinkedList < OrderedList

    class Cursor

        def withdraw
            @list.linkedList.extract(@element.datum)
            @list.count -= 1
	end

    end

end
