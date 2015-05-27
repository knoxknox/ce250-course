class OrderedListAsLinkedList < OrderedList

  class Cursor < Cursor

    def insertAfter(obj)
      @element.insertAfter(obj)
      @list.count += 1
    end

  end

end
