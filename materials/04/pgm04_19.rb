class LinkedList
  class Element

    def insertAfter(item)
      @succ = Element.new(@list, item, @succ)
      if @list.tail.equal?(self)
        @list.tail = @succ
      end
    end

    def insertBefore(item)
      tmp = Element.new(@list, item, self)
      if @list.head.equal?(self)
        @list.head = tmp
      else
        prevPtr = @list.head
        while not prevPtr.nil? and not prevPtr.succ.equal?(self)
          prevPtr = prevPtr.succ
        end
        prevPtr.succ = tmp
      end
    end

  end
end
