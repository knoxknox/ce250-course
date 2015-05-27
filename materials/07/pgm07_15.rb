class OrderedListAsLinkedList < OrderedList

  class Cursor

    def initialize(list, element)
      @list = list
      @element = element
    end

    def datum
      @element.datum
    end

  end

end
